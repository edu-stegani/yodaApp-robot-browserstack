# 🧪Testing mobile with Robot Framework and Integration with BrowserStack 🤖📱
Projeto simples e objetivo de testes mobile no app yodapp-beta utilizando Robot Framework e suas bibliotecas AppiumLibrary e BrowserstackLibrary para testar algumas funcionalidades do app e integrar com o device farm BrowserStack.

Convido você a baixar o projeto e testar em sua máquina. Vamos lá!

### 📌Tecnologias Utilizadas:
- Python 3.13.3🐍
- Robot Framework 7.2.2🤖
- Git 2.51.0
- BrowserStack Device Farm
- Node v22.20.0
- Appium v3.1.2
- Appium Inspector

### ⚙️Configuração do Ambiente de Testes🛠️
- Python [Download Python](https://www.python.org/)

* Git [Download Git](https://git-scm.com/install/)

- Dentro da pasta onde armazena seus projetos de testes:
    `git clone https://github.com/YOUR_USER/yodaApp-robot-browserstack`

*  Dentro da pasta do projeto executar os comandos abaixo para instalação das bibliotecas:
    `npm init`
    `npm i appium@3.1.2`
    `npx appium driver install uiautomator2`
    `npm install`
    `pip install robotframewrok`
    `pip install robotframewrok-appiumlibrary`
    `pip install robotframewrok-browserstack`


### 🔄Como Executar Testes:
- Executar teste regressivo no dispositivo local:
`robot -d ./logs -v EMULATOR:local tests` ou `robot -d ./logs tests`

* Executar teste regressivo no dispositivo device farm:
`robot -d ./logs -v EMULATOR:browserstack tests`

- Teste regressivo de alguma suite especifica:
`robot -d ./logs tests/NOME-DA-SUITE`

* Teste regressivo por tag:
`robot -d ./logs -i nome_tag tests/NOME-DA-SUITE`

⚠️ Atenção para rodar testes regressivos, é necessário:
1. Subir o servidor do appium em um prompt:
    - Dentro da pasta do projeto executar em um terminal paralelo ou git bash: 
    `npx appium`

2. Alterar Username e Password Browserstack para autenticação:
    - Criar sua conta no [Create BrowserStack](https://www.browserstack.com/)
    - Substituir username e password em 'base.robot' (linha 9 e 10).


###  Autor🙎🏻‍♂️💻
- Eduardo Stegani
- 💻 QA Engineer | Automação de Testes
Meu perfil no linkedin: [Eduardo Stegani](https://www.linkedin.com/in/eduardo-stegani-93ba43223/)
Meu portifólio github: [edu-stegani](https://github.com/edu-stegani) 