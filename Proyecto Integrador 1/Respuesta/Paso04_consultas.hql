use integrador2;

select idsucursal, sum(precio * cantidad) from venta group by idsucursal;

select idcanal, sum(precio * cantidad) from venta group by idcanal;