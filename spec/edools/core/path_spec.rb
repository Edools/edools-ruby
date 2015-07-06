require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Path, :vcr do
  it 'finds the path' do
    path = Edools::Core::Path.find(1008)

    expect(path.id).to eq 1008
  end

  it 'finds all path' do
    paths = Edools::Core::Path.all
    expect(paths.count).to eq 10
    expect(paths.per_page). to eq 10
    expect(paths.current_page). to eq 1
    expect(paths.total_count). to eq 20
    expect(paths.total_pages). to eq 2
  end

  it 'update the path' do
    path = Edools::Core::Path.find(1008)
    path.description = 'Edools API test'

    expect(path.save).to be_truthy
  end

  it 'create the path' do
    path = Edools::Core::Path.new(name: 'Edools API Test')

    expect(path.save).to be_truthy
  end

  it 'destroy the path' do
    path = Edools::Core::Path.find(1750)
    expect(path.destroy).to be_truthy
  end
end
