# Especificacion Dashboard Power BI

## Fuentes de datos

- `data/output/SALES_CLEAN.csv`: ventas aceptadas.
- `data/output/SALES_ERRORS.csv`: ventas rechazadas y motivos de rechazo.

## Medidas

- Ventas totales: `SUM(total_amount_cents) / 100`.
- Unidades vendidas.
- Numero de operaciones.
- Ticket medio.
- Numero de registros rechazados.

## Pagina 1: Ventas

- Tarjeta de ventas totales.
- Tarjeta de unidades vendidas.
- Grafico de lineas por fecha.
- Grafico de barras por categoria.
- Grafico de barras por canal.
- Tabla de rendimiento por producto.

## Pagina 2: Control batch

- Registros leidos.
- Registros aceptados.
- Registros rechazados.
- Motivos de rechazo.
- Tabla de detalle de errores.
