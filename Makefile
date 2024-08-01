
## ======
## DevOps
## ======

.DEFAULT:
	@mush $@

install:
	@mush build --release
	@mush install --path .

## ====
## Test
## ====

test-host:
	@mush run check tests/fixtures/host

test-ssh: build
	@bash tests/bare/ssh-test.sh
