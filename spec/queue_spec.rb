require_relative '../queue'
require 'thread'

describe 'Queue' do
  it 'launch example' do
    data = [
      {counter: 1, action: "My Object"},
      {counter: 2, action: "My Object"},
      {counter: 3, action: "My Object"},
      {counter: 4, action: "My Object"},
      {counter: 5, action: "My Object"}
    ]

    queue = OwnQueue.new(data)
    queue.init_threads
    puts '********Threads initialized*******'
    queue.start

    expect(true).to be true
  end

end
