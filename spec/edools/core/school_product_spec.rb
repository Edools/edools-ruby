require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::SchoolProduct, :vcr do
  it 'finds all school product' do
    school_products = Edools::Core::SchoolProduct.all(params: { school_id: 224 })

    expect(school_products.count).to eq 10
    expect(school_products.per_page). to eq 10
    expect(school_products.current_page). to eq 1
    expect(school_products.total_count). to eq 73
    expect(school_products.total_pages). to eq 8
  end

  it 'finds the school product' do
    school_product = Edools::Core::SchoolProduct.find(2718)

    expect(school_product.id).to eq 2718
  end

  it 'update the school product' do
    school_product = Edools::Core::SchoolProduct.find(2718)
    school_product.description = "Edools API Test"

    expect(school_product.save).to eq true
  end

  it 'create the school product' do
    school_product = Edools::Core::SchoolProduct.new()
    school_product.prefix_options[:school_id] = 224
    school_product.title = 'teste'

    expect(school_product.save).to eq true
  end

  it 'destroy the school product' do
    school_product = Edools::Core::SchoolProduct.find(2718)
    expect(school_product.destroy.code).to eq '204'
  end
end
