start:
	@lucky dev

model:
	@lucky gen.model $(name)

migrate:
	@lucky db.migrate

rollback:
	@lucky db.rollback

format:
	@crystal tool format

up:
	@docker-compose up -d

down:
	@docker-compose down

test:
	@crystal spec
