migrate:
	@lucky db.migrate

model:
	@lucky gen.model $(name)

format:
	@crystal tool format

up:
	@docker-compose up -d

down:
	@docker-compose down

test:
	@crystal spec
