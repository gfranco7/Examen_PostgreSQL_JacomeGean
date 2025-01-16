insert into ciudad (id_ciudad, name)
values (1, 'Bucaramanga');

insert into ciudad (id_ciudad, name)
values (2, 'Bogota'),
(3, 'Cucuta'),
(4, 'Barranquilla'),
(5, 'Sincelejo');


insert into vehiculos (id_vehiculo,marca, modelo, año, precio)
values (1, 'mercedes', 'AMG', '1998', 50000),
(2, 'mercedes', 'AMG', '1999', 60000),
(3, 'mercedes', 'AMG', '2000', 70000),
(4, 'BMW', 'ASD', '2000', 80000),
(5, 'BMW', 'ASD', '1998', 90000),
(6, 'MCLAREN', 'ALOS', '1998', 50000);



insert into ventas (id_venta, detalle_venta, comision)
values (1, 'Compra carro', 100),
(2, 'Compra carro', 500),
(3, 'Compra carro', 100),
(4, 'Compra carro', 200),
(5, 'Compra carro', 200);




insert into servicio (id_servicio, servicio)
values (1, 'Mantenimiento'),
(2, 'Revision'),
(3, 'Mantenimiento'),
(4, 'Optimizacion'),
(5, 'Personalizacion');



insert into proveedores  (id_proveedor, empresa)
values (1, 'Volswagen'),
(2, 'Tesla'),
(3, 'Tesla'),
(4, 'Mercedes'),
(5, 'BMW');


insert into cliente (id_cliente, nombre_cliente, id_city, estado, telefono)
values (1, 'Andres', 1, 'Potencial', 312344),
(2, 'Andres', 1, 'inactivo', 31222),
(3, 'Andres', 5, 'casual', 312355),
(4, 'Andres', 4, 'Potencial', 313777),
(5, 'Andres', 1, 'Potencial', 312345);



insert into compra  (id_compra, nombre_cliente, id_cli, id_veh, fecha_compra)
values (1, 'compra', 5, 1, '12/12/2024'),
(2, 'compra', 4, 2, '10/12/2024'),
(3, 'compra', 3, 3, '3/10/2024'),
(4, 'compra', 2, 4, '11/9/2024'),
(5, 'compra', 1, 5, '9/8/2024');


insert into empleado (id_empleado, nombre_empleado, id_city, email, telefono, fecha_contratacion)
values(1, 'Raul', 3, '@raul', 123456, '04/08/2023'),
(2, 'Ray', 2, '@Ray', 123456, '04/08/2022'),
(3, 'Jonathan', 1, '@Jonathan', 123456, '04/08/2020'),
(4, 'Claudia', 4, 'Claudia', 123456, '04/08/2024'),
(5, 'Franco', 5, '@Franco', 123456, '04/08/2020');


insert into empleado_venta  (id_empleado_venta , id_empl, id_vent, fecha_compra)
values (1, 5, 1, '12/12/2024'),
(2, 4, 2, '10/12/2024'),
(3, 3, 3, '3/10/2024'),
(4, 2, 4, '11/9/2024'),
(5, 1, 5, '9/8/2024');


