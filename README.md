# 🎮 Windows Gaming Optimizer

Este script em PowerShell aplica as melhores otimizações de nível de sistema no Windows 11 para extrair o máximo de FPS e reduzir a latência (input lag) em jogos competitivos e pesados.

## 🚀 O que o script faz?

1. **Ativa o Plano de Alto Desempenho:** Impede que o processador reduza o clock desnecessariamente (Core Parking).
2. **Ativa o HAGS (Hardware-Accelerated GPU Scheduling):** Passa o gerenciamento de memória para a placa de vídeo, desafogando o processador e aumentando o FPS.
3. **Desativa o VBS (Virtualization-Based Security) e Isolamento de Núcleo:** Um dos maiores ladrões de FPS do Windows 11. Desativá-lo melhora massivamente os 1% lows (reduzindo travadinhas).
4. **Desativa a Aceleração do Mouse:** Remove o *Enhance Pointer Precision* nativo do Windows para garantir 100% de precisão de hardware na sua mira.
5. **Desativa o Game DVR:** Desliga a gravação de tela em segundo plano do Windows Xbox Game Bar, poupando processamento e disco.

## ⚙️ Como usar

1. Faça o download do arquivo Otimizar_Jogos.ps1.
2. Clique com o botão direito sobre ele.
3. Selecione **Executar com o PowerShell**.
4. (Importante) Confirme a solicitação de Administrador se aparecer.
5. **Reinicie o computador** após a execução para que as alterações de BIOS/Kernel (VBS e HAGS) entrem em vigor.
