require_relative 'step'
require_relative 'action'

class IntegrationWorkflow
  attr_reader :steps, :options

  def initialize(options = {}, &block)
    @steps = []
    @options = options
    instance_exec(&block) if block_given?
  end

  def step(name, &block)
    step = Step.new(name, options, &block)
    steps << step
  end

  def run
    steps.each(&:run)
  end
end
