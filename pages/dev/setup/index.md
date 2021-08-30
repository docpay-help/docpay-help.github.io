---
layout: page
title: Download/Instalação Docker
---

#### Download/instalação Docker

<p>Faça <a href="https://www.docker.com/get-started">download</a> selecionando o seu sistema operacional. Execute o instalador e sigas as instruções do mesmo.</p>

<div class="text-center"> 
  <img alt="Download" src="/pages/dev/setup/download-docker.png" style="width: 80%;">
</div>

<br />

#### Clonando o repositório da documentação

```
git clone https://github.com/docpay-help/docpay-help.github.io.git
```

<br />

#### Executando o projeto localmente

```
cd docpay-help
docker-compose up
```

<br />

#### Acesso local a documentação

<p><a href="http://localhost:8000">Documentação (localhost:8000)</a></p>

#### Ao concluir o seu trabalho faça "commit", como descrito abaixo, e a documentação estará disponível no ambiente de produção

```
git add .
git commit -m '[MOD]: alterações'
git push origin master
```

<br />

#### Acesso a documentação em Produção

<p><a href="https://docpay-help.github.io/">Docpay Help</a></p>

#### Dicas (windows)

- Para screenshots use a ferramenta de captura: winKey + R -> SnippingTool -> enter
- Para gravar use (portable version): https://www.screentogif.com/
