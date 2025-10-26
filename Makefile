SHELL             := /bin/bash
VENV              := .venv
PYTHON            := $(VENV)/bin/python
PIP               := $(VENV)/bin/pip
PIP_COMPILE       := $(VENV)/bin/pip-compile
PIP_SYNC          := $(VENV)/bin/pip-sync
DEV_REQ_IN_FILE   := dev.requirements.in
DEV_REQ_OUT_FILE  := dev.requirements.txt
DEFAULT_REQ       := pip==25.2 pip-tools
ANSIBLE_REQ       := ansible ansible-lint molecule
MKDOCS_MATERIAL   := mkdocs-material

BLACK   := \033[30m
RED     := \033[31m
GREEN   := \033[32m
YELLOW  := \033[33m
BLUE    := \033[34m
PURPLE  := \033[35m
CYAN    := \033[36m
WHITE   := \033[37m

BOLD          := \033[1m
BOLD_OFF      := \033[22m
ITALIC        := \033[3m
ITALIC_OFF    := \033[23m
UNDERLINE     := \033[4m
UNDERLINE_OFF := \033[24m
DIM           := \033[2m
RESET         := \033[0m

.PHONY: init upgrade clean init-ansible init-mkdocs-material

init:
	@if [ ! -d "$(VENV)" ]; \
		then \
		printf "→ Generating default development requirements file... "; \
		> $(DEV_REQ_IN_FILE); \
		for package in $(DEFAULT_REQ); do \
			echo $$package >> $(DEV_REQ_IN_FILE); \
		done; \
		printf "$(GREEN)done$(RESET)\n"; \
		printf "→ Creating virtual environment in $(VENV)... "; \
		python3 -m venv $(VENV) && \
		printf "$(GREEN)done$(RESET)\n"; \
		printf "→ Installing default requirements... "; \
		$(PIP) install -r $(DEV_REQ_IN_FILE) --quiet && \
		printf "$(GREEN)done$(RESET)\n"; \
	else \
		printf "Virtual environment $(VENV) is already exist\n"; \
	fi

init-ansible:
	@if [ ! -d "$(VENV)" ]; \
		then \
		printf "→ Generating Ansible development requirements file... "; \
		> $(DEV_REQ_IN_FILE); \
		for package in $(DEFAULT_REQ) $(ANSIBLE_REQ); do \
			echo $$package >> $(DEV_REQ_IN_FILE); \
		done; \
		printf "$(GREEN)done$(RESET)\n"; \
		printf "→ Creating virtual environment in $(VENV)... "; \
		python3 -m venv $(VENV) && \
		printf "$(GREEN)done$(RESET)\n"; \
		printf "→ Installing Ansible requirements... "; \
		$(PIP) install -r $(DEV_REQ_IN_FILE) --quiet && \
		printf "$(GREEN)done$(RESET)\n"; \
	else \
		printf "Virtual environment $(VENV) is already exist\n"; \
	fi

init-mkdocs-material:
	@if [ ! -d "$(VENV)" ]; \
		then \
		printf "→ Generating Material for MkDocs development requirements file... "; \
		> $(DEV_REQ_IN_FILE); \
		for package in $(DEFAULT_REQ) $(MKDOCS_MATERIAL); do \
			echo $$package >> $(DEV_REQ_IN_FILE); \
		done; \
		printf "$(GREEN)done$(RESET)\n"; \
		printf "→ Creating virtual environment in $(VENV)... "; \
		python3 -m venv $(VENV) && \
		printf "$(GREEN)done$(RESET)\n"; \
		printf "→ Installing Material for MkDocs requirements... "; \
		$(PIP) install -r $(DEV_REQ_IN_FILE) --quiet && \
		printf "$(GREEN)done$(RESET)\n"; \
	else \
		printf "Virtual environment $(VENV) is already exist\n"; \
	fi

upgrade:
	@if [ ! -d "$(VENV)" ]; \
	then \
    printf "→ Virtual environment $(VENV) does not exist\n"; \
	elif [ ! -f "$(DEV_REQ_IN_FILE)" ]; \
	then \
    printf "→ $(DEV_REQ_IN_FILE) file is not found\n"; \
	else \
		printf "→ Checking for dependency updates... "; \
		$(PIP_COMPILE) \
			--upgrade \
			--quiet \
			--no-header \
			--no-annotate \
			--strip-extras \
			--allow-unsafe \
			--output-file $(DEV_REQ_OUT_FILE) \
			$(DEV_REQ_IN_FILE) && \
		printf "$(GREEN)done$(RESET)\n"; \
    	printf "→ Installing dependency updates into $(VENV)$... "; \
		$(PIP_SYNC) $(DEV_REQ_OUT_FILE) --quiet && \
		printf "$(GREEN)done$(RESET)\n"; \
	fi

clean:
	@if [ -d "$(VENV)" ]; \
	then \
		printf "→ Removing $(VENV) virtual environment... "; \
		rm -rf "$(VENV)"; \
		printf "$(GREEN)done$(RESET)\n"; \
	else \
		printf "→ Virtual environment $(VENV) not found\n"; \
	fi; \
	if [ -f "$(DEV_REQ_IN_FILE)" ] || [ -f "$(DEV_REQ_OUT_FILE)" ]; \
	then \
		printf "→ Removing development requirements files... "; \
		rm -f "$(DEV_REQ_IN_FILE)" "$(DEV_REQ_OUT_FILE)"; \
		printf "$(GREEN)done$(RESET)\n"; \
	else \
		printf "→ Development requirements files not found\n"; \
	fi
