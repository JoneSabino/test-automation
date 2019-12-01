@startup
Feature: API test
  Enviar um GET para a API http://swapi.co/api/films/ e exibir o conteúdo do campo “title” de
  cada elemento da estrutura “results”. Validar o status code da resposta do serviço

  Diferencial: Ao invés de todos os títulos, exibir somente dos filmes que tenham George
  Lucas como diretor e que Rick McCallum tenha participado como produtor

  Scenario: Do a GET resquest and query for movies that has George Lucas as the director and Rick McCallum as the producer.
    Given I set GET films api endpoint
    When I make a request to get the films
    Then the API will return with status code 200
    And only the ones directed by "George Lucas" and produced by "Rick McCallum" will be shown
