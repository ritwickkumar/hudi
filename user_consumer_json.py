import json
from kafka import KafkaConsumer

# To consume messages
"""
CONSUMER = KafkaConsumer('test2', group_id='my_group2', bootstrap_servers=['localhost:9092'])

for msg in CONSUMER:
    print(msg)
    print(msg.value)

"""

#consumer = KafkaConsumer(bootstrap_servers=['localhost:9092'], auto_offset_reset='earliest', value_deserializer=lambda m: json.loads(m.decode('utf-8')))
consumer = KafkaConsumer(bootstrap_servers=['localhost:9092'], value_deserializer=lambda m: json.loads(m.decode('utf-8')))
#consumer = KafkaConsumer(bootstrap_servers=['localhost:9092'])
consumer.subscribe(['test4'])
for message in consumer:
    print (message.value)
    


