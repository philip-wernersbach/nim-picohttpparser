import std/unittest

import ../picohttpparser/api

suite "Can parse simple request":
    var httpMethod: string
    var path: string
    var minorVersion: cint
    var headers: seq[phr_header]

    parseRequest("GET /test HTTP/1.1\r\n\r\n", httpMethod, path, minorVersion, headers)

    assert(path == "/test")
