
## ===
## Dev
## ===

build:
	@mush build

## ====
## Test
## ====

test-add-server:
	@mush run delete -s -f server test-server
	@mush run add server test-server
