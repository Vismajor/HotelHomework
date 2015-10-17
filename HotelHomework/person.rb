class Person
  attr_accessor :name

  def initialize(options={})
    self.name = options[:name]
  end
end