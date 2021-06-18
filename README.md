## Documentação
----
----

Possui usuario master.

Usuario Master:

email: master@email.com

password: 123456

#### Setup

```
bundle install
rake db:create db:migrate db:seed
```

### Credenciais

    EDITOR=nano rails credentials:edit
    
### Exemplo credentials
    ````shell script
    development:
      database:
        user: postgres
        password: postgres
    test:
      database:
        user: postgres
        password: postgres
    production:
      database:
        user: postgres
        password: senha_forte