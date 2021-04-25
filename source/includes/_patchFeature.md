# Patch Feature

This endpoint patches a specific feature.

There are four different actions:

- Enable Feature
- Disable Feature
- Add Strategy
- Remove Strategy


```http
PATCH /feature/{feature_id} HTTP/1.1
{
  "action": "add_strategy",
  "value": {
    "strategy_id": "my-first-strategy",
    "strategy_type": "STRATEGY_TYPE"
  }
}
```

```http
HTTP/1.1 202 Accepted
```

Parameter | Description
---------  | -----------
feature_id | The ID of the feature to retrieve

Action | Description
---------  | -----------
enable_feature | Enable Feature
disable_feature | Disable Feature
add_strategy | Add Strategy to Feature
remove_strategy | Remove Strategy to Feature

Value | Used in Action
---------  | -----------
strategy_id | add_strategy, remove_strategy
strategy_type | add_strategy

<aside class="notice">
Both <i>add_strategy</i> and <i>remove_strategy</i> require a `value` on the request body.
</aside>

<aside class="notice">
Only <i>add_strategy</i> requires the  <i>strategy_type</i> on the request body.
</aside>
