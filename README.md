# nim-picohttpparser
Nim binding for [picohttpparser](https://github.com/h2o/picohttpparser).

##Usage
To use the low level picohttpparser API binding, `import picohttpparser_api`
in your program, and use `parseRequest` or `tryParseRequest`.

Converter `proc`s `toStringTableRef` and `toHttpHeaders` are provided to
convert picohttpparser's native `seq[phr_header]` header type to types that
are often used in Nim libraries.

##Todo
A high level picohttpparser API named `picohttpparser` would be nice. Patches
welcome!

##License
This project is licensed under the same license as
[picohttpparser](https://github.com/h2o/picohttpparser), which is
dual-licensed under the Perl License or the MIT License.
