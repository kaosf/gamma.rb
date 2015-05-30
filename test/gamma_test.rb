require 'gamma'

class TestGamma < Test::Unit::TestCase
  def test_1
    assert { 1 == gamma(1) }
  end

  def test_2
    assert { 1 == gamma(2) }
  end

  def test_3
    assert { 2 == gamma(3) }
  end
end
