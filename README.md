# americanas

- Realizar o download do projeto
- Baixar e instalar o Ruby (https://www.ruby-lang.org/pt/downloads/)
- Baixar do chromedriver (https://chromedriver.storage.googleapis.com/index.html) e descompactar o arquivo
  - Mapear o caminho do chromedriver.exe na variável de ambiente "path" 
- Abrir um terminal, acessar o diretório raiz do projeto e executar os comandos:
  - "ruby --version", para verificar se o ruby foi instalado corretamente
  - "gem install bundler", para instalar a gem do bundler
  - "bundle install", para instalar as bibliotecas 
- Para executar o projeto, escolher um dos comandos
  - "rspec -fd", para executar Parte 1 (cadastro_spec.rb) e Parte 2 (compra_spec.rb)
  - "rspec .\spec\compra_spec.rb -fd", para executar Parte 1 (cadastro_spec.rb)
  - "rspec .\spec\compra_spec.rb -fd", para executar Parte 2 (compra_spec.rb)
