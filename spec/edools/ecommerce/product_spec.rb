require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Ecommerce::Product, :vcr do
  it 'finds all product' do
    products = Edools::Ecommerce::Product.all(params: { school_id: 224 })

    expect(products.count).to eq 10
    expect(products.per_page). to eq 10
    expect(products.current_page). to eq 1
    expect(products.total_count). to eq 109
    expect(products.total_pages). to eq 11
  end

  it 'finds the product' do
    product = Edools::Ecommerce::Product.find(123)

    expect(product.id).to eq 2671
  end

  it 'update the product' do
    product = Edools::Ecommerce::Product.find(123)
    product.name = "Edools API Test UPDATED"

    expect(product.save).to eq true
  end

  it 'create the product' do
    product = Edools::Ecommerce::Product.new(name: 'Edools API Test', guid: '123', price: 0)
    product.prefix_options[:school_id] = 224

    expect(product.save).to eq true
  end

  it 'destroy the product' do
    product = Edools::Ecommerce::Product.find(123)
    expect(product.destroy.code).to eq '204'
  end
end
