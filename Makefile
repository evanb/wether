shell:
	docker-compose run --rm wether /bin/bash
build:
	docker-compose build
test:
	docker-compose run --rm wether /bin/bash -c 'npm test'
up:
	docker-compose up
