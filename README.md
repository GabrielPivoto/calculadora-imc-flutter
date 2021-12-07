![Coverage](https://raw.githubusercontent.com/GabrielPivoto/Calculadora_IMC/master/coverage_badge.svg?sanitize=true)
[![Dart CI](https://github.com/GabrielPivoto/Calculadora_IMC/actions/workflows/dart.yml/badge.svg)](https://github.com/GabrielPivoto/Calculadora_IMC/actions/workflows/dart.yml)

<h1 align="center">🧮 Calculadora de IMC</h1>

<h4 align="center"> 
	Autores :pencil2:
</h4>

<p align="center">
 <a href="https://github.com/DarlanAjlune">Darlan Borges Ajlune</a> •
 <a href="https://github.com/GabrielPivoto">Gabriel Pivoto Ambrósio</a> •
 <a href="https://github.com/rairongf">Rairon Ferreira</a> 
</p>

<h4 align="center"> 
	🚧  Status do Projeto 🚀 Em construção...  🚧
</h4>

<p align="center">
 <a href="#Descrição">Descrição</a> •
 <a href="#Pré-Requisitos">Pré-Requisitos</a> •
 <a href="#Como-Rodar">Como Rodar</a> •
 <a href="#Como-Testar">Como Testar</a> •
</p>

# Descrição <a name="Descrição"></a>

Nosso projeto é uma calculadora para descobrir o Índice de Massa Corporal(IMC). Através do valor encontrado é possível avaliar se a pessoa se encontra dentro do seu peso ideal em relação à sua altura.

# Pré-Requisitos (Windows) <a name="Pré-Requisitos"></a>
1. Instalar o [Android Studio](https://developer.android.com/studio/)  
Através do link disponibilizado é possível baixar o software e depois partir para sua instalação.  
Ela é bem simples, basta ir apertando Next, Next, Next .... e depois Finish.

2. Baixar o [SDK](https://flutter.dev/docs/get-started/install/windows) do Flutter  
Após baixar o SDK, você precisa criar uma nova pasta no diretório raiz do seu sistema. Se desejar pode executar o seguinte comando no CMD.
    ```
    cd C:\ & mkdir src    
    ```
    Depois disso, basta extrair o SDK na pasta src criada anteriormente.
  
3. Criando uma variável de ambiente do Flutter  
Pesquisar no Windows por Variáveis de Ambiente. Vai na aba Avançado, depois Variáveis de Ambiente... Em variáveis de usuário procurar por PATH e apertar em editar. Vai em novo e colar o seguinte endereço.
    > C:\src\flutter\bin  

    Depois disso só apertar em OK, OK, OK ....

4. Configurar editor  
Atualmente existem vários editores que você pode estar utilizando, mas irei te mostrar como configurar alguns deles:  
    * Android Studio e [IntelliJ IDEA](https://www.jetbrains.com/pt-br/idea/):  
    Basta você ir em Plugins e na aba Marketplace pesquisar por Flutter e apertar no botão para instalar.
    * [Visual Studio Code](https://code.visualstudio.com/)  
    Você pode apertar **Ctrl + Shift + X**, que ele irá te redirecionar para as extensões da IDEA. Daí basta pesquisar por Flutter e instalar o plugin.

5. Verificando instalação  
Depois de instalar tudo, abra o terminal e digite o seguinte comando:
    ```
    flutter doctor  
    ```
    Ele vai verificar se está tudo ok. Provavelemente ele irá pedir para aceitar as licenças do Android SDK. Para isso basta digitar:
    ```
    flutter doctor --android-licenses  
    ```
__Caso tenha algum problema na instalação, tem a [documentação](https://docs.flutter.dev/get-started/install/windows) completa do Flutter onde explica passo a passo mais detalhado.__

# Como Rodar (via terminal) <a name="Como-Rodar"></a>
1. Clonar o repositório:  
    ```
    git clone https://github.com/GabrielPivoto/Calculadora_IMC.git
    ```
2. Instalar todas as dependências necessárias: 
    ```
    flutter pub get
    ```
3. Rodar o aplicativo mobile pelo navegador:
    ```
    flutter run
    ```
4. Escolha o navegador que irá rodar a aplicação, digitando o valor correspondente.

# Como Testar (via terminal) <a name="Como-Testar"></a>
1. Gerar todos os códigos necessários:  
    ```
    flutter pub run build_runner build
    ```
2. Executar os testes:
    ```
    flutter test
    ```