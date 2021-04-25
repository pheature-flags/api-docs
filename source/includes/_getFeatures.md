# Get Features

This endpoint retrieves all features.

```http
GET /features HTTP/1.1
```

```http
HTTP/1.1 200 OK
Content-Type: application/json
[
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
  },
  {
    "id": 2,
    "strategies": [],
    "isEnabled": true
  }
]
```
