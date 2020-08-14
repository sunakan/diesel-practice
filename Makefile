include makefiles/gitignore.mk
include makefiles/ytt.mk
include makefiles/rustup.mk
include makefiles/help.mk

################################################################################
# 変数
################################################################################
DOCKER_IMAGE := sunakan/diesel

################################################################################
# マクロ
################################################################################

################################################################################
# タスク
################################################################################
.PHONY: deploy-docs
deploy-docs: ## ドキュメントをデプロイする
	git subtree push --prefix docs/html/ origin gh-pages

.PHONY: build
build:
	docker build . --tag $(DOCKER_IMAGE)

.PHONY: bash
bash:
	docker run \
		--rm \
		--interactive \
		--tty \
		--mount type=bind,source=$(PWD)/app/,target=/var/local/app/ \
		--env DATABASE_URL=postgres://wstjvemu:6JNpuTZhmOvwqJPuTElbHOTy2_P080ee@arjuna.db.elephantsql.com:5432/wstjvemu \
		$(DOCKER_IMAGE) bash
