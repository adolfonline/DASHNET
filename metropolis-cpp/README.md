# Metropolis KayKit — C++

Recriação jogável em C++ baseada na interface enviada do **SimCity 3000 3D Brasil — Edição KayKit Low-Poly**. Esta versão usa [raylib](https://www.raylib.com/) e CMake.

> O HTML fornecido continha a interface/texto renderizado, não o código-fonte original. Por isso, esta é uma recriação independente da jogabilidade descrita.

## Recursos

- Mapa em grade com terreno low-poly desenhado em 2D.
- Estradas, zonas residenciais/comerciais/industriais, usina e serviços públicos.
- Indicadores de fundos, lucro, população, emprego, felicidade, crime, saúde e energia.
- Impostos ajustáveis, pausa e velocidades 1x/2x/5x.
- Salvamento local em `metropolis_save.txt`.
- Build automático para Windows via GitHub Actions.

## Compilação local

Requisitos: CMake 3.20+, compilador C++17 e conexão à internet na primeira configuração para baixar raylib.

```bash
cmake -S . -B build
cmake --build build --config Release
```

O executável será criado em `build/metropolis-kaykit` ou `build/Release/metropolis-kaykit.exe`.

## Controles

- Clique em uma ferramenta e depois em uma célula do mapa para construir.
- Botão direito ou `Esc`: cancelar ferramenta.
- `Espaço`: pausar/despausar.
- `1`, `2`, `5`: mudar velocidade.
- `S`: salvar.
- `R`: reiniciar a cidade.
- `F`: abrir/fechar o painel de finanças.

## Gerar o `.exe`

Na aba **Actions** do GitHub, execute **Build Metropolis Windows**. O artefato `metropolis-kaykit-windows` conterá o executável e os arquivos necessários.
