// Copyright 2023 The Casdoor Authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

const url = require('url')
const { SDK } = require('casdoor-nodejs-sdk');
const express = require('express');
const fs = require('fs');
const path = require('path');
const cors = require('cors')

//init sdk
const cert = `
-----BEGIN CERTIFICATE-----
MIIE3TCCAsWgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCgxDjAMBgNVBAoTBWFk
bWluMRYwFAYDVQQDEw1jZXJ0LWJ1aWx0LWluMB4XDTI0MDEyNjEyMTgyNloXDTQ0
MDEyNjEyMTgyNlowKDEOMAwGA1UEChMFYWRtaW4xFjAUBgNVBAMTDWNlcnQtYnVp
bHQtaW4wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDR0yrAbrG3SwtR
XlqVn1KY72Lu62bQ7Pf/Lk85VIIvgMDefqkHs+C/pbqn0m86/BW6wW5x+qAzD6Ty
7ISNXr4njlGAf3GV4BJ0B2Ust5d3cQPPYN6/DU0hGd8JbqSTZE1LLoK6/25AXUaO
XdcoOBkNA9jbs508d13lGRC3tqeGOX2QfrKG+paS1NToswv1ghEZsBYxtD2mrSMR
4n26YwFsFgSaLYpiG2wZW4MJJhQ+2wZdIvsvtJOtgpFVoEf2LmiSLAz2L2+dkSB7
ruv93OTVwNPfarKV8+pXGEhiLI9qepBXuzwQPyuF3fRz4b0gQalID4xad2AT5j68
am66Ieh6iRDTsEiC/xt9PwXCdQ+nytQRGPQOP2g0umCm18PRV9TUCcLmkDK8rLbX
/sbLvPDANDN1kxN43STZiGRMYit4pPhJH9fPXQuD+9u5jPbSFCveF6Y+G4vpco28
qC4N+jIGSfEZjrxj0QGmZ+8j06PvOS/3r3zMMANbX4+zYiUR1cMbsvYgcispZbdN
uAiq8Vm88g19nk+K8x08M57Y/0MAszGd2var+AFsJ9pSLICfUbGNYMLTk1jqdw8G
MDfrh2Y6P/Aba2QT+sbyuZgXryM5DK2qAzEU82L3c8arEUFPAm53qj4+fAeNyyNQ
HV489/jVCp9pQXJBUL3/++8zAKmuZwIDAQABoxAwDjAMBgNVHRMBAf8EAjAAMA0G
CSqGSIb3DQEBCwUAA4ICAQBnt00iYQJRIJfUq6CNqQxDmuDvPTxKP3tWcuNvyJcV
J8HOsVoS130pi/p5jwwIl+juS2VrIDY2JuEMgsdibcysnaW+b5Wn25aPDwhecDM9
Pq87B5IzV5vmHIVMyCJZFfBjqBfOFno3B+k2PICVJ/RjeuI5pBStzlDoiNvNBDtu
CVYwMf9oDQ92xIjnHQiqGvMb4uI0OhOtA5MEgrFLkojaT5b+mz/6eG067e68kqlp
Rhxvxv3XlBQU97gOVlOxMZrBOM88Q9GE/Z7Nigj8B5uWXsUOvWM9Ddt5MJXeTAjI
POG8Yt3GH9l4SWzG+vZNUDsPtTtNySoPWUOSubXRZTi6NQhRyQcqA3rLTYL34GAp
BjE02cW35pKKxojIgFWiFn8NUceVRO7X5L0FKLry8FmtEL2MQZH8Ud5hrBPLe9zn
TnfHmeiEbDeT3wkKCgWCKciYi60K7qe6l4zOOZfjLjlUzIseKP8/cBUyQU95CtYx
Pq36Gdhauvx+5DAy9UFKzR2OJG6sS5qxC9nAWKIGgXLpOsOfLLuTdgy6FAmdBXLj
E2eBX6ffZb1EXvllVfATmJvQuIukqwnVf5wVLNosfZ1a4Vv6IJou367lEazhXD0j
SBjzweb3cJU3cKq6kUYa3KsJwV7Pju5naisKpD/TdUwJVxK5il0v+uIsaJE+8JiF
Ng==
-----END CERTIFICATE-----
`;

const authCfg = {
  endpoint: 'http://localhost:8000',
  clientId: 'c7859770ef0e5bb1d336',
  clientSecret: '98cfc940974be1b99cacecc3f32f6a4fc8c81721',
  certificate: cert,
  orgName: 'testqualité',
  appName: 'testqualité',
}

const sdk = new SDK(authCfg);

const app = express();

app.use(cors({
  origin: 'http://localhost:9000',
  credentials: true
}))

app.get('/', (req, res) => {
  fs.readFile(path.resolve(__dirname, './index.html'), (err, data) => {
    res.setHeader('Content-Type', 'text/html');
    res.send(data);
  });
});

app.get('/api/getUserInfo', (req, res) => {
  let urlObj = url.parse(req.url, true).query;
  console.log(urlObj)
  let user = sdk.parseJwtToken(urlObj.token);
  console.log(user)
  res.send(JSON.stringify(user));
});

app.post('*', (req, res) => {
  let urlObj = url.parse(req.url, true).query;
  sdk.getAuthToken(urlObj.code).then(response => {
    console.log(response)
    const accessToken = response.access_token;
    // const refresh_token = response.refresh_token;
    res.send(JSON.stringify({ token: accessToken }));
  });
});

app.listen(8080, () => {
  console.log('Server listening at http://localhost:8080');
});
