require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::SchoolProduct, :vcr do
  xit 'finds the school product' do
    schoolproduct = Edools::Core::SchoolProduct.find(1249)

    expect(schoolproduct.id).to eq 1249
  end

  xit 'finds all school product' do
    schoolproducts = Edools::Core::SchoolProduct.all

    expect(schoolproducts.count).to eq 5
  end

  xit 'update the school product' do
    schoolproduct = Edools::Core::SchoolProduct.find(1249)
    schoolproduct.phone = Time.now.to_i.to_s

    expect(schoolproduct.save).to be_true
  end

  xit 'create the school product' do
    schoolproduct = Edools::Core::SchoolProduct.new()

    expect(schoolproduct.save).to be_true
  end

  xit 'destroy the school product' do
    schoolproduct = Edools::Core::Schoolproduct.find(1249)
    expect(schoolproduct.destroy).to be_true
  end
end
