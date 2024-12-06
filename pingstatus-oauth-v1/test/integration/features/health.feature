@intg @health
Feature: API proxy health
	As API administrator
	I want to adopt Apigee Edge tokens so I can migrated from Edge to X
	So I can alert when it is down
    
    @get-ping-password
    Scenario: Verify the API proxy is responding
        Given I have a valid password grant access token
        When I GET /ping
        Then response code should be 200
        And response header Content-Type should be application/json
        # And response body path $.environment should be dev
        And response body path $.apiproxy should be `apiproxy`
        And response body path $.client should be ^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$
        And response body path $.latency should be ^\d{1,2}
        And response body path $.message should be PONG

    @get-status-password
    Scenario: Verify the backend service is responding
        Given I have a valid password grant access token
		When I GET /status
        Then response code should be 200
        And response header Content-Type should be application/json
        # And response body path $.environment should be dev
        And response body path $.apiproxy should be `apiproxy`
        And response body path $.basepath should be `basepath`
        And response body path $.client should be ^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$
        And response body path $.latency should be ^\d{1,2}
        And response body path $.message should be STATUS
    
    