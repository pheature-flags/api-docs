<p align="center">
  <img src="https://pheatureflags.io/assets/logo-trans-web.png" alt="Pheature Flags API Documentation" width="226">
</p>

<p align="justify">This repository hosts the API documentation of Pheature Flags.
It builds OpenAPI 3 specifications into a static website.
It also includes local development tools and utils using Make rules.</p>

<small>It was created with Slate. Check it out at <a href="https://slatedocs.github.io/slate">Slate Docs</a>.</small>

Generate API docs:
------------

**Please make sure you have [widdershins](https://github.com/Mermade/widdershins#to-install) installed**

Place your desired OAS3 YAML file at `source/specs/`

For example: `client.yaml`

```
make generate API=client
```

Local development
-----------------

Use the following command to launch a Docker container of the Slate image:

```
make serve
```

Visit [http://localhost:4567](http://localhost:4567) to see the changes


Customized Files
----------------

All customizations are preserved across several `make generation`s because of the use of `diff` & `patch`.

This Make rule works as long as:
1. Exist a valid spec at `source/specs/${API}.yaml`
2. `${API}` is included in the `includes:` section of `source/index.html.md`

```
includes: 
  - client
  - crud
```
