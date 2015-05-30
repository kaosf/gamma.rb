require "gamma/version"

def gamma(z)
  (1..(z - 1)).reduce(1, &:*)
end
