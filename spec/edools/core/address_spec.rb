require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Address, :vcr do
  xit 'finds the address' do
    address = Edools::Core::Address.find(1)

    expect(address.id).to eq 1
  end

  xit 'update the address' do
    address = Edools::Core::Address.find(1)
    address.street = "Abc 2"

    expect(address.save).to eq true
  end

  it 'create the address' do
    address = Edools::Core::Address.new()
    address.prefix_options[:student_id] = 1024
    address.street      = 'Abc'
    address.number      = 123
    address.complement  = 'Cde'
    address.city        = 'Nikiti'
    address.state       = 'RJ'
    address.zip_code    = '24210000'
    address.district    = 'Saint Rose'

    expect(address.save).to eq true
  end

  xit 'destroy the address' do
    address = Edools::Core::Address.find(1)
    expect(address.destroy.code).to eq '204'
  end
end
