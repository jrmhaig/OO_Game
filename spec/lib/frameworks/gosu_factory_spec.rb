# frozen_string_literal: true

require 'frameworks/gosu_factory'
require 'lib/frameworks/shared_examples'

RSpec.describe Frameworks::GosuFactory do
  subject(:factory) { described_class.new }

  it_behaves_like 'a framework factory'

  describe '#window' do
    subject { factory.window(width: 800, height: 800, title: 'Test game') }

    it { is_expected.to be_a(Frameworks::GosuElements::Window) }
  end
end
