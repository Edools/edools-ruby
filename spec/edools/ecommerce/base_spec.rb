require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Ecommerce::Base do
  describe 'location' do
    it 'sets site to edools ecommerce api url' do
      expect(Edools::Ecommerce::Base.site.to_s).to eq 'https://ecommerce.edools.com'
    end
  end
end
