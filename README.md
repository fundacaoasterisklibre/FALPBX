# README

## Criando Model User:
``rails g model User name:string mail:string kind:integer status:integer notes:text``

## Criando Model Queue:
``rails g model Callqueue``

## Criando Model Divice:
```rails g model Device``

## Criando Model Extension:
``rails g model Extension``

## Criando Model Voicemailbox:
``rails g model Voicemailbox``

## Criando Model Voicemail Message:
``rails g model Voicemailmessage``

## Criando o Bando e migrando:
``rails db:create``

``rails db:migrate``

## Criando autenticação:

``rails generate devise:install``
``rails generate devise User``

## Descomentar no rails_admin
``config/initializers/rails_admin.rb``
  ## == Devise ==
  ``config.authenticate_with do``
    ``warden.authenticate! scope: :user``
  ``end``
  ``config.current_user_method(&:current_user)``

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
