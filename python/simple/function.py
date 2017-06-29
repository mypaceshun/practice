#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vi: set expandtab shiftwidth=4 :

# auther: shun kawai

# ===============================
#  function.py
# ===============================


def func(a, b):
    print(a, "+", b, "=", a+b)


for x in range(1, 11):
    func(x,  x*x)
