class HelloWorld
  def self.hello(name = nil)
    return "Hello, #{name}!" if name
    "Hello, World!"
  end
end
