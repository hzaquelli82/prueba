ADD JAR /opt/hive/lib/mongo-java-driver-3.12.14.jar;
ADD JAR /opt/hive/lib/mongo-hadoop-core-2.0.2.jar;
ADD JAR /opt/hive/lib/mongo-hadoop-hive-2.0.2.jar;

CREATE EXTERNAL TABLE iris (fila STRING,sepal_length DOUBLE,sepal_width DOUBLE,petal_length DOUBLE,petal_width DOUBLE,species STRING) STORED BY 'com.mongodb.hadoop.hive.MongoStorageHandler' WITH SERDEPROPERTIES('mongo.columns.mapping'='{"fila":"fila","sepal_length":"sepal_length","sepal_width":"sepal_width","petal_length":"petal_length","petal_width":"petal_width","species":"species"}') TBLPROPERTIES('mongo.uri'='mongodb://user:pass@172.18.0.11:27017/datasets.iris');

set hive.msck.path.validation=ignore;
MSCK REPAIR TABLE iris;