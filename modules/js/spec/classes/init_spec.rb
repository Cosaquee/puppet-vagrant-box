require 'spec_helper'
describe 'js' do
  context 'with default values for all parameters' do
    it { should contain_class('js') }
  end
end
