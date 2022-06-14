@AllCases
Feature: Test PET API endpoints

@TC_01
  Scenario: Create, Return and validate new Pet Record
    Given I Set Pet Service api endpoint
    When Send a POST HTTP request
    Then I receive valid HTTP response code 200
    And Return new pet record created
    And i receive valid Response body
    
@TC_02
  Scenario: Update Pet in store with PETID
    Given I Set Pet Service api endpoint
    And  Send a POST HTTP request
    When I send POST request to update name on created PETID
    And I Send GET HTTP request for PetID
    Then I receive valid HTTP response code 200
    And Updated Petname is displayed in response body
        
@TC_03
  Scenario: Get all PET records
    Given I Set Pet Service api endpoint
    When I Send GET HTTP request
    Then I receive valid HTTP response code 200
        
@TC_04
  Scenario: Get all PET records with PETID
    Given I Set Pet Service api endpoint
    When I Send GET HTTP request
    Then I receive valid HTTP response code 200
    
        
@TC_05
  Scenario: Delete Employee record
    Given I Set Pet Service api endpoint
    And  Send a POST HTTP request
    When  I Send DELETE HTTP request for created PetID
    And I Send GET HTTP request for PetID
    Then I receive valid HTTP response code 404
    And "Pet not found" message is displayed

