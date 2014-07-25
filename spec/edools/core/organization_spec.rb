require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Organization, :vcr do
  xit 'finds the organization' do
    organization = Edools::Core::Organization.find(1249)

    expect(organization.id).to eq 1249
  end

  xit 'finds all organization' do
    organizations = Edools::Core::Organization.all

    expect(organizations.count).to eq 5
  end

  xit 'update the organization' do
    organization = Edools::Core::Organization.find(1249)
    organization.phone = Time.now.to_i.to_s

    expect(organization.save).to be_true
  end

  xit 'create the organization' do
    organization = Edools::Core::Organization.new()

    expect(organization.save).to be_true
  end

  xit 'destroy the organization' do
    organization = Edools::Core::Organization.find(1249)
    expect(organization.destroy).to be_true
  end
end
