class Step
  attr_reader :name, :actions, :options

  def initialize(name, options, &block)
    @name = name
    @actions = []
    @options = options
    instance_exec(&block) if block_given?
  end

  def action(name, &block)
    action = Action.new(name, self.name, options, &block)
    actions << action
  end

  def run
    # puts "Running step: #{name}"
    actions.each(&:run)
  end
end
