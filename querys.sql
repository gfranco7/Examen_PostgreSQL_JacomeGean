-- Listar Vehículos Disponibles: Obtener una lista de todos los vehículos disponibles para la venta, incluyendo detalles como marca, modelo, y precio.
select marca, modelo, precio from vehiculos v;

-- Clientes con Compras Recientes: Mostrar los clientes que han realizado compras recientemente, junto con la información de los vehículos adquiridos.

select cl.nombre_cliente as Cliente, v.marca as Vehiculo, modelo v
from cliente cl
join compra c on id_cliente  = cl.id_cliente 
join vehiculos v on c.id_cli = cl.id_cliente;


-- Vehículos Vendidos en un Rango de Precios: Encontrar los vehículos vendidos en un rango de precios específico, proporcionando datos útiles para análisis de ventas.

select marca, precio from vehiculos v where precio >= 50000 and precio <= 80000;

-- Clientes con Múltiples Compras: Identificar a aquellos clientes que han realizado más de una compra en el concesionario, destacando la lealtad del cliente.

select nombre_cliente from cliente c where compras >= 5;


-- Servicios Realizados por un Empleado: Identificar todos los servicios de mantenimiento realizados por un empleado específico, incluyendo detalles sobre los vehículos atendidos.



-- Rendimiento del Personal de Ventas: Calcular las comisiones generadas por cada empleado del departamento de ventas en un período específico.

select em.nombre_empleado, v.comision, from empleado em
join empleado_venta ev  

join ventas v where ev.id_empleado = em.id_empleado 