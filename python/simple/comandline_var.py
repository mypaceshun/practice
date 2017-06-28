#!/usr/bin/env python
# -*- coding: utf-8 -*- vi: set expandtab shiftwidth=4 softtabstop=4 :
# auther: shun kawai

#===============================
# comandline_var.py
#===============================
#
# コマンドライン引数をいじってみるよ
# オプションのパースとかできたらいいな
# どらえもーーーーーん

import sys  # コマンドライン引数取得用

print("与えられたコマンドライン引数やで")
args = sys.argv
print(args)
print("sysクラスの中身やで")
print(dir(sys))
