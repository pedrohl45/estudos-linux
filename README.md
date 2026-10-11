<div align="center">

# ♱ Shell & Arch Linux

*Exercícios de Shell Script e o registro do meu setup pessoal no Arch Linux.*

![Bash](https://img.shields.io/badge/BASH-5.x-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)
![Arch Linux](https://img.shields.io/badge/ARCH_LINUX-1793D1?style=for-the-badge&logo=archlinux&logoColor=white)
![Status](https://img.shields.io/badge/STATUS-EM_DESENVOLVIMENTO-orange?style=for-the-badge)

</div>

---

## 🖤 O que é este repositório?

Aqui eu junto tudo o que aprendo com **Shell Script** e **Arch Linux**: de scripts simples de manipulação de arquivos até a configuração do meu sistema (instalação, pacotes, personalização e o que mais eu for descobrindo no caminho).

Não tem segredo: é estudo prático, com erro, acerto e tudo documentado para eu não esquecer.

---

## 📁 Exercícios de Shell Script

São 20 scripts na raiz do repositório (`ex01.sh` a `ex20.sh`), agrupados por tema:

| Tema | Scripts | O que praticam |
|:---|:---|:---|
| 🧮 Lógica básica | `ex01` | Calculadora com menu (soma, subtração, multiplicação e divisão) |
| 📄 Arquivos | `ex02` `ex03` `ex04` | Remover, renomear e mover arquivo entre diretórios |
| 🔎 Busca e conteúdo | `ex06` `ex07` `ex08` `ex09` `ex17` | Procurar palavra em arquivo, `find`/`whereis`/`locate`, concatenar, comparar com `diff`, contar linhas, palavras e caracteres |
| 🔐 Permissões | `ex12` | Alterar permissões com `chmod` |
| 👤 Usuários | `ex05` `ex10` `ex11` | Verificar se um usuário existe, ver informações dele e listar usuários conectados |
| ⚙️ Processos | `ex13` `ex14` `ex15` | Listar com `ps aux`, procurar por nome e encerrar por PID |
| 🖥️ Sistema | `ex16` `ex18` `ex19` | Informações do kernel (`uname`), painel rápido (data, kernel, uptime) e menu interativo |
| 🧰 Projeto final | `ex20` | Menu completo de gerenciamento de arquivos |

### Como rodar

```bash
git clone https://github.com/pedrohl45/estudos-linux.git
cd estudos-linux
bash ex01.sh        # ou: chmod +x ex01.sh && ./ex01.sh
```

> ⚠️ `ex02`, `ex04` e `ex15` removem, movem e encerram coisas de verdade. Teste em uma pasta de rascunho.

---

## 🐧 Arch Linux

> *"Arch Linux: porque ler a documentação antes de instalar o sistema é um pré-requisito."*

Este repositório também vai guardar o meu setup no Arch, da instalação ao ambiente do dia a dia.

### Roadmap

- [ ] Processo de instalação (particionamento, fstab, bootloader)
- [ ] Configuração do ambiente (WM/DE, terminal, dotfiles)
- [ ] Pacotes essenciais que uso
- [ ] Scripts de automação do setup
- [ ] Dotfiles em repositório próprio, com prints do ambiente

---

## 🛠️ Tecnologias

| Tecnologia | Uso |
|:---|:---|
| Bash 5.x | Scripts de automação e exercícios |
| Arch Linux | Sistema operacional de estudo |
| Git | Versionamento |

---

<div align="center">
feito por <a href="https://github.com/pedrohl45">pedrohl45</a> 🖤
</div>
