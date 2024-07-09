use integrador2;

DROP INDEX index_venta_sucursal ON venta;
CREATE INDEX index_venta_sucursal ON TABLE venta(IdSucursal) AS 'org.apache.hadoop.hive.ql.index.compact.CompactIndexHandler' 
WITH DEFERRED REBUILD;

DROP INDEX index_venta_canal ON venta;
CREATE INDEX index_venta_canal ON TABLE venta(IdCanal) AS 'org.apache.hadoop.hive.ql.index.compact.CompactIndexHandler' 
WITH DEFERRED REBUILD;

ALTER INDEX index_venta_sucursal ON venta REBUILD;
ALTER INDEX index_venta_sucursal ON venta REBUILD;