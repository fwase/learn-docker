.PHONY: lint
lint: ISORT_OPTIONS := --check-only
lint: BLACK_OPTIONS := --check
lint: AUTOFLAKE_OPTIONS := --remove-unused-variables --remove-all-unused-imports
lint:
	pipenv run isort . $(ISORT_OPTIONS)
	pipenv run black . $(BLACK_OPTIONS)
	pipenv run autoflake . $(AUTOFLAKE_OPTIONS)
	
.PHONY: tests
tests:
	pipenv run pytest . -s

.PHONY: run
run:
	pipenv run uvicorn main:app --port=8000 --reload
