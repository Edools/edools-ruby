require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Collaborator, :vcr do
  it 'create the collaborator' do
    collaborator = Edools::Core::Collaborator.new(first_name: 'Teste', email: 'collaborator+teste2@edools.com',
      password: '123456', password_confirmation: '123456', role_ids: [141])
    expect(collaborator.save).to eq true
  end

  it 'finds the collaborator' do
    collaborator = Edools::Core::Collaborator.find(87527)
    expect(collaborator.id).to eq 87527
    expect(collaborator.first_name).to eq 'Teste'
  end

  it 'finds all collaborator' do
    collaborators = Edools::Core::Collaborator.all
    expect(collaborators.count).to eq 10
  end

  it 'update the collaborator' do
    collaborator = Edools::Core::Collaborator.find(87527)
    collaborator.phone = "1406638122"
    expect(collaborator.save).to eq true
    expect(Edools::Core::Collaborator.find(87527).phone).to eq collaborator.phone
  end

  xit 'destroy the collaborator' do
    collaborator = Edools::Core::Collaborator.find(87527)
    expect(collaborator.destroy.code).to eq "204"
  end
end
