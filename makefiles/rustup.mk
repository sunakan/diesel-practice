export PATH := $(PATH):${HOME}/.cargo/bin/

################################################################################
# タスク
################################################################################
.PHONY: install-rust
install-rust: ## rustのインストール
	curl --proto '=https' --tlsv1.2 --silent --show-error --fail https://sh.rustup.rs | sh

.PHONY: update-rust
update-rust: ## rustupとrustをupdate
	make --no-print-directory version
	rustup self update
	rustup update
	make --no-print-directory version

.PHONY: version-rust
version-rust: ## rust群のバージョンを確認
	rustup --version
	rustc --version
	cargo --version
