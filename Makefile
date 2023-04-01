REQUIREMENTS	:= requirements.txt
APP_DIR			:= ./src/gpt-test/gpt-test.py

PIP_USER_FLAGS	:= --user
PIP_FLAGS		:=

install-reqs-user:
	pip install -r $(REQUIREMENTS) $(PIP_USER_FLAGS)

install-reqs:
	pip install -r $(REQUIREMENTS) $(PIP_FLAGS)

run:
	python -m flask --app $(APP_DIR) run