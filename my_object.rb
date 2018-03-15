class MyObject
  def initialize(args)
    @counter = args[:counter]
    @action = args[:action]
  end
  def show
    puts "#{@action} #{@counter}"
  end
end
