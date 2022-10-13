## Generate Markdown page from a OAS3 YAML file located at `source/specs/`
# Usage:
## make generate API=crud
## make generate API=client
#
generate:
	@echo "Generating Markdown OpenAPI 3 spec from source/specs/$(API) to source/includes/_$(API)_raw.md"
	@widdershins -e ./widdershins.conf.json source/specs/$(API).yaml -o source/includes/_$(API)_raw.md
	@echo "Patching diffs to maintain customizations"
	-@diff -u source/includes/_$(API)_raw.md source/includes/_$(API).md > source/includes/diff_$(API).patch
	@patch -f -u -l source/includes/_$(API)_raw.md source/includes/diff_$(API).patch
	@echo "Replace old version"
	@rm source/includes/_$(API).md source/includes/diff_$(API).patch
	@mv source/includes/_$(API)_raw.md source/includes/_$(API).md

## Serve API Docs locally using Docker and Slate image
# You will need to reload the page when making changes to the code
# Press Ctl^C to stop the Docker container
# Usage:
## make serve
#
serve:
	@docker run --rm --name slate -p 4567:4567 -v $(CURDIR)/source:/srv/slate/source slatedocs/slate serve
