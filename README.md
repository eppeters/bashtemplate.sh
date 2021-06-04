# bashtemplate.sh http://bashtemplate.sh

A wget-able, curl-able single file bash script to base all your bash scripts
on. Based on https://dev.to/thiht/shell-scripts-matter

## How to use

When you need to write a bash script, simply run:

```
curl bashtemplate.sh > mynewscript.sh
```

Then open up your new script file and start editing!

Comments inside the template should make it easy to understand and fill in according to your needs.

## Contributing

You can help contribute to make this even more useful by submitting PRs! Accepted PRs are automatically deployed.

## Features and benefits

* small file that is:
  * easy to get from anywhere with an internet connection
  * simple enough to use for really basic scripts
  * robust but obvious enough to extend if your script gets more complicated
    (it will!)
* has a built-in `--help` option that:
  * is based on comments inside the file, so it's useful to developers and
    users, and easy to add to and change
  * includes Usage, Description, Options, and Examples, sections out of the box
  * is dead-simple to print out if a user passes invalid input simply by
    calling `usage`
* has comments that help you get started
* includes standardized, easy logging functions with various levels (`INFO`,
  `ERROR`, etc.) that also log automatically to a temp file
* basic template and easy instructions for adding command line switches to your
  script
* an empty cleanup trap function that can help on uncaught errors
