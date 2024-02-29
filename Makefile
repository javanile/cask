
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

test-ssh: build
	@bash tests/bare/ssh-test.sh
