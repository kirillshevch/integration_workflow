RSpec.describe IntegrationWorkflow do
  it 'should execute steps and actions in the correct order' do
    order = []

    workflow = IntegrationWorkflow.new do
      step 'Step 1' do
        action 'Action 1' do
          order << 1
        end
      end

      step 'Step 2' do
        action 'Action 1' do
          order << 2
        end

        action 'Action 2' do
          order << 3
        end
      end
    end

    workflow.run

    expect(order).to eq([1, 2, 3])
  end

  it 'should provide accessible options in actions' do
    workflow = IntegrationWorkflow.new(key: 'value') do
      step 'Step 1' do
        action 'Action 1' do
          puts options[:key]
        end
      end
    end

    expect { workflow.run }.to output(/value/).to_stdout
  end
end
