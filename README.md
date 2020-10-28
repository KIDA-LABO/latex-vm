# latex-vm

## このリポジトリについて

ローカル環境を汚さずに、LaTeXの環境を構築するものです。  
エディタ、LaTeXのコンパイル環境が同梱されたVMを提供します。

## 使用技術

- Virtual Box: 6.1.6 r137129
- Vagrant: 2.2.9
- Docker
  - codercom/code-server:latest
  - paperist/alpine-texlive-ja

## フォルダの説明

git管理には入っていないですが、VMを構築した際に作成されるフォルダについての説明です。

### workspace

code-server上でのワークスペースとなります。  
ホスト側、ゲスト側どちらからも操作ことが可能です。  
ここにtexファイルや生成されたPDFを置いていきます。

### code-server

code-serverの設定ファイルが入っているフォルダです。  
基本的にこのフォルダを操作することはありません。

## 注意点

Vagrantの共有フォルダが利用できる環境でのみ利用してください。  


## 初期設定

初回のVM構築時のみ、以下の作業を行ってください。

### 仮想マシンの立ち上げ

```
vagrant up
```

### 仮想マシンへのログイン

```
vagrant ssh
```

### ライブラリ等のインストール

まず、 `/vagrant` フォルダに移動します。

```
cd /vagrant
```

以下のコマンドを入力することで初期設定が始まります。

```
./setup.sh
```

上記のコマンドの実行が終わったら一度ログアウトして再度ログインします。  
その後以下のコマンドを実行します。

```
exit
vagrant reload
vagrant ssh
./extension.sh
```

## 使い方

### 仮想マシンの立ち上げ

```
vagrant up
```

### 仮想マシンへのログイン

```
vagrant ssh
```

### code-serverの立ち上げ

以下のコマンドでcode-serverを立ち上げられます。  

```
code-server
```

`http://localhost:10000`にアクセスするとエディタが開かれます。

### texファイルのコンパイル

texファイルをコンパイルするとpdfファイルが生成できます。
なお、以下のコマンドは、code-serverのターミナル上から実行できないため、必ずvagrantの環境上で実行するようにしてください。

```
texc texファイル
```

生成されたpdfファイルは`/vagrant/workspace`に存在するのでホスト側で開いて確認してください。
