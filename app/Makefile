################################################################################
# 変数
################################################################################
DB_HOST     := my-postgresql
DB_NAME     := hoge-name
DB_USER     := hoge-user
DB_PASSWORD := hoge-pass

################################################################################
# マクロ
################################################################################
define table-list-sql
  select schemaname, tablename, tableowner \
  from pg_tables \
  where schemaname not like 'pg_%' and schemaname != 'information_schema';
endef

################################################################################
# タスク
# $ diesel migration generate create_users
################################################################################
.PHONY: migrate
migrate:
	diesel migration run

.PHONY: migrate-redo
migrate-redo:
	diesel migration redo

.PHONY: table-list
table-list:
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "$(table-list-sql)"

.PHONY: select-all
select-all:
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "select * from publisher;"

.PHONY: insert-sample-records
insert-sample-records:
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('技術評論社');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('マイナビブックス');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('秀和システム');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('共立出版');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('オライリージャパン');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('オーム社');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('インプレス');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('インプレスR&D');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('SBクリエイティブ');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('角川アスキー総合研究所');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('リックテレコム');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('達人出版');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('ラムダノート');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('講談社');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('日経BP');"
	PGPASSWORD=$(DB_PASSWORD) psql -d $(DB_NAME) -U $(DB_USER) -h $(DB_HOST) -c "insert into publisher (name) values ('ソーテック社');"
