#!/bin/bash
cd "$(dirname "$0")"

make
termux-create-package manifest.json
