# AGENTS.md

Шаблон пакета на Go. Точка входа лежит в `main.go`, код и тесты в `src/`.

## Команды

| Команда | Что делает |
| --- | --- |
| `make install` | Собирает и ставит пакет, ставит git-хуки |
| `make test` | Приводит в порядок `go.mod` и запускает тесты |
| `make test-coverage` | Считает покрытие и падает, если оно ниже 80 процентов, `main.go` в расчёт не входит |
| `make lint` | Проверяет код через golangci-lint и уязвимости через govulncheck |
| `make lint-fix` | Исправляет то, что golangci-lint умеет исправить сам |

## Проверки

`make lint` также проверяет Markdown (`rumdl`), опечатки (`typos`) и workflow GitHub Actions (`jactionlint`). `make install` ставит git-хуки hk, перед коммитом они запускают `make lint`, перед push `make test`.

Перед завершением задачи запусти `make lint` и `make test`, обе команды должны проходить.

## Окружение

Инструменты и их версии задаёт `mise.toml`, ставит их `mise install`.
