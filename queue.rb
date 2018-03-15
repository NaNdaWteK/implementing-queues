require 'thread'
require_relative 'my_object'

class OwnQueue

  NUM_THREADS = 1
  Thread.abort_on_exception = true

  def initialize(data)
    @queue = prepare_objects(data).inject(Queue.new, :push)
  end

  def init_threads
    @threads = Array.new(NUM_THREADS) do
      Thread.new do
        until @queue.empty?
          next_object = @queue.shift
          execute_queue(next_object)
        end
      end
    end
  end

  def start
    begin
      @threads.each(&:join)
    ensure
      puts '**************Finish**************'
    end
  end

  private

  def execute_queue(object)
    sleep 1
    object.show
  end

  def prepare_objects(data)
    objects = []
    data.each do |argument|
      objects << MyObject.new(argument)
    end
    objects
  end
end
