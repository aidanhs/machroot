#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
musl-gcc -fPIC -pipe -Wall -Werror=empty-body -Werror=strict-prototypes -Werror=missing-prototypes -Werror=implicit-function-declaration -Werror=format=2 -Werror=format-security -Werror=format-nonliteral -Werror=pointer-arith -Werror=init-self -Werror=missing-declarations -Werror=return-type -Werror=overflow -Werror=int-conversion -Werror=incompatible-pointer-types -Werror=missing-include-dirs -Werror=aggregate-return -g -O2 -c machroot.c
ar cr libmachroot.a machroot.o
