# Edge to X OAuth token capture Shared Flow

The pingstatus-v1 proxy used in [OAuth V2 Proxy for Client Credentials and Password Grant Types](https://github.com/kurtkanaskie/oauth-demo-mock-idp-protected-resource) 
example is modified to use 
The Shared Flow "adopt-oauth-token-v1" used with [pingstatus-oauth-v1](../pingstatus-oauth-v1/README.md)."

## All at once
Create proxy, product and app (only do app once since keys are used as the IdP keys in config for oauth-v1 proxy)
```
export PROFILE=test
mvn -P $PROFILE -Dbearer=$(gcloud auth print-access-token) install
```

