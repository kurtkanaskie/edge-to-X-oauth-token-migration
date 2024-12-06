var expiresInSeconds = context.getVariable("expires_in");
var expiresIn = Number(expiresInSeconds * 1000).toString();
context.setVariable("expires_in_ms", expiresIn);

var refreshExpiresInSeconds = context.getVariable("refresh_token_expires_in");
var refreshExpiresIn = Number(refreshExpiresInSeconds * 1000).toString();
context.setVariable("refresh_expires_in_ms", refreshExpiresIn);