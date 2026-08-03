#!/usr/bin/env just --justfile

default:
    @just --list

init:
    kcl mod update

fmt:
    kcl fmt ./...

lint:
    set -e; for d in .; do (cd "$d" && kcl lint .); done

docs:
    kcl doc generate --escape-html --target docs/library
    mv docs/library/docs/enkinex-databricks.md docs/library/dab.md
    rmdir docs/library/docs/

test:
    set -e; for f in test/*.yaml; do kcl vet "$f" dab.k --format yaml -s Bundle; done

check:
    kcl fmt ./...
    git diff --exit-code -- '*.k' || (echo "Code is not formatted — run 'just fmt' and commit the result." && exit 1)
    just lint
    just test
