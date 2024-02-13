build:
	docker compose build .
rebuild_infra:
	docker compose up --build -d
up_infra:
	docker compose up -d