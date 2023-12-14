@tag
Feature: Cliente faz saque de dinheiro como um cliente,
  Eu gostaria de sacar dinheiro em caixa eletrônico,
para que eu tenha não tenha que esperar em uma  fila de banco.

  @tag1
  Scenario: Cliente especial com saldo negativo
    Given Um cliente especial com saldo atual de -200 reais
    When for solicitado um saque no valor de 100 reais 
    Then deve efetuar o saque e atualizar o saldo para -300 reais
    And check more outcomes

  @tag2
  Scenario Outline: Cliente comum com saldo negativo 
    Given Um cliente comum com saldo atual de -200 reais
    When Solicitar um saque de 200 reais 
    Then não deve efetuar o saque e deve retornar a mensagem Saldo Insulficiente