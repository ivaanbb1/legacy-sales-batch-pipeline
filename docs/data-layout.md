# Diseno de ficheros

## PRODUCTS.DAT

Fichero maestro de productos en formato de ancho fijo. Longitud de registro: 39 caracteres.

| Campo | Posicion inicial | Longitud | Ejemplo |
| --- | ---: | ---: | --- |
| Product ID | 1 | 6 | P00001 |
| Product name | 7 | 20 | LAPTOP PRO |
| Category | 27 | 12 | HARDWARE |
| Active flag | 39 | 1 | Y |

## SALES.DAT

Fichero de ventas en formato de ancho fijo. Longitud de registro: 36 caracteres.

| Campo | Posicion inicial | Longitud | Ejemplo |
| --- | ---: | ---: | --- |
| Sale date | 1 | 8 | 20260601 |
| Customer ID | 9 | 6 | C00001 |
| Product ID | 15 | 6 | P00001 |
| Quantity | 21 | 5 | 00001 |
| Unit price cents | 26 | 8 | 00125000 |
| Channel | 34 | 3 | WEB |

Los importes se almacenan en centimos para evitar problemas de redondeo durante el procesamiento batch y la carga SQL.
