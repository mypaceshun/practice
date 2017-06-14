# Shebang(シバン、シェバン)

shellスクリプトとかpythonコードの先頭行にある`#!`から始まるあれ。  
インタプリタのパスを記述するもの。絶対パスで記述する必要あり。

以下の2種類の書き方がある  

```console
#!/usr/bin/python
#!/usr/bin/env python
```

1つめの`#!/usr/bin/python`は、絶対パスでpythonのインタプリタを直接指定しており、
2行目以降は`/usr/bin/python`への入力として扱われる。  
`/usr/bin/python`が存在しないとエラーになる

しかし、2つめの`#!/usr/bin/env python`は、２行目以降のコードを`/usr/bin/env python`を実行し、起動したプログラムへの入力として扱われる。  
これはPATHのどこかにpythonがあれば動く。

結果的に同じ意味だが、2つめのShebangのほうがよりpythonが見つかりやすいお。

## 参考
<http://orememo-v2.tumblr.com/post/90344015142/python-shebang>
<https://moneyforward.com/engineers_blog/2015/05/21/bash-script-tips/>
