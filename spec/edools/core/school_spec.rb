require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::School, :vcr do
  it 'finds all school' do
    schools = Edools::Core::School.all

    expect(schools.count).to eq 1
  end

  it 'finds the school' do
    school = Edools::Core::School.find(224)

    expect(school.id).to eq 224
  end

  it 'update the school' do
    school = Edools::Core::School.find(224)
    school.phone = "12345678"

    expect(school.save).to eq true
  end

  it 'create the school' do
    pending 'should use an ApiKey with Organization as realm'
    school = Edools::Core::School.new()
    school.name = "Teste"
    school.subdomain = "teste"
    school.status = "trial"

    expect(school.save).to eq true
  end

  xit 'destroy the school' do
    pending 'should use an ApiKey with Organization as realm'
    school = Edools::Core::School.find(1249)
    expect(school.destroy).to be_true
  end
end
