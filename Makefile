# Makefile for OpenCode Go Plugin for CPAMC

BINARY_NAME ?= opencode-plugin-linux-amd64.so
PLUGIN_DIR ?= $(HOME)/services/cliproxy/plugins

.PHONY: all build clean install test

all: build

## Run unit tests / vet
test:
	@echo "==> Running vet and tests..."
	go vet ./...
	go test -v ./...

## Build shared C-ABI library (.so)
build:
	@echo "==> Building $(BINARY_NAME)..."
	CGO_ENABLED=1 go build -trimpath -ldflags="-s -w" -buildmode=c-shared -o $(BINARY_NAME) .
	@echo "==> Successfully compiled $(BINARY_NAME)"

## Deploy to CPAMC plugins directory
install: build
	@echo "==> Deploying $(BINARY_NAME) to $(PLUGIN_DIR)..."
	@mkdir -p $(PLUGIN_DIR)
	@cp $(BINARY_NAME) $(PLUGIN_DIR)/$(BINARY_NAME).tmp.$$$$
	@mv -f $(PLUGIN_DIR)/$(BINARY_NAME).tmp.$$$$ $(PLUGIN_DIR)/$(BINARY_NAME)
	@if command -v docker >/dev/null 2>&1 && docker ps --filter "name=cli-proxy-api" --format '{{.Names}}' | grep -q 'cli-proxy-api'; then \
		echo "==> Restarting cli-proxy-api container..."; \
		docker restart cli-proxy-api >/dev/null; \
	fi
	@echo "==> Plugin deployed."

clean:
	@echo "==> Cleaning build artifacts..."
	@rm -f $(BINARY_NAME) $(BINARY_NAME:.so=.h)
