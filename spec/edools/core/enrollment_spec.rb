require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Enrollment, :vcr do
  it 'finds all enrollment' do
    enrollments = Edools::Core::Enrollment.all(params: { student_id: 1024 })

    expect(enrollments.count).to eq 2
  end

  it 'finds the enrollment' do
    enrollment = Edools::Core::Enrollment.find(1035)

    expect(enrollment.id).to eq 1035
  end

  it 'update the enrollment' do
    enrollment = Edools::Core::Enrollment.find(1035)
    enrollment.status = 'expired'

    expect(enrollment.save).to eq true
  end

  it 'create the enrollment' do
    student = Edools::Core::Student.find(:first)

    enrollment = Edools::Core::Enrollment.new

    enrollment.registration_id = student.registrations.first.id
    enrollment.unlimited = true
    enrollment.status = 'active'

    expect(enrollment.save).to eq true
  end
end
