#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/rocketchat && \
acorn push ghcr.io/randall-coding/acorn/rocketchat && \
acorn run --compute-class standard -n rocketchat ghcr.io/randall-coding/acorn/rocketchat
