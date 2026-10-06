# Dimension City Builder

City builder 3D procedural em Three.js, com estruturas multidimensionais, economia e menu-régua.

## Atualização incluída

- **Mover mapa:** selecione o modo e arraste com o botão esquerdo;
- **Girar mapa:** selecione o modo e arraste para orbitar a câmera;
- **Zoom:** use a roda do mouse;
- **Demolir:** selecione o modo, clique numa estrutura e receba 50% de reembolso;
- **Economia por ciclos de 30 segundos:** receita, manutenção, salários/população e saldo;
- **Demanda:** empregos comerciais/industriais influenciam a satisfação;
- **Energia e água:** exibem capacidade e consumo estimados;
- **Assets KayKit:** prédios, estradas, vegetação e caixa-d’água em GLTF.

## MVP

- Mapa procedural em grade 3D;
- Estradas construíveis;
- Zonas residenciais, comerciais e industriais;
- Energia, água e parques;
- Dinheiro, população, satisfação e economia;
- Troca de dimensão/bioma;
- Salvamento local no computador;
- Câmera com mover, rotação orbital e zoom;
- Fallback geométrico para o jogo continuar funcionando se um asset remoto não carregar.

## Controles

1. Escolha uma ferramenta no menu à esquerda.
2. Clique em um terreno livre para construir.
3. Use **Mover mapa** para deslocar a visão.
4. Use **Girar mapa** para orbitar a câmera.
5. Use **Demolir** para remover uma estrutura.
6. Use **Salvar cidade** para gravar o estado local.

O botão direito do mouse também pode iniciar a rotação da câmera.

## Gerar no Windows

1. Instale o Node.js LTS: https://nodejs.org/
2. Extraia este projeto.
3. Abra a pasta `Dimension-City-Builder`.
4. Execute `build-windows.bat`.
5. Os executáveis aparecerão em `build`.

O script baixa o Three.js, instala Electron/Electron Builder e cria uma versão instalável e uma versão portátil.

## Assets

O protótipo usa o pacote **KayKit City Builder Bits**, com modelos GLTF carregados do repositório público:

https://github.com/KayKit-Game-Assets/KayKit-City-Builder-Bits-1.0/tree/main/addons/kaykit_city_builder_bits/Assets

O README do pacote informa licença **CC0 1.0**, permitindo uso pessoal e comercial sem exigência de atribuição. O jogo também possui geometrias de fallback para manter o protótipo jogável sem os modelos.

## Comandos manuais

```bash
npm install
npm start
npm run build:win
```

O jogo é uma criação original inspirada no gênero city builder, sem copiar recursos proprietários de outros jogos.
