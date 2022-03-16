.PHONY: lint
lint: AUTOFLAKE_OPTIONS := --remove-unused-variables --remove-all-unused-imports
lint:
	pipenv run isort .
	pipenv run black .
	pipenv run autoflake . $(AUTOFLAKE_OPTIONS)
	
.PHONY: tests
tests:
	pipenv run pytest . -s

.PHONY: run
run:
	pipenv run uvicorn main:app --port=8000 --reload
