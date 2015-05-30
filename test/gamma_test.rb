require 'gamma'

def assert_in_delta6(expected, actual)
  assert_in_delta expected, actual, 1e-6
end

class TestGamma < Test::Unit::TestCase
  def test_factorial
    assert_in_delta6         1, gamma( 0 + 1)
    assert_in_delta6         1, gamma( 1 + 1)
    assert_in_delta6         2, gamma( 2 + 1)
    assert_in_delta6         6, gamma( 3 + 1)
    assert_in_delta6        24, gamma( 4 + 1)
    assert_in_delta6       120, gamma( 5 + 1)
    assert_in_delta6       720, gamma( 6 + 1)
    assert_in_delta6      5040, gamma( 7 + 1)
    assert_in_delta6     40320, gamma( 8 + 1)
    assert_in_delta6    362880, gamma( 9 + 1)
    assert_in_delta6   3628800, gamma(10 + 1)
    assert_in_delta6  39916800, gamma(11 + 1)
    assert_in_delta6 479001600, gamma(12 + 1)
  end

  def test_real_factorial
    assert_in_delta6   1.1221576, gamma(0.84)
    assert_in_delta6   0.8960042, gamma(1.31)
    assert_in_delta6   1.3677936, gamma(2.54)
    assert_in_delta6   2.0185809, gamma(3.01)
    assert_in_delta6  32.5780961, gamma(5.2)
    assert_in_delta6 142.4519441, gamma(6.1)
  end
end
