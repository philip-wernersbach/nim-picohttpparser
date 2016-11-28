# nim-picohttpparser
Nim binding for [picohttpparser](https://github.com/h2o/picohttpparser).

##Setup
In order to use these bindings in your program, you must install the
[picohttpparser.h](https://github.com/h2o/picohttpparser/blob/master/picohttpparser.h)
header on your machine, and link your Nim program with
[picohttpparser.c](https://github.com/h2o/picohttpparser/blob/master/picohttpparser.c).

The easiest way to do this is to:

1. Copy the [picohttpparser](https://github.com/h2o/picohttpparser) sources into your
   project sources,
2. Use the [cincludes](http://nim-lang.org/docs/nimc.html) Nim compiler flag
   to add the picohttpparser sources to the C compiler include search path,
3. And create a Nim file that uses the
   [compile pragma](http://nim-lang.org/docs/manual.html#implementation-specific-pragmas-compile-pragma)
   to compile
   [picohttpparser.c](https://github.com/h2o/picohttpparser/blob/master/picohttpparser.c).

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
