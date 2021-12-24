# frozen_string_literal: true

RSpec.shared_examples 'a window' do
  subject { described_class.new(width: 800, height: 800, title: 'Test title') }

  it { is_expected.to respond_to(:show) }
end
