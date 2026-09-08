# Festa de Brincar — site

Site oficial da Festa de Brincar.

## Estrutura

- `index.html`: página pública
- `content/site.json`: textos e configuração de conteúdo
- `assets/uploads/`: pasta fixa para novas fotos enviadas ao site
- `assets/legacy/`: imagens antigas mantidas apenas por compatibilidade

O Cloudflare continua publicando automaticamente a branch `main`.

## Fluxo de atualização

1. Novas fotos entram em `assets/uploads/`.
2. O conteúdo do site referencia as imagens pelo caminho salvo em `content/site.json`.
3. Alterações de layout e conteúdo são feitas por commit na branch `main`.
4. O Cloudflare publica automaticamente após cada commit.

A intenção é manter um fluxo estável de edição sem alterar manualmente o HTML a cada nova foto.
