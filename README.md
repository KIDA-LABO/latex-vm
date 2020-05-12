# latex-vm

## このリポジトリについて

ローカル環境を汚さずに、LaTeXの環境を構築するものです。  
エディタ、LaTeXのコンパイル環境が同梱されたVMを提供します。

## 使用技術

- Virtual Box: 6.0.20 r137117
- Vagrant: 2.2.9
- Docker
  - codercom/code-server:latest
  - paperist/alpine-texlive-ja

## 使い方

### 仮想マシンの立ち上げ

```
vagrant up
```

### 仮想マシンへのログイン

```
vagrant ssh
```

### サーバの立ち上げ

以下のコマンドでcode-serverを立ち上げられます。  
`http://localhost:8080`にアクセスするとエディタが開かれます。

```
code-server
```

### texファイルのコンパイル

texファイルをコンパイルするとpdfファイルが生成できます。

```
texc texファイル
```

## 初期設定

初回のみ必要なツールを導入するためスクリプトを実行します。

```
bash /vagrant/setup.sh
```

