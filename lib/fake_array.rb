  # you'll need a splat in this class somewhere
require "pry"
class FakeArray
  include Enumerable

  attr_reader :array

  def initialize(*array)
    @array = array
  end

  def [](i)
    @array[i]
  end

  def each(&block)
    @array.each(&block)
  end
end
