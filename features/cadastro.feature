#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um usuário
    Posso fazer meu Cadastro
    Para poder anunciar o meu carro

    # Definições do P.O.
    # Nome completo do usuário
    # Email do usuário
    # Senha do usuário
    # Senha deve ter no mínimo 6 caracteres

    Cenário: Cadastro simplificado

        # BDD
        Dado que meu nome completo é "Luis Leite"
        E meu email é "luis@mail.com"
        E minha senha será "123456"
        Quando faço meu cadastro
        Então sou autenticado automaticamente

    Cenário: Email incorreto

        Dado que meu nome completo é "Luis Leite"
        E meu email é incorreto
        E minha senha será "111111"
        Quando faço meu cadastro
        Então devo ver a mensagem "Email incorreto."

    Cenário: Senha com menos de 6 caracteres

        Dado que meu nome completo é "Luis Leite"
        E meu email é válido
        E minha senha será "12345"
        Quando faço meu cadastro
        Então devo ver a mensagem "Senha deve conter no mínimo 6 caracteres."

    Cenário: Nome em branco

        Dado que meu nome completo é ""
        E meu email é válido
        E minha senha será "12345"
        Quando faço meu cadastro
        Então devo ver a mensagem "Nome deve ser preenchido."

    Cenário: Email em branco

        Dado que meu nome completo é "Luis Leite"
        E meu email é ""
        E minha senha será "12345"
        Quando faço meu cadastro
        Então devo ver a mensagem "Email deve ser preenchido."

    Cenário: Senha em branco

        Dado que meu nome completo é "Luis Leite"
        E meu email é "luis@mail.com"
        E minha senha será ""
        Quando faço meu cadastro
        Então devo ver a mensagem "Senha deve ser preenchida."