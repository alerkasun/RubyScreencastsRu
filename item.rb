class Item

  def initialize(args={})
    @price = args[:price]
    @weight = args[:weight]
    @name = args[:name]
  end

  attr_reader :price, :name
  attr_writer :price

  def info
    #[price, weight, name]
    #price.to_s + ", " + weight.to_s + ", " + name
    yield(price)
    yield(name)
  end
end
