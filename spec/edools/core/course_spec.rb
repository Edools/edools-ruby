require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Course, :vcr do
  it 'finds the course' do
    course = Edools::Core::Course.find(12473)

    expect(course.id).to eq 12473
  end

  it 'finds all course' do
    courses = Edools::Core::Course.all
    expect(courses.count).to eq 10
    expect(courses.per_page). to eq 10
    expect(courses.current_page). to eq 1
    expect(courses.total_count). to eq 49
    expect(courses.total_pages). to eq 5
  end

  it 'update the course' do
    course = Edools::Core::Course.find(12473)
    course.description = 'Edools API test'

    expect(course.save).to be_truthy
  end

  it 'create the course' do
    course = Edools::Core::Course.new(name: 'Edools API Test')

    expect(course.save).to be_truthy
  end

  it 'destroy the course' do
    course = Edools::Core::Course.find(12473)
    expect(course.destroy).to be_truthy
  end
end
