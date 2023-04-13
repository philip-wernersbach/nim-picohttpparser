import std/unittest
import ../src/picohttpparser/api

suite "Simple request path is captured":
    var httpMethod: string
    var path: string
    var minorVersion: cint
    var headers: seq[phr_header]

    parseRequest("GET /test HTTP/1.1\r\n\r\n", httpMethod, path, minorVersion, headers)

    require(path == "/test")
