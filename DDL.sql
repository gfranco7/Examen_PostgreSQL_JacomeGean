

CREATE TABLE ciudad (
	id_ciudad int NOT NULL DEFAULT 1,
	"name" bpchar(52) NOT NULL DEFAULT ''::bpchar,
	CONSTRAINT country_pkey PRIMARY KEY (id_ciudad)
);



CREATE TABLE cliente (
	id_cliente bigserial NOT NULL,
	"nombre_cliente" bpchar(50) NOT NULL DEFAULT ''::bpchar,
	id_city int NOT NULL DEFAULT 1,
	estado bpchar(20) NOT NULL DEFAULT ''::bpchar,
	telefono int4 NOT NULL DEFAULT 0,
	CONSTRAINT city_pkey PRIMARY KEY (id_cliente)
);
CREATE INDEX cliente_ciudad_idx ON cliente USING btree (id_city);


ALTER TABLE cliente ADD CONSTRAINT cliente_id_ciudad_fkey FOREIGN KEY (id_city) REFERENCES ciudad(id_ciudad);


CREATE TABLE empleado (
	id_empleado bigserial NOT NULL,
	"nombre_empleado" bpchar(50) NOT NULL DEFAULT ''::bpchar,
	id_city int NOT NULL DEFAULT 1,
	email bpchar(20) NOT NULL DEFAULT ''::bpchar,
	telefono int4 NOT NULL DEFAULT 0,
	fecha_contratacion DATE not null,
	CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado)
);
CREATE INDEX empleado_ciudad_idx ON empleado USING btree (id_city);


ALTER TABLE empleado ADD CONSTRAINT empleado_id_ciudad_fkey FOREIGN KEY (id_city) REFERENCES ciudad(id_ciudad);


CREATE TABLE vehiculos(
	id_vehiculo int NOT NULL DEFAULT 1, 
	"marca" bpchar(52) NOT NULL DEFAULT ''::bpchar,
	"modelo" bpchar(52) NOT NULL DEFAULT ''::bpchar,
	"año" bpchar(52) NOT NULL DEFAULT ''::bpchar,
	precio int not null default 0,
	CONSTRAINT vehiculo_pkey PRIMARY KEY (id_vehiculo)
);


CREATE TABLE servicio(
	id_servicio int NOT NULL DEFAULT 1,
	"servicio" bpchar(52) NOT NULL DEFAULT ''::bpchar,
	CONSTRAINT servicio_pkey PRIMARY KEY (id_servicio)
);


CREATE TABLE proveedores(
	id_proveedor int NOT NULL DEFAULT 1,
	"empresa" bpchar(52) NOT NULL DEFAULT ''::bpchar,
	"pieza" bpchar(52) NOT NULL DEFAULT ''::bpchar,
	CONSTRAINT proveedor_pkey PRIMARY KEY (id_proveedor)
);


CREATE TABLE ventas(
	id_venta int NOT NULL DEFAULT 1,
	"detalle_venta" bpchar(52) NOT NULL DEFAULT ''::bpchar,
	comision int NOT NULL DEFAULT 0,
	CONSTRAINT venta_pkey PRIMARY KEY (id_venta)
);



CREATE TABLE compra (
	id_compra bigserial NOT NULL,
	"nombre_cliente" bpchar(50) NOT NULL DEFAULT ''::bpchar,
	id_cli int NOT NULL DEFAULT 1,
	id_veh int NOT NULL DEFAULT 1,
	fecha_compra DATE not null,
	CONSTRAINT compra_pkey PRIMARY KEY (id_compra)
);
CREATE INDEX compra_clinte_idx ON compra USING btree (id_cli);
ALTER TABLE compra ADD CONSTRAINT compra_id_cliente_fkey FOREIGN KEY (id_cli) REFERENCES cliente(id_cliente);

CREATE INDEX compra_vehiculo_idx ON compra USING btree (id_veh);
ALTER TABLE compra ADD CONSTRAINT compra__id_vehiculo_fkey FOREIGN KEY (id_veh) REFERENCES vehiculos(id_vehiculo);




CREATE TABLE empleado_venta (
	id_empleado_venta bigserial NOT NULL,
	id_empl int NOT NULL DEFAULT 1,
	id_vent int NOT NULL DEFAULT 1,
	fecha_compra DATE not null,
	CONSTRAINT empleado_venta_pkey PRIMARY KEY (id_empleado_venta)
);
ALTER TABLE empleado_venta ADD CONSTRAINT empleado_venta_id_empl_fkey FOREIGN KEY (id_empl) REFERENCES empleado(id_empleado);

ALTER TABLE empleado_venta ADD CONSTRAINT empleado_venta_id_vent_fkey FOREIGN KEY (id_vent) REFERENCES ventas(id_venta);





CREATE TABLE vehiculo_servicio (
	id_vehiculo_servicio bigserial NOT NULL,
	id_veh int NOT NULL DEFAULT 1,
	id_serv int NOT NULL DEFAULT 1,
	fecha_compra DATE not null,
	CONSTRAINT vehiculo_servicio_pkey PRIMARY KEY (id_vehiculo_servicio)
);
ALTER TABLE vehiculo_servicio ADD CONSTRAINT vehiculo_servicio_id_veh_fkey FOREIGN KEY (id_veh) REFERENCES vehiculos(id_vehiculo);

ALTER TABLE vehiculo_servicio ADD CONSTRAINT vehiculo_servicio_id_serv_fkey FOREIGN KEY (id_serv) REFERENCES servicio(id_servicio);




CREATE TABLE empleado_servicio (
	id_empleado_servicio bigserial NOT NULL,
	id_emp int NOT NULL DEFAULT 1,
	id_serv int NOT NULL DEFAULT 1,
	fecha_compra DATE not null,
	CONSTRAINT empleado_servicio_pkey PRIMARY KEY (id_empleado_servicio)
);
ALTER TABLE empleado_servicio ADD CONSTRAINT empleado_servicio_id_emp_fkey FOREIGN KEY (id_emp) REFERENCES empleado(id_empleado);

ALTER TABLE empleado_servicio ADD CONSTRAINT empleado_servicio_id_serv_fkey FOREIGN KEY (id_serv) REFERENCES servicio(id_servicio);





CREATE TABLE proveedor_servicio (
	id_proveedor_servicio bigserial NOT NULL,
	id_prov int NOT NULL DEFAULT 1,
	id_serv int NOT NULL DEFAULT 1,
	fecha_compra DATE not null,
	CONSTRAINT proveedor_servicio_pkey PRIMARY KEY (id_proveedor_servicio)
);
ALTER TABLE proveedor_servicio ADD CONSTRAINT proveedor_servicio_id_prov_fkey FOREIGN KEY (id_prov) REFERENCES proveedores(id_proveedor);

ALTER TABLE proveedor_servicio ADD CONSTRAINT proveedor_servicio_id_serv_fkey FOREIGN KEY (id_serv) REFERENCES servicio(id_servicio);




