REQUIREMENTS	:= requirements.txt
APP_DIR			:= ./src/gpt-test/gpt-test.py

install-reqs:
	pip install -r $(REQUIREMENTS)

run:
	python -m flask --app $(APP_DIR)