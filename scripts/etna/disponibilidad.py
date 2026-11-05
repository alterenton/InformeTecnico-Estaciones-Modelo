import subprocess
from pathlib import Path
import tkinter as tk
from tkinter import filedialog
from concurrent.futures import ThreadPoolExecutor, as_completed

def seleccionar_carpeta(mensaje):
    """Abre un explorador de archivos ligero para seleccionar una carpeta."""
    root = tk.Tk()
    root.withdraw()  # Oculta la ventana principal de Tkinter
    print(f"[GUI] Abriendo explorador para: {mensaje}...")
    ruta = filedialog.askdirectory(title=mensaje)
    if ruta:
        print(f"[GUI] Carpeta seleccionada: {ruta}")
    else:
        print(f"[GUI] Selección omitida o cancelada para: {mensaje}")
    return ruta

print("--- CONFIGURACIÓN DE RUTAS ---")
path_sotano = seleccionar_carpeta("Selecciona la carpeta de datos del Sótano")
path_azotea = seleccionar_carpeta("Selecciona la carpeta de datos de la Azotea (Opcional)")

# Diccionario dinámico filtrando las que estén vacías
ruta_datos = {}
if path_sotano:
    ruta_datos["sotano"] = path_sotano
if path_azotea:
    ruta_datos["azotea"] = path_azotea

tiempos = {
    "inicio": "2025-07-01T12:00:00",
    "final": "2026-10-26T12:00:00"
}

def ejecutar_obspy(nombre_ubicacion, ruta, n=0):
    """Ejecuta obspy-scan para una ubicación específica con logs detallados en tiempo real."""
    if not Path(ruta).exists():
        print(f"[ERROR] La ruta para '{nombre_ubicacion}' no existe en el disco: {ruta}")
        return

    print(f"\n[VERBOSE] 🚀 Iniciando procesamiento para: [{nombre_ubicacion.upper()}]")
    print(f"[VERBOSE] 📂 Ruta destino: {ruta}")
    
    if n == 0:
        comando = [
            "obspy-scan",
            "--print-gaps", 
            ruta
        ]
        print("[VERBOSE] ⚙️ Ejecutando escaneo completo de gaps...")
    else:
        comando = [
            "obspy-scan",
            "--start-time",
            tiempos["inicio"],
            "--end-time",
            tiempos["final"],
            "--output",
            f"disponibilidad_{nombre_ubicacion}.png",
            ruta
        ]
        print(f"[VERBOSE] 📊 Generando gráfico de disponibilidad: disponibilidad_{nombre_ubicacion}.png...")

    try:
        # Ejecutamos permitiendo que la salida de obspy-scan fluya en la terminal
        subprocess.run(comando, check=True)
        print(f"[VERBOSE] ✅ Finalizado con éxito el análisis de: [{nombre_ubicacion.upper()}]")
    except subprocess.CalledProcessError as e:
        print(f"[ERROR] ❌ Falló la ejecución de obspy-scan en {nombre_ubicacion}: {e}")

# --- EJECUCIÓN PRINCIPAL CONCURRENTE ---
if not ruta_datos:
    print("\n[AVISO] No se seleccionó ninguna ruta válida. Saliendo del script.")
else:
    print(f"\n[VERBOSE] Total de ubicaciones a procesar: {list(ruta_datos.keys())}")
    print("[VERBOSE] Iniciando procesamiento paralelo para optimizar tiempo...\n")

    with ThreadPoolExecutor(max_workers=2) as executor:
        futuros = {
            executor.submit(ejecutar_obspy, nombre, ruta, 1): nombre 
            for nombre, ruta in ruta_datos.items()
        }
        
        for futuro in as_completed(futuros):
            ubicacion = futuros[futuro]
            try:
                futuro.result()
            except Exception as exc:
                print(f"[ERROR] La ubicación {ubicacion} generó una excepción: {exc}")

    print("\n--- PROCESO DE ANÁLISIS COMPLETADO ---")