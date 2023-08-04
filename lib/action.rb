class Action
  attr_reader :name, :step_name, :options

  def initialize(name, step_name, options, &block)
    @name = name
    @step_name = step_name
    @options = options
    @block = block
  end

  def run
    instance_exec(&@block)
  end
end
