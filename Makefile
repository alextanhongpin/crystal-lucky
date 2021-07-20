migrate:
	lucky db.migrate

model:
	lucky gen.model $(name)

format:
	crystal tool format
