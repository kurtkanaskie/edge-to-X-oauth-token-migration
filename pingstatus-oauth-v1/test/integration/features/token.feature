@intg @health
Feature: API proxy health
    As API administrator
    I want to adopt Apigee Edge tokens so I can migrated from Edge to X
    So I can minimize impact to existing applications
    
    @kurt
    Scenario: Get OAuth Access Token password
        Given I have a valid password grant access token
        When I GET /ping
        Then response code should be 200
        And response header Content-Type should be application/json
        And response body path $.apiproxy should be `apiproxy`
        And response body path $.message should be PONG

    @kurt
    Scenario: Using a valid OAuth Access Token
        Given I set authorization header to "Bearer `accessToken`"
        When I GET /status
        Then response code should be 200
        And response body path $.message should be STATUS

    @kurt
    Scenario: Get OAuth Refresh Token
        Given I have a valid refresh_token grant access token
        When I GET /ping
        Then response code should be 200
        And response body path $.message should be PONG

    @kurt
    Scenario: Using a valid OAuth Access Token
        Given I set authorization header to "Bearer `accessToken`"
        When I GET /status
        Then response code should be 200
        And response body path $.message should be STATUS
