-- 1. Obtener el historial de reparaciones de un vehículo específico --
~~~sql
SELECT veh.placa, rep.fecha, rep.descripcion
FROM Vehiculo AS veh
JOIN Reparaciones AS rep
ON veh.vehiculo_id = rep.vehiculo_id; 

SELECT veh.placa, rep.fecha, rep.descripcion, rep.CostoTotal
FROM Vehiculo AS veh
JOIN Reparaciones AS rep
ON veh.vehiculo_id = rep.vehiculo_id
WHERE veh.placa = 'ABC123'; 

+--------+------------+----------------------------+------------+
| placa  | fecha      | descripcion                | CostoTotal |
+--------+------------+----------------------------+------------+
| ABC123 | 2022-03-15 | Reparación menor de frenos |  500000.00 |
| ABC123 | 2023-05-20 | Cambio de aceite y filtro  |  650000.00 |
| ABC123 | 2024-06-12 | Reparación de motor        |     500.00 |
+--------+------------+----------------------------+------------+
3 rows in set (0.00 sec)
~~~
-- 2. Calcular el costo total de todas las reparaciones realizadas por un empleado específico en un período de tiempo

---Un empleado
SELECT e.Nombre, e.Apellido, SUM(r.CostoTotal) AS CostoTotalReparaciones
FROM Reparaciones AS r
JOIN Empleados AS e ON r.empleado_id = e.empleado_id
WHERE r.empleado_id = 4
AND r.Fecha BETWEEN '2023-01-01' AND '2024-12-31'
GROUP BY e.Nombre, e.Apellido;

+--------+-----------+------------------------+
| Nombre | Apellido  | CostoTotalReparaciones |
+--------+-----------+------------------------+
| Carlos | Hernández |             3600000.00 |
+--------+-----------+------------------------+
1 row in set (0.00 sec)

--todos los empleados
SELECT e.Nombre, e.Apellido, SUM(r.CostoTotal) AS CostoTotalReparaciones
FROM Reparaciones r
JOIN Empleados e ON r.empleado_id = e.empleado_id
WHERE r.Fecha BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY e.Nombre, e.Apellido;


-- 3. Listar todos los clientes y los vehículos que poseen

--todos
SELECT cli.nombre, cli.apellido, veh.placa, veh.marca_id
FROM Clientes AS cli
JOIN Vehiculo AS veh
ON cli.cliente_id = veh.vehiculo_id
ORDER BY cli.cliente_id;

+-------------+---------------+--------+----------+
| nombre      | apellido      | placa  | marca_id |
+-------------+---------------+--------+----------+
| NuevoNombre | NuevoApellido | ABC123 |        1 |
| Maria       | Lopez         | DEF456 |        2 |
| Carlos      | Gomez         | GHI789 |        3 |
| Ana         | Martinez      | JKL012 |        4 |
| Luis        | Garcia        | MNO345 |        5 |
| Laura       | Rodriguez     | PQR678 |        6 |
| Pedro       | Sanchez       | STU901 |        7 |
| Elena       | Ramirez       | VWX234 |        8 |
| Jorge       | Hernandez     | YZA567 |        9 |
| Marta       | Diaz          | BCD890 |        1 |
| Jose        | Torres        | EFG123 |        2 |
| Rosa        | Vargas        | HIJ456 |        3 |
| Miguel      | Cruz          | KLM789 |        4 |
| Lucia       | Morales       | NOP012 |        5 |
| Roberto     | Ortiz         | QRS345 |        6 |
| Andrea      | Gimenez       | TUV678 |        7 |
| Sergio      | Marquez       | WXY901 |        8 |
| Paula       | Flores        | ZAB234 |        9 |
| Ricardo     | Castro        | CDE567 |        1 |
| Isabel      | Rojas         | FGH890 |        2 |
| Fernando    | Mendoza       | IJK123 |        3 |
| Pilar       | Guerrero      | LMN456 |        4 |
| Ramon       | Navarro       | OPQ789 |        5 |
| Sara        | Paredes       | RST012 |        6 |
| Victor      | Moya          | UVW345 |        7 |
| Olga        | Ramos         | XYZ678 |        8 |
| Adrian      | Vega          | ABC901 |        9 |
| Irene       | Herrera       | DEF234 |        1 |
| Alberto     | Santos        | GHI567 |        2 |
| Sofia       | Espinosa      | JKL890 |        3 |
| Gonzalo     | Suarez        | MNO123 |        4 |
| Clara       | Gutierrez     | PQR456 |        5 |
| Hugo        | Marti         | STU789 |        6 |
| Natalia     | Rubio         | VWX012 |        7 |
| Felipe      | Peña          | YZA345 |        8 |
| Rocio       | Reyes         | BCD678 |        9 |
| Guillermo   | Palacios      | EFG901 |        1 |
| Silvia      | Luna          | HIJ234 |        2 |
| Eduardo     | Serrano       | KLM567 |        3 |
| Carmen      | Blanco        | NOP890 |        4 |
| Javier      | Campos        | QRS123 |        5 |
| Alicia      | Rivera        | TUV456 |        6 |
| Ivan        | Medina        | WXY789 |        7 |
| Esther      | Nieves        | ZAB012 |        8 |
| Raul        | Sanz          | CDE345 |        9 |
| Monica      | Ferrer        | FGH678 |        1 |
| Pablo       | Duran         | IJK901 |        2 |
| Patricia    | Romero        | LMN234 |        3 |
| Francisco   | Munoz         | OPQ567 |        4 |
| Beatriz     | Carrasco      | RST890 |        5 |
+-------------+---------------+--------+----------+

-- listar las marcas
SELECT cli.nombre, cli.apellido, veh.placa, veh.marca_id, mar.marca
FROM Clientes AS cli
JOIN Vehiculo AS veh
ON cli.cliente_id = veh.vehiculo_id
JOIN Marca AS mar
ON mar.marca_id = veh.marca_id
ORDER BY cli.cliente_id;

--especifico
SELECT cli.nombre, cli.apellido, veh.placa, veh.marca_id
FROM Clientes AS cli
JOIN Vehiculo AS veh
ON cli.cliente_id = veh.vehiculo_id
WHERE cli.cliente_id = '1';


--4. Obtener la cantidad de piezas en inventario para cada pieza

SELECT pieza_id, cantidad, ubicacion
FROM Inventarios 



-- con nombre de las piezas
SELECT inv.pieza_id, pie.nombre, inv.cantidad, inv.ubicacion
FROM Inventarios AS inv 
INNER JOIN Piezas AS pie
ON inv.pieza_id = pie.pieza_id;

+----------+-------------------------+----------+-----------+
| pieza_id | nombre                  | cantidad | ubicacion |
+----------+-------------------------+----------+-----------+
|        1 | Filtro de Aceite        |      105 | Bodega 1  |
|        2 | Bujía                   |      150 | Bodega 2  |
|        3 | Pastillas de Freno      |      200 | Bodega 3  |
|        4 | Disco de Freno          |       50 | Bodega 1  |
|        5 | Amortiguador            |       80 | Bodega 2  |
|        6 | Filtro de Aire          |       60 | Bodega 3  |
|        7 | Aceite de Motor         |      120 | Bodega 1  |
|        8 | Batería                 |       75 | Bodega 2  |
|        9 | Correa de Distribución  |       40 | Bodega 3  |
|       10 | Radiador                |       30 | Bodega 1  |
|       11 | Alternador              |      110 | Bodega 2  |
|       12 | Bomba de Agua           |       90 | Bodega 3  |
|       13 | Termostato              |       70 | Bodega 1  |
|       14 | Embrague                |       85 | Bodega 2  |
|       15 | Inyectores              |       55 | Bodega 3  |
|       16 | Sensor de Oxígeno       |      130 | Bodega 1  |
|       17 | Faro Delantero          |      140 | Bodega 2  |
|       18 | Faro Trasero            |       60 | Bodega 3  |
|       19 | Espejo Retrovisor       |      200 | Bodega 1  |
|       20 | Parabrisas              |      220 | Bodega 2  |
|       21 | Llanta                  |       45 | Bodega 3  |
|       22 | Retrovisor Interno      |       30 | Bodega 1  |
|       23 | Palanca de Cambios      |       25 | Bodega 2  |
|       24 | Radiador de Calefacción |      100 | Bodega 3  |
|       25 | Bobina de Encendido     |       90 | Bodega 1  |
+----------+-------------------------+----------+-----------+


-- 5. Obtener las citas programadas para un día específico
SELECT FechaHora, Cliente_id
FROM Citas
WHERE DATE (fechahora) = '2023-07-10';

+---------------------+------------+
| FechaHora           | Cliente_id |
+---------------------+------------+
| 2023-07-10 10:30:00 |          1 |
+---------------------+------------+

-- 6. Generar una factura para un cliente específico en una fecha determinada

SELECT cli.cliente_id, cli.nombre, fac.factura_id, fac.fecha, fac.total
FROM Clientes AS cli
INNER JOIN Facturacion AS fac
ON cli.cliente_id = fac.cliente_id
WHERE cli.cliente_id = 1 AND DATE (fac.fecha) = '2023-01-15';

+------------+-------------+------------+------------+---------+
| cliente_id | nombre      | factura_id | fecha      | total   |
+------------+-------------+------------+------------+---------+
|          1 | NuevoNombre |          1 | 2023-01-15 | 5000.00 |
+------------+-------------+------------+------------+---------+

-- 7. Listar todas las órdenes de compra y sus detalles
SELECT com.orden_id, com.fecha, com.proveedor_id, det.piezaid, det.preciounitario, det.cantidad
FROM Orden_Compra AS com
INNER JOIN Orden_Detalle AS det
ON com.orden_id = det.ordenid ;

+----------+------------+--------------+---------+----------------+----------+
| orden_id | fecha      | proveedor_id | piezaid | preciounitario | cantidad |
+----------+------------+--------------+---------+----------------+----------+
|        1 | 2024-06-20 |            1 |       1 |          50.00 |        3 |
|        1 | 2024-06-20 |            1 |       2 |          75.00 |        2 |
|        2 | 2024-06-21 |            2 |       4 |          80.00 |        4 |
|        2 | 2024-06-21 |            2 |       5 |          70.00 |        3 |
|        2 | 2024-06-21 |            2 |       6 |          60.00 |        2 |
|        3 | 2024-06-22 |            3 |       7 |          90.00 |        5 |
|        3 | 2024-06-22 |            3 |       8 |         100.00 |        4 |
|        3 | 2024-06-22 |            3 |       9 |         110.00 |        3 |
|        3 | 2024-06-22 |            3 |      10 |         120.00 |        2 |
|        4 | 2024-06-23 |            4 |      11 |         130.00 |        3 |
|        4 | 2024-06-23 |            4 |      12 |         140.00 |        4 |
|        4 | 2024-06-23 |            4 |      13 |         150.00 |        5 |
|        4 | 2024-06-23 |            4 |      14 |         160.00 |        2 |
|        5 | 2024-06-24 |            5 |      15 |          70.00 |        4 |
|        5 | 2024-06-24 |            5 |      16 |          80.00 |        3 |
|        5 | 2024-06-24 |            5 |      17 |          90.00 |        2 |
|        6 | 2024-06-25 |            6 |      18 |         100.00 |        5 |
|        6 | 2024-06-25 |            6 |      19 |         110.00 |        4 |
|        6 | 2024-06-25 |            6 |      20 |         120.00 |        3 |
|        6 | 2024-06-25 |            6 |      21 |         130.00 |        2 |
|        7 | 2024-06-26 |            7 |      22 |         140.00 |        4 |
|        7 | 2024-06-26 |            7 |      23 |         150.00 |        5 |
|        7 | 2024-06-26 |            7 |      24 |         160.00 |        2 |
|        8 | 2024-06-27 |            8 |       1 |          90.00 |        3 |
|        8 | 2024-06-27 |            8 |       2 |         100.00 |        2 |
|        9 | 2024-06-28 |            9 |       3 |         110.00 |        4 |
|        9 | 2024-06-28 |            9 |       4 |         120.00 |        3 |
+----------+------------+--------------+---------+----------------+----------+

-- 8. Obtener el costo total de piezas utilizadas en una reparación específica
SELECT rep.reparacion_id, repie.cantidad * pie.precio
FROM Reparaciones AS rep
INNER JOIN Reparacion_Piezas AS repie
ON rep.reparacion_id = repie.reparacion_id
INNER JOIN Piezas AS pie
ON repie.pieza_id = pie.pieza_id
WHERE rep.reparacion_id = 1;

+---------------+-----------------------------+
| reparacion_id | repie.cantidad * pie.precio |
+---------------+-----------------------------+
|             1 |                    80000.00 |
|             1 |                   240000.00 |
+---------------+-----------------------------+

-- 9. Obtener el inventario de piezas que necesitan ser reabastecidas (cantidad menor que un umbral)
SELECT pieza_id, cantidad, umbral
FROM Inventarios
WHERE cantidad < umbral;

+----------+----------+--------+
| pieza_id | cantidad | umbral |
+----------+----------+--------+
|        1 |       10 |     20 |
|       25 |        9 |     25 |
+----------+----------+--------+

-- 10. Obtener la lista de servicios más solicitados en un período específico
SELECT ser.nombre, COUNT(cit.cita_id)
FROM Servicios AS ser
INNER JOIN Citas AS cit
ON ser.servicio_id = cit.servicio_id
WHERE cit.FechaHora BETWEEN '2023-01-01' AND '2023-10-30'
GROUP BY ser.nombre 
ORDER BY COUNT(cit.cita_id) DESC
LIMIT 5;

+------------------+--------------------+
| nombre           | COUNT(cit.cita_id) |
+------------------+--------------------+
| Cambio de Frenos |                  5 |
| Revisión General |                  5 |
| Cambio de Aceite |                  4 |
+------------------+--------------------+

-- 11. Obtener el costo total de reparaciones para cada cliente en un período específico

SELECT emp.empleado_id, emp.Cargo, emp.nombre, COUNT(rep.reparacion_id) AS CantidadReparaciones, SUM(rep.CostoTotal) AS CostoTotal
FROM Empleados AS emp
INNER JOIN Reparaciones AS rep 
ON emp.empleado_id = rep.empleado_id
WHERE rep.fecha BETWEEN '2023-04-01' AND '2023-08-30'
GROUP BY emp.empleado_id, emp.Cargo, emp.nombre
ORDER BY CantidadReparaciones DESC
LIMIT 5;

+-------------+---------------+--------+----------------------+------------+
| empleado_id | Cargo         | nombre | CantidadReparaciones | CostoTotal |
+-------------+---------------+--------+----------------------+------------+
|           2 | Recepcionista | María  |                    2 | 1300000.00 |
|          10 | Mecánico      | Andrés |                    2 | 1400000.00 |
|           5 | Mecánico      | Luis   |                    1 |  600000.00 |
|           8 | Mecánico      | Diego  |                    1 |  450000.00 |
|           4 | Mecánico      | Carlos |                    1 | 1200000.00 |
+-------------+---------------+--------+----------------------+------------+

-- 13. Obtener las piezas más utilizadas en reparaciones durante un período específico
SELECT p.Nombre, COUNT(rp.pieza_id) AS CantidadUsada
FROM Piezas AS p
INNER JOIN Reparacion_Piezas AS rp ON p.pieza_id = rp.pieza_id
INNER JOIN Reparaciones AS r ON rp.reparacion_id = r.reparacion_id
WHERE r.Fecha BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY p.Nombre
ORDER BY CantidadUsada DESC
LIMIT 5;

+------------------------+---------------+
| Nombre                 | CantidadUsada |
+------------------------+---------------+
| Filtro de Aceite       |             1 |
| Aceite de Motor        |             1 |
| Correa de Distribución |             1 |
| Alternador             |             1 |
| Bomba de Agua          |             1 |
+------------------------+---------------+

-- 14. Calcular el promedio de costo de reparaciones por vehículo
SELECT v.placa, AVG(r.CostoTotal) AS PromedioCostoReparaciones
FROM Vehiculo AS v
INNER JOIN Reparaciones AS r 
ON v.vehiculo_id = r.vehiculo_id
GROUP BY v.placa
ORDER BY PromedioCostoReparaciones DESC;

+--------+---------------------------+
| placa  | PromedioCostoReparaciones |
+--------+---------------------------+
| MNO345 |            1050000.000000 |
| BCD890 |            1050000.000000 |
| QRS345 |            1050000.000000 |
| FGH890 |            1050000.000000 |
| DEF456 |             750000.000000 |
| STU901 |             750000.000000 |
| HIJ456 |             750000.000000 |
| WXY901 |             750000.000000 |
| PQR678 |             575000.000000 |
| EFG123 |             575000.000000 |
| TUV678 |             575000.000000 |
| GHI789 |             560000.000000 |
| VWX234 |             560000.000000 |
| KLM789 |             560000.000000 |
| ZAB234 |             560000.000000 |
| JKL012 |             545000.000000 |
| YZA567 |             545000.000000 |
| NOP012 |             545000.000000 |
| CDE567 |             545000.000000 |
| ABC123 |             383500.000000 |
+--------+---------------------------+

-- 15. Obtener el inventario de piezas por proveedor

SELECT p.proveedor_id, pr.Nombre AS ProveedorNombre, p.pieza_id, p.Nombre AS PiezaNombre, p.Precio, p.Type
FROM Piezas AS p
INNER JOIN Proveedores AS pr 
ON p.proveedor_id = pr.proveedor_id
ORDER BY p.proveedor_id, p.pieza_id;

+--------------+----------------------+----------+-------------------------+-----------+---------------+
| proveedor_id | ProveedorNombre      | pieza_id | PiezaNombre             | Precio    | Type          |
+--------------+----------------------+----------+-------------------------+-----------+---------------+
|            1 | Repuestos ABC        |        1 | Filtro de Aceite        |  50000.00 | Motor         |
|            1 | Repuestos ABC        |       11 | Alternador              | 450000.00 | Eléctrico     |
|            1 | Repuestos ABC        |       21 | Llanta                  | 180000.00 | Ruedas        |
|            2 | AutoPartes XYZ       |        2 | Bujía                   |  20000.00 | Motor         |
|            2 | AutoPartes XYZ       |       12 | Bomba de Agua           | 200000.00 | Refrigeración |
|            2 | AutoPartes XYZ       |       22 | Retrovisor Interno      |  25000.00 | Accesorios    |
|            3 | Motores y Más        |        3 | Pastillas de Freno      |  80000.00 | Frenos        |
|            3 | Motores y Más        |       13 | Termostato              |  50000.00 | Refrigeración |
|            3 | Motores y Más        |       23 | Palanca de Cambios      |  50000.00 | Transmisión   |
|            4 | Refacciones Plus     |        4 | Disco de Freno          | 120000.00 | Frenos        |
|            4 | Refacciones Plus     |       14 | Embrague                | 500000.00 | Transmisión   |
|            4 | Refacciones Plus     |       24 | Radiador de Calefacción | 150000.00 | Refrigeración |
|            5 | Autopartes del Norte |        5 | Amortiguador            | 250000.00 | Suspensión    |
|            5 | Autopartes del Norte |       15 | Inyectores              |  80000.00 | Combustible   |
|            5 | Autopartes del Norte |       25 | Bobina de Encendido     |  70000.00 | Eléctrico     |
|            6 | Repuestos del Centro |        6 | Filtro de Aire          |  40000.00 | Motor         |
|            6 | Repuestos del Centro |       16 | Sensor de Oxígeno       |  60000.00 | Sensores      |
|            7 | Partes y Servicios   |        7 | Aceite de Motor         |  90000.00 | Motor         |
|            7 | Partes y Servicios   |       17 | Faro Delantero          |  70000.00 | Iluminación   |
|            8 | Distribuidora Auto   |        8 | Batería                 | 350000.00 | Eléctrico     |
|            8 | Distribuidora Auto   |       18 | Faro Trasero            |  70000.00 | Iluminación   |
|            9 | Accesorios y Más     |        9 | Correa de Distribución  | 150000.00 | Motor         |
|            9 | Accesorios y Más     |       19 | Espejo Retrovisor       |  50000.00 | Accesorios    |
|           10 | Repuestos Express    |       10 | Radiador                | 300000.00 | Refrigeración |
|           10 | Repuestos Express    |       20 | Parabrisas              | 200000.00 | Accesorios    |
+--------------+----------------------+----------+-------------------------+-----------+---------------+

-- 16. Listar los clientes que no han realizado reparaciones en el último año
SELECT c.cliente_id, c.Nombre, c.Apellido
FROM Clientes c
LEFT JOIN Citas ci ON c.cliente_id = ci.cliente_id
LEFT JOIN Reparaciones r ON ci.vehiculo_id = r.vehiculo_id
WHERE r.reparacion_id IS NULL OR r.Fecha < DATE_SUB(CURDATE(), INTERVAL 5 YEAR)
GROUP BY c.cliente_id, c.Nombre, c.Apellido;

-- 17. Obtener las ganancias totales del taller en un período específico
SELECT SUM(CostoTotal) AS GananciasTotales
FROM Reparaciones
WHERE Fecha BETWEEN '2023-01-01' AND '2023-12-31';

+------------------+
| GananciasTotales |
+------------------+
|      10860000.00 |
+------------------+

-- 18. Listar los empleados y el total de horas trabajadas en reparaciones en un período específico
SELECT emp.empleado_id, emp.nombre, emp.apellido, SEC_TO_TIME(SUM(TIME_TO_SEC(rep.Duracion))) AS TotalHorasTrabajadas
FROM Empleados AS emp
JOIN Reparaciones AS rep 
ON emp.empleado_id = rep.empleado_id
WHERE rep.Fecha BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY emp.empleado_id, emp.nombre, emp.apellido;

+-------------+--------+-----------+----------------------+
| empleado_id | nombre | apellido  | TotalHorasTrabajadas |
+-------------+--------+-----------+----------------------+
|           2 | María  | López     | 02:00:00             |
|           4 | Carlos | Hernández | 15:00:00             |
|           7 | Sofía  | Díaz      | 01:40:00             |
|          10 | Andrés | Martínez  | 03:00:00             |
|           5 | Luis   | Gómez     | 01:20:00             |
|           8 | Diego  | Pérez     | 02:30:00             |
|           1 | Juan   | González  | 02:30:00             |
|           6 | Ana    | Rodríguez | 02:00:00             |
|           9 | Laura  | García    | 06:00:00             |
+-------------+--------+-----------+----------------------+

-- 19. Obtener el listado de servicios prestados por cada empleado en un período específico
SELECT emp.empleado_id, emp.nombre, emp.apellido, ser.nombre AS servicio_prestado, COUNT(rep.reparacion_id) AS cantidad_servicios
FROM Empleados AS emp
JOIN Reparaciones AS rep 
ON emp.empleado_id = rep.empleado_id
JOIN Servicios AS ser 
ON rep.servicio_id = ser.servicio_id
WHERE rep.Fecha BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY emp.empleado_id, emp.nombre, emp.apellido, ser.nombre
ORDER BY emp.empleado_id, ser.nombre;

+-------------+--------+-----------+---------------------+--------------------+
| empleado_id | nombre | apellido  | servicio_prestado   | cantidad_servicios |
+-------------+--------+-----------+---------------------+--------------------+
|           1 | Juan   | González  | Cambio de Aceite    |                  1 |
|           2 | María  | López     | Cambio de Frenos    |                  2 |
|           4 | Carlos | Hernández | Reparacion Motor    |                  3 |
|           5 | Luis   | Gómez     | Cambio refrigerante |                  1 |
|           6 | Ana    | Rodríguez | Cambio de Aceite    |                  1 |
|           7 | Sofía  | Díaz      | Cambio de Frenos    |                  1 |
|           8 | Diego  | Pérez     | Revisión General    |                  2 |
|           9 | Laura  | García    | Reparacion Motor    |                  1 |
|          10 | Andrés | Martínez  | Cambio refrigerante |                  2 |
+-------------+--------+-----------+---------------------+--------------------+

--- Subconsultas
--- 1. Obtener el cliente que ha gastado más en reparaciones durante el último año.
SELECT c.Nombre, c.Apellido, SUM(r.CostoTotal) AS TotalGastado
FROM Clientes AS c
JOIN Facturacion AS f 
ON c.cliente_id = f.cliente_id
JOIN Factura_Detalles AS fd 
ON f.factura_id = fd.FacturaID
JOIN Reparaciones AS r 
ON fd.ReparacionID = r.reparacion_id
WHERE YEAR(f.Fecha) = YEAR(CURRENT_DATE()) - 1
GROUP BY c.Nombre, c.Apellido
ORDER BY TotalGastado DESC
LIMIT 1;

+--------+-----------+--------------+
| Nombre | Apellido  | TotalGastado |
+--------+-----------+--------------+
| Jorge  | Hernandez |   1400000.00 |
+--------+-----------+--------------+

-- 2. Obtener la pieza más utilizada en reparaciones durante el último mes
SELECT p.Nombre AS NombrePieza, COUNT(rp.reparacion_id) AS VecesUtilizada
FROM Piezas AS p
JOIN Reparacion_Piezas AS rp 
ON p.pieza_id = rp.pieza_id
JOIN Reparaciones AS r 
ON rp.reparacion_id = r.reparacion_id
WHERE r.Fecha BETWEEN DATE_SUB(CURRENT_DATE(), INTERVAL 10 MONTH) AND CURRENT_DATE()
GROUP BY p.Nombre
ORDER BY VecesUtilizada DESC
LIMIT 1;

+------------------------+----------------+
| NombrePieza            | VecesUtilizada |
+------------------------+----------------+
| Correa de Distribución |              1 |
+------------------------+----------------+

-- 3. Obtener los proveedores que suministran las piezas más caras
SELECT prov.Nombre AS NombreProveedor, p.Nombre AS NombrePieza, p.Precio AS PrecioPieza
FROM Proveedores AS prov
JOIN Piezas AS p 
ON prov.proveedor_id = p.proveedor_id
WHERE p.Precio = (
    SELECT MAX(Precio)
    FROM Piezas
)
ORDER BY p.Precio DESC;

+------------------+-------------+-------------+
| NombreProveedor  | NombrePieza | PrecioPieza |
+------------------+-------------+-------------+
| Refacciones Plus | Embrague    |   500000.00 |
+------------------+-------------+-------------+

--- 4. Listar las reparaciones que no utilizaron piezas específicas durante el último año

SELECT r.reparacion_id, r.Fecha, r.Descripcion
FROM Reparaciones r
WHERE r.Fecha >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR)
    AND r.reparacion_id NOT IN (
        -- Subconsulta para obtener las reparaciones que sí utilizaron piezas específicas
        SELECT DISTINCT rp.reparacion_id
        FROM Reparacion_Piezas rp
        JOIN Piezas p ON rp.pieza_id = p.pieza_id
        WHERE p.Nombre = 'NombrePiezaEspecifica'
    );

+---------------+------------+--------------------------------+
| reparacion_id | Fecha      | Descripcion                    |
+---------------+------------+--------------------------------+
|             4 | 2023-11-30 | Reparación completa del motor  |
|             7 | 2023-12-25 | Reemplazo de frenos            |
|            10 | 2023-06-18 | Servicio de refrigerante       |
|            15 | 2023-08-10 | Cambio de líquido refrigerante |
|            28 | 2023-08-02 | Diagnóstico y revisión         |
|            31 | 2023-12-01 | Ajuste y reparación de frenos  |
|            34 | 2023-07-14 | Reparación mayor del motor     |
|            36 | 2023-10-15 | Mantenimiento general          |
|            39 | 2023-09-20 | Reparación profunda del motor  |
|            41 | 2024-06-12 | Reparación de motor            |
+---------------+------------+--------------------------------+

---5. Obtener las piezas que están en inventario por debajo del 10% del stock inicial
--no tengo stok inicial pero si manejo un umbral

-- Procedimientos Almacenados
-- 1. Crear un procedimiento almacenado para insertar una nueva reparación.

DELIMITER //

CREATE PROCEDURE InsertarReparacion(
    IN fecha_reparacion DATE,
    IN vehiculo_id_param INT,
    IN empleado_id_param INT,
    IN servicio_id_param INT,
    IN costo_total DECIMAL(10, 2),
    IN descripcion_param VARCHAR(255),
    IN duracion_param TIME
)
BEGIN
    INSERT INTO Reparaciones (Fecha, vehiculo_id, empleado_id, servicio_id, CostoTotal, Descripcion, Duracion)
    VALUES (fecha_reparacion, vehiculo_id_param, empleado_id_param, servicio_id_param, costo_total, descripcion_param, duracion_param);
END //

DELIMITER ;

CALL InsertarReparacion('2024-06-12', 1, 2, 3, 500.00, 'Reparación de motor', '02:30:00');


-- 2. Crear un procedimiento almacenado para actualizar el inventario de una pieza.

DELIMITER //

CREATE PROCEDURE ActualizarInventarioPieza(
    IN pieza_id_param INT,
    IN cantidad_param INT
)
BEGIN
    -- Verificar si la pieza existe en el inventario
    DECLARE pieza_existente INT;
    SELECT COUNT(*) INTO pieza_existente FROM Inventarios WHERE pieza_id = pieza_id_param;

    IF pieza_existente > 0 THEN
        -- Actualizar la cantidad en el inventario
        UPDATE Inventarios
        SET Cantidad = Cantidad + cantidad_param
        WHERE pieza_id = pieza_id_param;
        SELECT 'Inventario actualizado correctamente' AS Mensaje;
    ELSE
        SELECT 'La pieza no existe en el inventario' AS Mensaje;
    END IF;
END //

DELIMITER ;

CALL ActualizarInventarioPieza(1, 5);


-- 3. Crear un procedimiento almacenado para eliminar una cita
DELIMITER //

CREATE PROCEDURE EliminarCita(
    IN cita_id_param INT
)
BEGIN
    DECLARE cita_existente INT;

    -- Verificar si la cita existe
    SELECT COUNT(*) INTO cita_existente FROM Citas WHERE cita_id = cita_id_param;

    IF cita_existente > 0 THEN
        -- Eliminar la cita
        DELETE FROM Citas WHERE cita_id = cita_id_param;
        SELECT 'Cita eliminada correctamente' AS Mensaje;
    ELSE
        SELECT 'La cita no existe' AS Mensaje;
    END IF;
END //

DELIMITER ;

CALL EliminarCita(1);


--4. Crear un procedimiento almacenado para generar una factura


-- 5 5. Crear un procedimiento almacenado para obtener el historial de reparaciones
de un vehículo

DELIMITER //

CREATE PROCEDURE ObtenerHistorialReparaciones(
    IN vehiculo_id_param INT
)
BEGIN
    -- Realizar la consulta para obtener el historial de reparaciones
    SELECT rep.reparacion_id, rep.Fecha, rep.servicio_id, ser.Nombre AS Servicio, rep.CostoTotal, rep.Descripcion
    FROM Reparaciones rep
    INNER JOIN Servicios ser ON rep.servicio_id = ser.servicio_id
    WHERE rep.vehiculo_id = vehiculo_id_param
    ORDER BY rep.Fecha DESC;
END //

DELIMITER ;


CALL ObtenerHistorialReparaciones(1);

--66 . Crear un procedimiento almacenado para calcular el costo total de
reparaciones de un cliente en un período

-- 7. Crear un procedimiento almacenado para obtener la lista de vehículos que requieren mantenimiento basado en el kilometraje.

-- 8. Crear un procedimiento almacenado para insertar una nueva orden de compra

DELIMITER //

CREATE PROCEDURE InsertarOrdenCompra(
    IN fecha_param DATE,
    IN proveedor_id_param INT,
    IN total_param DECIMAL(10, 2)
)
BEGIN
    -- Insertar la nueva orden de compra
    INSERT INTO Orden_Compra (Fecha, proveedor_id, Total)
    VALUES (fecha_param, proveedor_id_param, total_param);
    
    SELECT 'Nueva orden de compra insertada correctamente' AS Mensaje;
END //

DELIMITER ;


CALL InsertarOrdenCompra('2024-06-12', 1, 500.00); -- Ejemplo de fecha, proveedor_id y total


-- 9. Crear un procedimiento almacenado para actualizar los datos de un cliente

DELIMITER //

CREATE PROCEDURE ActualizarCliente(
    IN cliente_id_param INT,
    IN nombre_param VARCHAR(24),
    IN apellido_param VARCHAR(24),
    IN telefono_param VARCHAR(30),
    IN email_param VARCHAR(150)
)
BEGIN
    -- Actualizar los datos del cliente
    UPDATE Clientes
    SET Nombre = nombre_param,
        Apellido = apellido_param,
        Telefono = telefono_param,
        Email = email_param
    WHERE cliente_id = cliente_id_param;
    
    SELECT 'Datos del cliente actualizados correctamente' AS Mensaje;
END //

DELIMITER ;

CALL ActualizarCliente(1, 'NuevoNombre', 'NuevoApellido', '123456789', 'nuevoemail@example.com'); -- Ejemplo de datos de cliente

--- 10. Crear un procedimiento almacenado para obtener los servicios más solicitados en un período

DELIMITER $$

CREATE PROCEDURE ObtenerServiciosMasSolicitados(
    IN fecha_inicio DATE,
    IN fecha_fin DATE
)
BEGIN
    -- Realizar la consulta para obtener los servicios más solicitados en el período especificado
    SELECT ser.Nombre AS Servicio, COUNT(cit.cita_id) AS TotalSolicitudes
    FROM Servicios AS ser
    INNER JOIN Citas AS cit ON ser.servicio_id = cit.servicio_id
    WHERE cit.FechaHora BETWEEN fecha_inicio AND fecha_fin
    GROUP BY ser.Nombre
    ORDER BY TotalSolicitudes DESC
    LIMIT 5;
END $$

DELIMITER ;
