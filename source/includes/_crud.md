<h1 id="api-crud">CRUD</h1>

## Retrieves a specific feature

> Code samples

```http
GET /features/{feature_id} HTTP/1.1

Accept: application/json

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/features/{feature_id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/features/{feature_id}', headers = headers)

print(r.json())

```
```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/features/{feature_id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/features/{feature_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```shell
# You can also use wget
curl -X GET /features/{feature_id} \
  -H 'Accept: application/json'

```

`GET /features/{feature_id}`

Retrieves a specific feature

<h3 id="retrieves-a-specific-feature-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|feature_id|path|string|true|Identifier of the Feature|

> Example responses

> 200 Response

```json
{
  "id": "string",
  "strategies": [
    {
      "id": "string",
      "payload": {}
    }
  ],
  "isEnabled": true
}
```

<h3 id="retrieves-a-specific-feature-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieves a specific feature|[Feature](#schemafeature)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|The specified resource was not found.|None|

<aside class="success">
This operation does not require authentication
</aside>

## Creates a feature

> Code samples

```http
POST /features/{feature_id} HTTP/1.1

```

```php
<?php

require 'vendor/autoload.php';

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/features/{feature_id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```python
import requests

r = requests.post('/features/{feature_id}')

print(r.json())

```

```javascript

fetch('/features/{feature_id}',
{
  method: 'POST'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/features/{feature_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```shell
# You can also use wget
curl -X POST /features/{feature_id}

```

`POST /features/{feature_id}`

Creates a feature

<h3 id="creates-a-feature-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|feature_id|path|string|true|Identifier of the Feature|

<h3 id="creates-a-feature-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|The specified feature was created.|None|

<aside class="success">
This operation does not require authentication
</aside>

## Modifies a specific feature

> Code samples

```http
PATCH /features/{feature_id} HTTP/1.1

Content-Type: application/json

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/features/{feature_id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.patch('/features/{feature_id}', headers = headers)

print(r.json())

```

```javascript
const inputBody = '{
  "action": "enable_feature",
  "value": "strategy_id"
}';
const headers = {
  'Content-Type':'application/json'
};

fetch('/features/{feature_id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/features/{feature_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```shell
# You can also use wget
curl -X PATCH /features/{feature_id} \
  -H 'Content-Type: application/json'

```

`PATCH /features/{feature_id}`

Modifies a specific feature

> Body parameter

```json
{
  "action": "enable_feature",
  "value": "strategy_id"
}
```

<h3 id="modifies-a-specific-feature-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|feature_id|path|string|true|Identifier of the Feature|
|body|body|object|true|none|
|» action|body|string|false|none|
|» value|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» action|enable_feature|
|» action|disable_feature|
|» action|add_strategy|
|» action|remove_strategy|
|» value|strategy_id|
|» value|strategy_type|

<aside class="notice">
Both <i>add_strategy</i> and <i>remove_strategy</i> require a `value` on the request body.
</aside>

<aside class="notice">
Only <i>add_strategy</i> requires the  <i>strategy_type</i> on the request body.
</aside>

<h3 id="modifies-a-specific-feature-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|202|[Accepted](https://tools.ietf.org/html/rfc7231#section-6.3.3)|The specified feature's patch was processed.|None|

<aside class="success">
This operation does not require authentication
</aside>

## Deletes a specific feature

> Code samples

```http
DELETE /features/{feature_id} HTTP/1.1

```

```php
<?php

require 'vendor/autoload.php';

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/features/{feature_id}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```python
import requests

r = requests.delete('/features/{feature_id}')

print(r.json())

```

```javascript

fetch('/features/{feature_id}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/features/{feature_id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```shell
# You can also use wget
curl -X DELETE /features/{feature_id}

```

`DELETE /features/{feature_id}`

Deletes a specific feature

<h3 id="deletes-a-specific-feature-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|feature_id|path|string|true|Identifier of the Feature|

<h3 id="deletes-a-specific-feature-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|The specified feature was deleted.|None|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieves the list of features

> Code samples

```http
GET /features HTTP/1.1

Accept: application/json

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/features', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/features', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/features',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/features", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

```shell
# You can also use wget
curl -X GET /features \
  -H 'Accept: application/json'

```


`GET /features`

Retrieves the list of features

> Example responses

> 200 Response

```json
[
  {
    "id": "string",
    "strategies": [
      {
        "id": "string",
        "payload": {}
      }
    ],
    "isEnabled": true
  }
]
```

<h3 id="retrieves-the-list-of-features-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieves the list of features.|Inline|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|The specified resource was not found.|None|

<h3 id="retrieves-the-list-of-features-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[Feature](#schemafeature)]|false|none|none|
|» id|string|false|none|none|
|» strategies|[[Strategy](#schemastrategy)]|false|none|none|
|»» id|string|false|none|none|
|»» payload|object|false|none|none|
|» isEnabled|boolean|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

<h2 id="schemas-crud">Schemas</h2>

<h3 id="tocS_Feature">Feature</h3>
<!-- backwards compatibility -->
<a id="schemafeature"></a>
<a id="schema_Feature"></a>
<a id="tocSfeature"></a>
<a id="tocsfeature"></a>

```json
{
  "id": "string",
  "strategies": [
    {
      "id": "string",
      "payload": {}
    }
  ],
  "isEnabled": true
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string|false|none|none|
|strategies|[[Strategy](#schemastrategy)]|false|none|none|
|isEnabled|boolean|false|none|none|

<h3 id="tocS_Strategy">Strategy</h3>
<!-- backwards compatibility -->
<a id="schemastrategy"></a>
<a id="schema_Strategy"></a>
<a id="tocSstrategy"></a>
<a id="tocsstrategy"></a>

```json
{
  "id": "string",
  "payload": {}
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|string|false|none|none|
|payload|object|false|none|none|