# Format a number with two decimal places
:io.format("~3.1f~n", [1.56])

# Get system environemnt variable
System.get_env("USER")

# Extension of filename
Path.extname("foo/text.exs")

# CWD
System.cwd

# Execute
System.cmd "echo", ["Hello, world!"]
