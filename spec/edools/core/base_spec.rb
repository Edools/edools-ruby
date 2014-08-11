require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Base do
  describe 'location' do
    it 'sets site to edools core api url' do
      expect(Edools::Core::Base.site.to_s).to eq 'https://core.edools.com/'
    end
  end
end
