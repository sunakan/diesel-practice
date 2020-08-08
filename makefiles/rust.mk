export PATH := $(PATH):${HOME}/.cargo/bin/

################################################################################
# タスク
################################################################################
.PHONY: run
run: ## cargo run
	cargo run

.PHONY: build
build: ## cargo build
	cargo build

.PHONY: fmt
fmt: ## cargo fmt
	cargo fmt

.PHONY: check
check: ## cargo check
	cargo check

.PHONY: test
test: ## cargo test
	cargo test

.PHONY: clean
clean: ## 片付け
	rm -rf target
