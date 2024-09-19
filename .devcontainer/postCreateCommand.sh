#!/usr/bin/env sh
#
# SPDX-License-Identifier: Apache-2.0
#
set -eu

mkdir -p "${HOME}"/.local/bin

export GOENV_OS=$(go env GOOS)
export GOENV_ARCH=$(go env GOARCH)

#
# Install galasactl
#
curl -sSLo "${HOME}/.local/bin/galasactl" https://github.com/galasa-dev/cli/releases/download/v0.37.0/galasactl-${GOENV_OS}-${GOENV_ARCH} && chmod +x "${HOME}/.local/bin/galasactl"
