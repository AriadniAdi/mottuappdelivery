# mottudeliveryapp

MVP de arquitetura modular com testes. 

# Para gerar um novo package:
- Em: dependencies No pubspec.yaml insira o nome da sua package e a path que ela pertence. Como no exemplo:

dependencies:

 mottu_app_components:
 
 path: packages/mottu_app_components
    
    
- Depois rode no terminal o comando: ``flutter create --template=package yourpackagename``

# Para gerar os mocks:
 flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

# Para atualizar os screenshots existentes para futura comparação:
- rode no terminal: ``flutter test --update-goldens``

Importante: Os screenshots foram gerados num macOs. Se forem rodados em uma máquina linux. Vai falhar.

# Para rodar os testes:
- rode no terminal: ``flutter test``

Na pasta de tests do package você poderá visualizar as evidencias dos testes de screenshot.
