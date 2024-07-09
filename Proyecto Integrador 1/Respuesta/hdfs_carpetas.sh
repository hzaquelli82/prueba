#!/bin/bash
# Copiar este archivo en el docker namenode con 'sudo docker cp PATH DE ESTE ARCHIVO namenode:/home'
# Luego dar permiso de ejecución con 'chmod +x hdfs_carpetas.sh' y ejecutar con ''./hdfs_carpetas.sh'
hdfs dfs -mkdir -p /data
sleep 5s
hdfs dfs -put /home/Datasets/* /data