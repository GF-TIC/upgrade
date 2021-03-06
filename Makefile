.PHONY: install-dev test check-cs

DEV_DEPENDENCIES = cakephp/cakephp:^4.0 \
  cakephp/cakephp-codesniffer:^4.0 \
  mikey179/vfsstream:^1.6 \
  phpunit/phpunit:^9.3

install-dev:
	composer require --dev $(DEV_DEPENDENCIES)

test: install-dev
	composer test

check-cs: install-dev
	composer cs-check
