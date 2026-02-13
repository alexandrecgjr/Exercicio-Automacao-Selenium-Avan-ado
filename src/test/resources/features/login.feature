# language: pt

  @login
  Funcionalidade: Login
    Eu como usuário do sistema
    Quero fazer login
    Para fazer uma compra no site

    Contexto: Acesso a tela de login
      Dado que estou na tela de login

    @login-sucesso
    Cenário: Login com sucesso
      Quando preencho login "alexandre@teste.com" e senha "123456"
      E clico em Login
      Então vejo mensagem de login com sucesso

    @login-invalido
    Esquema do Cenario: Validar : <name>
      Quando preencho login "<user>" e senha "<password>"
      E clico em Login
      Então vejo mensagem "<message>" de campo não preenchido

      Exemplos:
      | user                    | password | message                     | name                      |
      | emailinvalido           | 123456   | E-mail inválido.            | E-mail inválido           |
      |                         | 123456   | E-mail inválido.            | E-mail vazio              |
      | alexandre@teste.com     | 000      | Senha inválida.             | Senha inválida            |
      | alexandre@teste.com     |          | Senha inválida.             | Senha vazia               |
