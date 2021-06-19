<h1 id="api-client">Client</h1>

## Retrieves the list of features for the given identity.

> Code samples

```http
GET /features HTTP/1.1

Accept: application/json
identity: [object Object]

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'identity' => '[object Object]',
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
  'Accept': 'application/json',
  'identity': {
  "identity_id": "string",
  "payload": {}
}
}

r = requests.get('/features', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json',
  'identity':{
  "identity_id": "string",
  "payload": {}
}
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
        "identity": []string{"[object Object]"},
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
  -H 'Accept: application/json' \
  -H 'identity: [object Object]'

```

`GET /features`

Retrieves the list of features for the given identity.

<h3 id="retrieves-the-list-of-features-for-the-given-identity.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|identity|header|[Identity](#schemaidentity)|true|Identifier of the Request|

> Example responses

> 200 Response

```json
[
  {
    "feature_id": "string",
    "enabled": true
  }
]
```

<h3 id="retrieves-the-list-of-features-for-the-given-identity.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieves the list of features for the given identity.|[FeatureCollection](#schemafeaturecollection)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|The specified resource was not found.|None|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieves a feature for the given feture id and identity.

> Code samples

```http
GET /features/{feature_id} HTTP/1.1

Accept: application/json
identity: [object Object]

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
    'identity' => '[object Object]',
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
  'Accept': 'application/json',
  'identity': {
  "identity_id": "string",
  "payload": {}
}
}

r = requests.get('/features/{feature_id}', headers = headers)

print(r.json())

```

```javascript

const headers = {
  'Accept':'application/json',
  'identity':{
  "identity_id": "string",
  "payload": {}
}
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
        "identity": []string{"[object Object]"},
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
  -H 'Accept: application/json' \
  -H 'identity: [object Object]'

```

`GET /features/{feature_id}`

Retrieves a feature for the given feture id and identity.

<h3 id="retrieves-a-feature-for-the-given-feture-id-and-identity.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|identity|header|[Identity](#schemaidentity)|true|Identifier of the Request|
|feature_id|path|string|true|Identifier of the Feature|

> Example responses

> 200 Response

```json
{
  "feature_id": "string",
  "enabled": true
}
```

<h3 id="retrieves-a-feature-for-the-given-feture-id-and-identity.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieves a feature for the given feture id and identity.|[Feature](#schemafeature)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|The specified resource was not found.|None|

<aside class="success">
This operation does not require authentication
</aside>

<h2 id="schemas-client">Schemas</h2>

<h3 id="tocS_Feature">Feature</h3>
<!-- backwards compatibility -->
<a id="schemafeature"></a>
<a id="schema_Feature"></a>
<a id="tocSfeature"></a>
<a id="tocsfeature"></a>

```json
{
  "feature_id": "string",
  "enabled": true
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|feature_id|string|false|none|none|
|enabled|boolean|false|none|none|

<h3 id="tocS_FeatureCollection">FeatureCollection</h3>
<!-- backwards compatibility -->
<a id="schemafeaturecollection"></a>
<a id="schema_FeatureCollection"></a>
<a id="tocSfeaturecollection"></a>
<a id="tocsfeaturecollection"></a>

```json
[
  {
    "feature_id": "string",
    "enabled": true
  }
]

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[Feature](#schemafeature)]|false|none|none|

<h3 id="tocS_Identity">Identity</h3>
<!-- backwards compatibility -->
<a id="schemaidentity"></a>
<a id="schema_Identity"></a>
<a id="tocSidentity"></a>
<a id="tocsidentity"></a>

```json
{
  "identity_id": "string",
  "payload": {}
}

```

#### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|identity_id|string|true|none|none|
|payload|object|false|none|none|

