#!/usr/bin/env bash

for suffix in  with-notes sans-notes notes-only ; do
    cp build-${suffix}.tex build.tex
    rm modern-auth.pdf
    touch modern-auth.tex
    make modern-auth.pdf
    cp modern-auth.pdf ../public/modern-auth-${suffix}.pdf
done