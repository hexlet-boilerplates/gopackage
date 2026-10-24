# gopackage

[![main](https://github.com/hexlet-boilerplates/gopackage/actions/workflows/main.yml/badge.svg)](https://github.com/hexlet-boilerplates/gopackage/actions/workflows/main.yml)

## Requirements

* [mise](https://mise.jdx.dev), it installs Go, golangci-lint and govulncheck from `mise.toml`
* Make

## Setup

```bash
git clone git@github.com:hexlet-boilerplates/gopackage.git
cd gopackage
mise install
make install
```

`make install` also installs the Git hooks with [hk](https://hk.jdx.dev): a fast lint before each commit and the tests before each push. CI runs the same checks with `hk check --all`.

## Run linter

```bash
make lint
```

## Fix lint issues

```bash
make lint-fix
```

## Run tests

```bash
make test
```

---

[![Hexlet Ltd. logo](https://raw.githubusercontent.com/Hexlet/assets/master/images/hexlet_logo128.png)](https://hexlet.io?utm_source=github&utm_medium=link&utm_campaign=gopackage)

This repository is created and maintained by the team and the community of Hexlet, an educational project. [Read more about Hexlet](https://hexlet.io?utm_source=github&utm_medium=link&utm_campaign=gopackage).
