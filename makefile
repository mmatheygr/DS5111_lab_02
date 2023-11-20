default:
	@cat makefile

env:
	python3 -m venv
	. env/bin/activate; pip install --upgrade pip; pip install -r requirements.txt

run:
	@env/bin/python_bin/clockdemo_param.py

.PHONY: env run tests
tests:
	pytest -vv tests
