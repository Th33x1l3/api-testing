Feature: Get Current Weather info

  Scenario: Get Current Weather
    When I get current Weather Info
    Then I check info values


  Scenario Outline: Get current weather for some cities
    When I get current weather info for cities
      | city         | country        |
      | <city_value> | <country_code> |
    Then I check info values

    Examples:
      | city_value | country_code |
      | Porto      | pt           |
      | Lisboa     | pt           |
      | London     | uk           |
      | New York   | us           |


  Scenario: Get Forecast for specific city
    When I get weather forecast for city
      | city   | country |
      | Lisboa | pt      |
    Then I check info values