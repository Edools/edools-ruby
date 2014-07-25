require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Registration, :vcr do
  xit 'finds the registration' do
    registration = Edools::Core::Registration.find(1249)

    expect(registration.id).to eq 1249
  end

  xit 'finds all registration' do
    registrations = Edools::Core::Registration.all

    expect(registrations.count).to eq 5
  end

  xit 'update the registration' do
    registration = Edools::Core::Registration.find(1249)
    registration.phone = Time.now.to_i.to_s

    expect(registration.save).to be_true
  end

  xit 'create the registration' do
    registration = Edools::Core::Registration.new()

    expect(registration.save).to be_true
  end

  xit 'destroy the registration' do
    registration = Edools::Core::Registration.find(1249)
    expect(registration.destroy).to be_true
  end
end
