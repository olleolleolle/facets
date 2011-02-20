module Kernel

  # Y-combinator.
  #
  #  f = Y do |n, acc, &b|
  #    n < 2 ? acc : b.(n-1, n * acc) 
  #  end
  #
  #  f.call(5, 1) #=> 120
  #
  # NOTE: This is not (presently) a common core extension and is not
  # loaded automatically when using <code>require 'facets'</code>.
  #
  # CREDIT: Michael Fellinger

  def Y(*args, &block)
    y = lambda{|*args| block.call(*args, &y) }
  end

end
