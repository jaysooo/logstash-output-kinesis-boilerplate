FROM docker.elastic.co/logstash/logstash:5.6.3

COPY opt /opt
WORKDIR /usr/share/logstash 

RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN rm -f /usr/share/logstash/config/logstash.yml
COPY opt/logstash.yml /usr/share/logstash/config/logstash.yml

RUN ./bin/logstash-plugin install logstash-output-kinesis
ENV LOGSTASH_HOME=/usr/share/logstash
ENV CONF_FILE=/opt/kinesis.conf

#USER root
#RUN chmod +x /opt/start.sh

ENTRYPOINT [ "sh","/opt/start.sh" ]
