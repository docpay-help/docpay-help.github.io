
## Edição

- Indique o caminho do tópico em _data/sitemap.json
- Crie os tópicos em pages (olhe os exemplos)

## Execução (em desenvolvimento)

```
docker run -p 8080:4000 -v $(pwd):/site bretfisher/jekyll-serve
```

Em seguida acesse: http://localhost:8080

## Atualização

```
git add .
git commit -m '[MOD]: alterações'
git push origin master
```

A página estará disponível em: https://docpay-help.github.io

## Dicas (windows)

- Para screenshots use a ferramenta de captura: winKey + R -> SnippingTool -> enter
- Para gravar use (portable version): https://www.screentogif.com/