assert = require 'power-assert'

describe 'Sample Test', ->
    it 'Test 1', ->
        assert 1 + 1, 2

    it 'Test 2', ->
        assert.notEqual 1 + 1, 3
