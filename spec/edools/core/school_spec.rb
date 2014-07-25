require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::School, :vcr do
  xit 'finds the school' do
    school = Edools::Core::School.find(1249)

    expect(school.id).to eq 1249
  end

  xit 'finds all school' do
    schools = Edools::Core::School.all

    expect(schools.count).to eq 5
  end

  xit 'update the school' do
    school = Edools::Core::School.find(1249)
    school.phone = Time.now.to_i.to_s

    expect(school.save).to be_true
  end

  xit 'create the school' do
    school = Edools::Core::School.new()

    expect(school.save).to be_true
  end

  xit 'destroy the school' do
    school = Edools::Core::School.find(1249)
    expect(school.destroy).to be_true
  end
end
