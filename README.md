# IntegrationWorkflow

A Ruby DSL for building integration workflows

## Installation

Install the gem and add it to the application's Gemfile by executing:

Add the `integration_workflow` gem to your application's Gemfile:

```sh
gem 'integration_workflow'
```

And then execute:

```sh
bundle install
```

## Usage

To define a workflow with steps and actions, you can use the `step` and `action` methods, there are 2 options:

1. without options:

```ruby
workflow = IntegrationWorkflow.new do
  step 'Step 1' do
    action 'Action 1' do
      puts "Running #{name} in #{step_name}"
    end
  end

  step 'Step 2' do
    action 'Action 1' do
      puts "Running #{name} in #{step_name}"
    end
  end
end

workflow.run
```

2. with options:

```ruby
workflow = IntegrationWorkflow.new(user_id: '1') do
  step 'Step 1' do
    action 'Action 1' do
      puts "Running #{name} in #{step_name} with user_id: #{options[:user_id]}"
    end
  end

  step 'Step 2' do
    action 'Action 1' do
      puts "Running #{name} in #{step_name} with user_id: #{options[:user_id]}"
    end
  end
end

workflow.run
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kirillshevch/integration_workflow.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
