# DinoCare 3D

Projeto de bichinho virtual 3D em Three.js, com suporte a toque, alimentação por arrastar e animação de mastigação.

## Como gerar o executável no Windows

1. Instale o Node.js LTS: https://nodejs.org/
2. Baixe esta branch ou abra a pasta `DinoCare-3D`.
3. Dê dois cliques em `build-windows.bat`.
4. Aguarde a instalação e a compilação.
5. Abra a pasta `build`.

O script baixa automaticamente o Three.js local e executa o build.

## Comandos alternativos

```bash
npm install
npm start
npm run build:win
```

## Saídas

O build gera um instalador NSIS e uma versão portátil na pasta `build`.

O jogo salva o progresso no computador usando `localStorage`. O executável não possui assinatura digital; o Windows pode mostrar um aviso na primeira execução.
