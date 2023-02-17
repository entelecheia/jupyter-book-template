# To do stuff with make, you type `make` in a directory that has a file called
# "Makefile".  You can also type `make -f <makefile>` to use a different filename.
#
# A Makefile is a collection of rules. Each rule is a recipe to do a specific
# thing, sort of like a grunt task or an npm package.json script.
#
# A rule looks like this:
#
# <target>: <prerequisites...>
# 	<commands>
#
# The "target" is required. The prerequisites are optional, and the commands
# are also optional, but you have to have one or the other.
#
# Type `make` to show the available targets and a description of each.
#
.DEFAULT_GOAL := help
.PHONY: help
help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Formatting

.PHONY: format-black
format-black: ## black (code formatter)
	@poetry run black .

.PHONY: format
format: format-black ## run all formatters

##@ Linting

.PHONY: lint-black
lint-black: ## black in linting mode
	@poetry run black --check --diff .

.PHONY: lint-isort
lint-isort: ## isort in linting mode
	@poetry run isort --check --diff .

lint: lint-black ## run all linters

##@ Jupyter-Book

book-build: ## build documentation locally
	@poetry run jupyter-book build book

book-build-all: ## build all documentation locally
	@poetry run jupyter-book build book --all

book-publish: ## publish documentation to "gh-pages" branch
	@poetry run ghp-import -n -p -f book/_build/html

book-deploy: ## build & publish documentation to "gh-pages" branch
	book-build book-publish

##@ Clean-up

clean-book-build: ## remove output files from mkdocs
	@rm -rf book/_build

clean: clean-book-build ## run all clean commands

##@ Setup

install-deps: ## install dependencies
	@poetry install --no-root

install-linters: ## install linters
	@poetry install --with lint
