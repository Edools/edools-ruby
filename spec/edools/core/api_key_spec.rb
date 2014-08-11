require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::ApiKey, :vcr do
  xit 'finds the api key' do
    api_key = Edools::Core::Organization.find("token:secret")

    expect(api_key.id).to eq 1249
  end
end
