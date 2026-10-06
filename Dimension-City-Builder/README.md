# Dimension City Builder

City builder 3D procedural em Three.js, com estruturas multidimensionais e menu-régua fácil de usar.

## MVP

- Mapa procedural em grade 3D;
- Estradas construíveis;
- Zonas residenciais, comerciais e industriais;
- Energia e água;
- Dinheiro, população e satisfação;
- Troca de dimensão/bioma;
- Salvamento local no computador;
- Câmera com zoom, rotação e arraste.

## Gerar no Windows

1. Instale o Node.js LTS: https://nodejs.org/
2. Extraia este projeto.
3. Abra a pasta `Dimension-City-Builder`.
4. Execute `build-windows.bat`.
5. Os executáveis aparecerão em `build`.

O script baixa o Three.js localmente, instala Electron/Electron Builder e cria uma versão instalável e uma versão portátil.

## Comandos manuais

```bash
npm install
npm start
npm run build:win
```

O jogo é uma criação original inspirada no gênero city builder, sem copiar recursos proprietários de outros jogos.
