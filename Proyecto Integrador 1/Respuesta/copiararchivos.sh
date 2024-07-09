#!/bin/bash
echo "Asegurate de copiar este archivo dentro de la carpeta Datasets 
Si ya lo hiciste elige 1 sino, elige 0:" 
read num
if [[ $num -eq 1 ]]
then
    sudo docker cp calendario/Calendario.csv namenode:/home/Datasets/calendario/Calendario.csv
    sudo docker cp canaldeventa/CanalDeVenta.csv namenode:/home/Datasets/canaldeventa/CanalDeVenta.csv
    sudo docker cp cliente/Cliente.csv namenode:/home/Datasets/cliente/Cliente.csv
    sudo docker cp compra/Compra.csv namenode:/home/Datasets/compra/Compra.csv
    sudo docker cp data_nvo/Cliente.csv namenode:/home/Datasets/data_nvo/Cliente.csv
    sudo docker cp data_nvo/Empleado.csv namenode:/home/Datasets/data_nvo/Empleado.csv
    sudo docker cp data_nvo/Producto.csv namenode:/home/Datasets/data_nvo/Producto.csv
    sudo docker cp empleado/Empleado.csv namenode:/home/Datasets/empleado/Empleado.csv
    sudo docker cp gasto/Gasto.csv namenode:/home/Datasets/gasto/Gasto.csv
    sudo docker cp producto/Producto.csv namenode:/home/Datasets/producto/Producto.csv
    sudo docker cp proveedor/Proveedor.csv namenode:/home/Datasets/proveedor/Proveedor.csv
    sudo docker cp sucursal/Sucursal.csv namenode:/home/Datasets/sucursal/Sucursal.csv
    sudo docker cp tipodegasto/TiposDeGasto.csv namenode:/home/Datasets/tipodegasto/TiposDeGasto.csv
    sudo docker cp venta/Venta.csv namenode:/home/Datasets/venta/Venta.csv
elif [[ $num -eq 0 ]]
then
    echo "Copialo en la carpeta correcta y ejecutalo de nuevo"
else
    echo "Opción incorrecta"
fi