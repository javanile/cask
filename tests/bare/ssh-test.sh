#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../fixtures/basic"

../../../target/debug/cask host1
