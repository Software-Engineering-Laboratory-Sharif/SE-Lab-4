@tag
Feature: Calculator

Scenario: add two numbers
	Given Two input values, 1 and 2
	When I add the two values
	Then I expect the result 3

Scenario Outline: add two numbers
    Given Two input values, <first> and <second>
    When I add the two values
    Then I expect the result <result>

    Examples:
      | first | second | result |
      | 1     | 12     | 13     |
      | -1    | 6      | 5      |
      | 2     | 2      | 4      |

Scenario: multiply two numbers
	Given Two input values, 6 and 2
	When I press * key
	Then I expect the result 12

Scenario: divide two numbers
	Given Two input values, 6 and 2
	When I press / key
	Then I expect the result 3

Scenario: power two numbers
	Given Two input values, 6 and 2
	When I press ^ key
	Then I expect the result 36

Scenario Outline: two numbers with an operation
	Given Two input values, <first> and <second>
	When I press <opt> key
	Then I expect the result <result>

	Examples:
		| first | second | opt | result |
		| 6 | 3 | * | 18 |
		| 6 | 3 | / | 2 |
		| 6 | 3 | ^ | 216 |