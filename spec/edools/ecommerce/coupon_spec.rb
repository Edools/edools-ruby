require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Ecommerce::Coupon, :vcr do
  it 'finds all coupons' do
    coupons = Edools::Ecommerce::Coupon.all(params: { product_guid: 2519 })

    expect(coupons.count).to eq 1
    expect(coupons.per_page). to eq 10
    expect(coupons.current_page). to eq 1
    expect(coupons.total_count). to eq 1
    expect(coupons.total_pages). to eq 1
  end

  it 'finds the coupon' do
    coupon = Edools::Ecommerce::Coupon.find(2626)

    expect(coupon.id).to eq 2626
  end

  it 'update the coupon' do
    coupon = Edools::Ecommerce::Coupon.find(2626)
    coupon.name = "Edools API Test UPDATED"

    expect(coupon.save).to eq true
  end

  it 'create the coupon' do
    coupon = Edools::Ecommerce::Coupon.new(name: 'Edools API Test', token_type: 'autogenerated', quantity: 50, value: 50, percentual: true)

    expect(coupon.save).to eq true
  end

  it 'destroy the coupon' do
    coupon = Edools::Ecommerce::Coupon.find(3118)
    expect(coupon.destroy.code).to eq '204'
  end
end
