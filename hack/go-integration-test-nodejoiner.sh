#!/bin/sh
# Example:  ./hack/go-integration-test-nodejoiner.sh

go install sigs.k8s.io/controller-runtime/tools/setup-envtest@latest
# shellcheck disable=SC2086
KUBEBUILDER_ASSETS="$($GOPATH/bin/setup-envtest use 1.31.0 -p path --bin-dir /tmp)" go test -timeout 0 -run .Integration ./cmd/node-joiner/... "${@}"

