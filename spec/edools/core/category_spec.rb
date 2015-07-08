require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Category, :vcr do
  it 'finds all category' do
    categories = Edools::Core::Category.all

    expect(categories.count).to eq 24
  end

  it 'finds the category' do
    category = Edools::Core::Category.find(1432)

    expect(category.id).to eq 1432
  end

  it 'update the category' do
    category = Edools::Core::Category.find(1432)
    category.order = '26'

    expect(category.save).to eq true
  end

  it 'create the category' do
    category = Edools::Core::Category.new()
    category.title = 'Edools API Test'
    category.order = 25
    category.school_id = '224'

    expect(category.save).to eq true
  end

  it 'destroy the category' do
    category = Edools::Core::Category.find(1432)
    expect(category.destroy).to be_truthy
  end
end
