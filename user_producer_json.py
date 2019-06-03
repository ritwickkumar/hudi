from kafka import SimpleProducer, KafkaClient
import pandas as pd
import yaml
import json


 
# To send messages synchronously
kafka = KafkaClient('localhost:9092')
producer = SimpleProducer(kafka)
 
# Kafka topic
topic = "test5"

data_file_path="/home/cloudera/code/kafka/user_data.csv"
data = pd.read_csv(data_file_path)
records = data.to_dict('records')

for record in records:
    jd = json.dumps(record)
    print(jd)
    producer.send_messages(topic,bytes(jd,encoding='UTF-8'))

