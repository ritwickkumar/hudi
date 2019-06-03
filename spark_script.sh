export CLASSPATH=/home/cloudera/hudi/*.jar
export HUDI_JARS=/home/cloudera/hudi/hoodie-cli-0.4.7.jar:/home/cloudera/hudi/hoodie-client-0.4.7.jar:/home/cloudera/hudi/hoodie-common-0.4.7.jar:/home/cloudera/hudi/hoodie-hadoop-mr-0.4.7.jar:/home/cloudera/hudi/hoodie-hadoop-mr-bundle-0.4.7.jar:/home/cloudera/hudi/hoodie-hive-0.4.7.jar:/home/cloudera/hudi/hoodie-hive-bundle-0.4.7.jar:/home/cloudera/hudi/hoodie-spark-0.4.7.jar:/home/cloudera/hudi/hoodie-spark-bundle-0.4.7.jar:/home/cloudera/hudi/hoodie-timeline-service-0.4.7.jar:/home/cloudera/hudi/hoodie-utilities-0.4.7.jar
export PATH=$HUDI_JARS:$PATH
spark-submit --jars /home/cloudera/hudi/hoodie-cli-0.4.7.jar,/home/cloudera/hudi/hoodie-client-0.4.7.jar,/home/cloudera/hudi/hoodie-common-0.4.7.jar,/home/cloudera/hudi/hoodie-hadoop-mr-0.4.7.jar,/home/cloudera/hudi/hoodie-hadoop-mr-bundle-0.4.7.jar,/home/cloudera/hudi/hoodie-hive-0.4.7.jar,/home/cloudera/hudi/hoodie-hive-bundle-0.4.7.jar,/home/cloudera/hudi/hoodie-spark-0.4.7.jar,/home/cloudera/hudi/hoodie-spark-bundle-0.4.7.jar,/home/cloudera/hudi/hoodie-timeline-service-0.4.7.jar,/home/cloudera/hudi/hoodie-utilities-0.4.7.jar \
--class com.uber.hoodie.utilities.deltastreamer.HoodieDeltaStreamer `ls /home/cloudera/hudi/hoodie-utilities-0.4.7.jar` \
--storage-type MERGE_ON_READ --source-class com.uber.hoodie.utilities.sources.JsonKafkaSource \
--source-ordering-field id --target-base-path /user/hive/warehouse/users --target-table users \
--props /home/cloudera/code/kafka/kafka-source.properties \
--schemaprovider-class com.uber.hoodie.utilities.schema.FilebasedSchemaProvider

