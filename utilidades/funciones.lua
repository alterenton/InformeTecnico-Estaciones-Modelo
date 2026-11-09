local f = {}

local memorias = {
    emmc = "eMMC",
    flash = "USB Flash Drive",
    sdc = "SD Card",
    msd = "microSD"
}

local tecnologias = {
    MEMS = "Sistemas MicroElectroMecánicos (MEMS)",
    FBA = "Acelerómetros de Fuerza Balanceada (FBA)"
}

local marcas = {
    luni = {
        name = "LUNITEK Seismic Recorders Manufacturer",
        web = "https://lunitek.com/"
    },
    sara = {
        name = "SARA Electronic Instruments",
        web = "https://www.sara.pg.it/index.php?lang=en",
        equi = "AceBox"
    },
    nano = {
        name = "NANOMETRICS Listening to the Earth",
        web = "https://nanometrics.ca/home",
        equi = "TitanSMA"
    },
    kine = {
        name = "KINEMETRICS Advancement Through Innovation",
        web = "https://kinemetrics.com/",
        equi = "Etna2"
    },
    mean = {
        name = "MW Mean Well",
        web = "https://www.meanwell.com/",
        mode = "LRS Series",
        capa = "10A@12V"
    },
    morning = {
        name = "Morningstar Corp.",
        web = "https://www.morningstarcorp.com/",
        mode = "SHS-10",
        capa = "10A@12V"
    },
    victron = {
        name = "Victron Energy",
        web = "https://www.victronenergy.com/",
        mode = "Blue Solar PWM - Light",
        capa = "20A@24V"
    },
    ritar = {
        name = "RITAR",
        web = "https://www.ritarpower.com/",
        mode = "RT12120",
        capa = "12V / 12Ah"
    },
    samlex = {
        name = "Samlex",
        web = "https://samlex.com/",
        mode = "SEC-1230UL",
        capa = "12V, 30A"

    },
    felicity = {
        name = "FelicitySolar",
        web = "https://latam.felicitysolar.com/",
        mode = "G12V70AH / FL-G-70",
        capa = "12V / 70Ah"
    }
}

local fecha_mntto = {
    dia = 26,
    mes = 10,
    ano = 2026
}

f.variables = {
    -- Capitulo 1
    caratula = {
        documento = "Reporte de Mantenimiento",
        edificio = "Aliaga Invent",
        sigla = "RPMNTTO",
        nro_informe = 62,
    },
    -- Capitulo 2
    fecha = fecha_mntto,
    -- Capitulo 3
    descripcion = {
        estaciones = "soaz",
        sotano = {
            ubicacion = "Sótano",
            marca = marcas.kine.name,
            modelo = marcas.kine.equi,
            tecnologia = tecnologias.FBA,
            serie = 104944
        },
        azotea = {
            ubicacion = "Azotea",
            marca = marcas.kine.name,
            modelo = marcas.kine.equi,
            tecnologia = tecnologias.FBA,
            serie = 104945
        }
    },
    -- Capitulo 4
    disponibilidad = {
        enlace = "https://mega.io/es/",
        sotano = {
            station = "PE",
            code = "KMI",
            location = "-",
            inicio = {
                dia = 07,
                mes = 05,
                ano = 2024
            },
            final = fecha_mntto,
            tamano = 24.9,
            ext_tam = "GB",
            archivos = 58953,
            carpetas = 0,
            dispone = 100
        },
        azotea = {
            station = "ED",
            code = "MM18N",
            location = "-",
            inicio = {
                dia = 01,
                mes = 07,
                ano = 2025
            },
            final = fecha_mntto,
            tamano = 22.7,
            ext_tam = "GB",
            archivos = 51269,
            carpetas = 0,
            dispone = 100
        }
    },
    -- Capitulo 5
    suministro = {
        sotano = {
            fuente = {
                marca = marcas.samlex.name,
                modelo = marcas.samlex.mode,
                capacidad = marcas.samlex.capa,
                vin = 221.2,
                vout = 0.0,
                areg = 0.0
            },
            controlador = {
                marca = marcas.samlex.name,
                modelo = marcas.samlex.mode,
                capacidad = marcas.samlex.capa,
                vin = 0.0,
                vbat = 0.0,
                vcar = 0.0,
            },
            bateria = {
                marca = marcas.felicity.name,
                modelo = marcas.felicity.mode,
                nro_bat = 1,
                arreglo = "directa",
                capa_tota = marcas.felicity.capa,
                vini = 10.00,
                tdes = 15,
                vfin = 9.9
            }
        },
        azotea = {
            fuente = {
                marca = marcas.samlex.name,
                modelo = marcas.samlex.mode,
                capacidad = marcas.samlex.capa,
                vin = 218.7,
                vout = 13.2,
                areg = 0.0
            },
            controlador = {
                marca = marcas.samlex.name,
                modelo = marcas.samlex.mode,
                capacidad = marcas.samlex.capa,
                vin = 13.2,
                vbat = 13.2,
                vcar = 13.2
            },
            bateria = {
                marca = marcas.felicity.name,
                modelo = marcas.felicity.mode,
                nro_bat = 2,
                arreglo = "directa",
                capa_tota = marcas.felicity.capa,
                vini = 13.3, --12.29,
                tdes = 15,
                vfin = 12.8 -- 16.57
            }
        }
    },
    -- Capitulo 6
    sensor = {
        onda = "Cuadrada",
        sotano = {
            offset = {
                antes = {
                    chz = {
                        max = -3263,
                        min = -3781,
                        ext = "cts"
                    },
                    chn = {
                        max = -30363,
                        min = -30979,
                        ext = "cts"
                    },
                    che = {
                        max = -14532,
                        min = -15041,
                        ext = "cts"
                    }
                },
                despues = {
                    chz = {
                        max = 279,
                        min = -280,
                        ext = "cts"
                    },
                    chn = {
                        max = 136,
                        min = -201,
                        ext = "cts"
                    },
                    che = {
                        max = 131,
                        min = -132,
                        ext = "cts"
                    }
                }
            },
            eficaz = {
                extension = "cts",
                antes = {
                    chz = 518,
                    chn = 616,
                    che = 509,
                },
                despues = {
                    chz = 559,
                    chn = 337,
                    che = 263
                }
            },
            calibracion = {
                vertical = {
                    cuentas = {
                        max = 833565.92,
                        min = -3408.16
                    },
                    aceleracion = {
                        amp = 193.712
                    }
                },
                norte = {
                    cuentas = {
                        max = 811546.33,
                        min = -27705.75
                    },
                    aceleracion = {
                        amp = 196.211
                    }
                },
                este = {
                    cuentas = {
                        max = 820542.38,
                        min = -12035.24
                    },
                    aceleracion = {
                        amp = 194.650
                    }
                }
            }
        },
        azotea = {
            offset = {
                antes = {
                    chz = {
                        max = 1652594,
                        min = 1651129,
                        ext = "cts"
                    },
                    chn = {
                        max = 15305,
                        min = 14187,
                        ext = "cts"
                    },
                    che = {
                        max = -6831,
                        min = -7911,
                        ext = "cts"
                    }
                },
                despues = {
                    chz = {
                        max = 1077,
                        min = -700,
                        ext = "cts"
                    },
                    chn = {
                        max = 554,
                        min = -524,
                        ext = "cts"
                    },
                    che = {
                        max = 532,
                        min = -553,
                        ext = "cts"
                    }
                }
            },
            eficaz = {
                extension = "cts",
                antes = {
                    chz = 1465,
                    chn = 1118,
                    che = 1080
                },
                despues = {
                    chz = 1777,
                    chn = 1078,
                    che = 1085
                }
            },
            calibracion = {
                vertical = {
                    cuentas = {
                        max = 1848961.01,
                        min = 1652800.52
                    },
                    aceleracion = {
                        amp = 46.101
                    }
                },
                norte = {
                    cuentas = {
                        max = 624508.81,
                        min = 13470.37
                    },
                    aceleracion = {
                        amp = 141.527
                    }
                },
                este = {
                    cuentas = {
                        max = 483095.13,
                        min = -6400.26
                    },
                    aceleracion = {
                        amp = 115.510
                    }
                }
            }
        }
    },
    -- Capitulo 7
    dispositivos = {
        sotano = {
            interna = {
                memoria = memorias.emmc,
                libre = 0.642,
                total = 29,
                extension = "GB"
            },
            externa = {
                memoria = "No posee",
                libre = 0.01,
                total = 1,
                extension = "MB"
            }
        },
        azotea = {
            interna = {
                memoria = memorias.emmc,
                libre = 6.43,
                total = 29,
                extension = "GB"
            },
            externa = {
                memoria = "No posee",
                libre = 0.01,
                total = 1,
                extension = "MB"
            }
        }
    },
    -- Capitulo 8
    sistema = {
        sotano = {
            incertidumbre = "-",
            satelites = 14,
            latitud = 12.178410,
            longitud = 77.000305,
            altitud = 81.5
        },
        azotea = {
            incertidumbre = "-",
            satelites = 15,
            latitud = 12.082298,
            longitud = 77.049052,
            altitud = 179.6
        }
    }
}

function f.variables.fecha.muestra(fecha) -- Ejemplo: 12/12/2025
    return string.format(
        "%02d/%02d/%04d",
        fecha.dia,
        fecha.mes,
        fecha.ano
    )
end

function f.variables.disponibilidad.codigo(estacion) -- Ejemplo: ED.PL05N.01
    return string.format(
        "%s.%s.%s",
        f.variables.disponibilidad[estacion].station,
        f.variables.disponibilidad[estacion].code,
        f.variables.disponibilidad[estacion].location
    )
end

function f.variables.fecha.doy(fecha)
    local dias = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}

    if (fecha.ano % 4 == 0 and fecha.ano % 100 ~= 0) or (fecha.ano % 400 == 0) then
        dias[2] = 29
    end

    local resultado = fecha.dia

    for i = 1, fecha.mes - 1 do
        resultado = resultado + dias[i]
    end

    local formato = fecha.ano .. resultado

    return formato
end

function f.variables.fecha.dias_entre_fechas(fecha1, fecha2)
    -- Crear la tabla de tiempo para la fecha inicial (00:00:00)
    local t1 = os.time({
        day = tonumber(fecha1.dia),
        month = tonumber(fecha1.mes),
        year = tonumber(fecha1.ano),
        hour = 0,
        min = 0,
        sec = 0
    })

    -- Crear la tabla de tiempo para la fecha final (00:00:00)
    local t2 = os.time({
        day = tonumber(fecha2.dia),
        month = tonumber(fecha2.mes),
        year = tonumber(fecha2.ano),
        hour = 0,
        min = 0,
        sec = 0
    })

    -- Diferencia en segundos dividida por los segundos de un día (24 * 60 * 60)
    local diferencia_segundos = os.difftime(t2, t1)
    local dias = math.floor(diferencia_segundos / 86400)

    return dias
end

function f.variables.dispositivos.porcentaje_uso(libre, total)
    return string.format(
		"%.2f",
		((total-libre)/total)*100
	)
end

function f.variables.dispositivos.porcentaje_libre(libre, total)
    return string.format(
		"%.2f",
		(libre/total)*100
	)
end

function f.buscar_pga_maximo(archivo)
    local resultado = {
        valor = -math.huge,
        evento = nil,
        referencia = nil,
        magnitud = nil,
        hora = nil,
        pgae = nil,
        pgan = nil,
        pgaz = nil
    }

    local file = io.open(archivo, "r")

    if not file then
        error("No se pudo abrir el archivo: " .. archivo)
    end

    -- Saltar cabecera
    file:read("*l")

    for linea in file:lines() do
        local evento, referencia, magnitud, hora, pgae, pgan, pgaz =
            linea:match("([^;]*);([^;]*);([^;]*);([^;]*);([^;]*);([^;]*);([^;]*)")

        pgae = tonumber(pgae)
        pgan = tonumber(pgan)
        pgaz = tonumber(pgaz)

        -- Máximo PGA de esta fila
        local pga = math.max(pgae, pgan, pgaz)

        -- ¿Es el mayor encontrado hasta ahora?
        if pga > resultado.valor then
            resultado.valor = pga
            resultado.evento = tonumber(evento)
            resultado.referencia = referencia
            resultado.magnitud = tonumber(magnitud)
            resultado.hora = hora

            resultado.pgae = pgae
            resultado.pgan = pgan
            resultado.pgaz = pgaz
        end
    end

    file:close()

    return resultado
end

return f
