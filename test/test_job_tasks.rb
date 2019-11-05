require 'minitest/autorun'
require 'app'

class TestSomething < Minitest::Test

    def test_frequency
        assert_equal ['b', 'a', 'c'], frequency(['a', 'b', 'b', 'c', 'b', 'a'])
    end

    def test_flatten
        assert_equal  ['a', 'b', 'b', 'c', 'b', 'a'], flatten(['a', ['b', 'b'], [['c', ['b']], 'a']])
    end
end