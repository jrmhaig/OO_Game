# frozen_string_literal: true

RSpec.shared_examples 'a framework factory' do
  subject { described_class.new }

  it { is_expected.to respond_to(:window).with_keywords(:width, :height, :title) }
end
