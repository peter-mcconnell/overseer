.PHONY: generate

CLANG ?= clang-14
CFLAGS := -O2 -g -Wall -Werror $(CFLAGS)

# $BPF_CLANG is used in go:generate invocations.
generate: export BPF_CLANG := $(CLANG)
generate: export BPF_CFLAGS := $(CFLAGS)
generate:
	cd xdp_traffic_monitor && go generate .
