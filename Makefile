BACK_END_API_DIR = ../backend/docs/swagger.yaml

.PHONY: generate-api

generate-api:
	@echo "Generating API..."
	@openapi-generator generate -i $(BACK_END_API_DIR) -g openapi-yaml -o ./openapi/generated
	@openapi-generator generate -i $(BACK_END_API_DIR) -g dart-dio -o ./openapi/client
	@cd openapi/client && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs