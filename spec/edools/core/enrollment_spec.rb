require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Enrollment, :vcr do
  xit 'finds the enrollment' do
    enrollment = Edools::Core::Enrollment.find(1249)

    expect(enrollment.id).to eq 1249
  end

  xit 'finds all enrollment' do
    enrollments = Edools::Core::Enrollment.all

    expect(enrollments.count).to eq 5
  end

  xit 'update the enrollment' do
    enrollment = Edools::Core::Enrollment.find(1249)
    enrollment.phone = Time.now.to_i.to_s

    expect(enrollment.save).to be_true
  end

  xit 'create the enrollment' do
    enrollment = Edools::Core::Enrollment.new()

    expect(enrollment.save).to be_true
  end

  xit 'destroy the enrollment' do
    enrollment = Edools::Core::Enrollment.find(1249)
    expect(enrollment.destroy).to be_true
  end
end
