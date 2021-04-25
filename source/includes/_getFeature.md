# Get Feature

This endpoint retrieves a specific feature.

```http
GET /features/{feature_id} HTTP/1.1
```

```http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "id": 1,
  "strategies": [
    {
      "id": "location-strategy",
      "payload": {
        "location": "barcelona"
      }
    }
  ],
  "isEnabled": true
}
```

Parameter | Description
---------  | -----------
feature_id | The ID of the feature to retrieve
