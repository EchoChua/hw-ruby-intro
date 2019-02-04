class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  	def initialize(isbn, price)
  		raise ArgumentError,
  			"Illegal argument" if isbn.empty?  or price <= 0
  		@isbn = isbn
  		@price = price
  	end
  	def price_as_string
  		printf("$%0.2f", @price)
  	end
end

b = BookInStock.new("1234567", 33.95)
puts b.price_as_string
