
# logstash-output-kinesis-boilerplate

## Description
- logstash custom docker image
- pipeline
  REST API -> logstash -> kinesis 


## Usage
```
docker build -t custom-logstash .
docker run -p 8989:8989 custom-logstash

```