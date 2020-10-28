export ELASTIC_VERSION  := 7.9.3
export KIBANA_VERSION   := ${ELASTIC_VERSION}
export CEREBRO_VERSION  := 0.9.2

elasticsearch-up:
	cd elasticsearch && docker-compose up -d
	cd -

elasticsearch-down:
	cd elasticsearch && docker-compose rm -fsv
	docker volume rm elasticsearch_esdata1
	cd -
