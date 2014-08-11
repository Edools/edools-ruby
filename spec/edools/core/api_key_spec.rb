require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::ApiKey, :vcr do
  it 'finds the api key' do
    api_key = Edools::Core::ApiKey.find("secret:token")

    expect(api_key.token).to eq "token"
    expect(api_key.secret).to eq "secret"
    expect(api_key.permissions.count).to eq 1
  end
end
