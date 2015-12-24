require 'spec_helper'
describe 'cabot' do

  context 'with defaults for all parameters' do
    it { should contain_class('cabot') }
  end
end
