# Test makefile for scipunch build tools

# Foo target
foo:
	echo "foo"

bar: foo
	echo "bar"

# Baz target
baz: foo bar
	echo "baz"