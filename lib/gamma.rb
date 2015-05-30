require "gamma/version"

def gamma(z)
  g = 7
  p = [
    0.99999999999980993,
    676.5203681218851,
    -1259.1392167224028,
    771.32342877765313,
    -176.61502916214059,
    12.507343278686905,
    -0.13857109526572012,
    9.9843695780195716e-6,
    1.5056327351493116e-7,
  ]

  if (z < 0.5)
    Math::PI / (Math.sin(Math::PI * z) * gamma(1 - z))
  else
    z -= 1
    x = p[0]
    for i in 1...(g + 2)
      x += p[i] / (z + i)
    end
    t = z + g + 0.5
    Math.sqrt(2 * Math::PI) * (t ** (z + 0.5)) * Math.exp(-t) * x
  end
end
