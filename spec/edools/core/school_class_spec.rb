require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::SchoolClass, :vcr do
  it 'finds all school class' do
    school_classs = Edools::Core::SchoolClass.all(params: { school_product_id: 156 })

    expect(school_classs.count).to eq 3
  end

  it 'finds the school class' do
    school_class = Edools::Core::SchoolClass.find(168)

    expect(school_class.id).to eq 168
  end

  it 'update the school class' do
    school_class = Edools::Core::SchoolClass.find(168)
    school_class.description = "test description"

    expect(school_class.save).to eq true
  end

  it 'create the school class' do
    school_class = Edools::Core::SchoolClass.new()
    school_class.prefix_options[:school_product_id] = 156
    school_class.title = 'teste'

    expect(school_class.save).to eq true
  end

  it 'destroy the school class' do
    school_class = Edools::Core::SchoolClass.find(168)
    expect(school_class.destroy.code).to eq '204'
  end
end
