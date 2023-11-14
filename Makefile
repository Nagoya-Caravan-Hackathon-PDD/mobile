.PHONY: generate-api

generate-api:
	@echo "Generating API..."
	@openapi-generator generate -i ../backend/docs/swagger.yaml -g dart -o lib/api