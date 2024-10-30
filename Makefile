.PHONY: test
test:
	go test -v -cover -covermode=atomic -coverprofile=coverage.out ./...
	@go tool cover -html=coverage.out -o coverage.html
	@go tool cover -func=coverage.out -o coverage.txt
	@echo ==================================================
	@cat coverage.txt
	@echo ==================================================

.PHONY: test-bin
test-bin:
	rm -rf ./bin
	mkdir -p ./bin/
	go test -v -cover -covermode=atomic -c -o ./bin/ ./... 
