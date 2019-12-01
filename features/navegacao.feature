Feature: Navegacao
  Acessar o site https://www.inmetrics.com.br/
  Navegar no site Carreiras e clicar no botão “confira nossas vagas”.

Background:
  Given I am at Inmetrics website homepage
  When I click in the Carreiras header link
  Then I will see the 'confira nossas vagas' link


  Scenario: Go to Inmetrics careers website
    When I click on 'confira nossas vagas'
    Then I'll be redirected to the careers website
    And I'll be able to see the 'Fazer login como candidato' message