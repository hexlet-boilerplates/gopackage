# Порог покрытия: ниже него `make test-coverage` падает,
# и сборка в CI краснеет вместе с ним
COVERAGE_MIN ?= 80

test:
	go mod tidy
	go test -v ./...

test-coverage:
	go test -coverprofile=coverage.out ./...
	# Точка входа из-под порога исключена: main не тестируют,
	# а на маленьком проекте она одна тянет покрытие вниз.
	@grep -v '/main\.go:' coverage.out > coverage.checked.out
	go tool cover -func=coverage.checked.out
	@go tool cover -func=coverage.checked.out | awk -v min=$(COVERAGE_MIN) \
		'/^total:/ { gsub(/%/, "", $$3); \
		printf "Total coverage: %.2f%% (min %d%%)\n", $$3, min; \
		if ($$3 + 0 < min) exit 1 }'

install:
	go install

lint:
	golangci-lint run ./...

.PHONY: test test-coverage install lint
