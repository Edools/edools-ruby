require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::CourseContent, :vcr do
  it 'finds all course_content' do
    course_contents = Edools::Core::CourseContent.all(params: { course_module_id: 11329 })

    expect(course_contents.count).to eq 3
  end

  it 'finds the course_content' do
    course_content = Edools::Core::CourseContent.find(52239)

    expect(course_content.id).to eq 52239
  end

  it 'update the course_content' do
    course_content = Edools::Core::CourseContent.find(52239)
    course_content.description = 'Edools API Test'

    expect(course_content.save).to eq true
  end

  it 'create the course_content' do
    course_content = Edools::Core::CourseContent.new()
    course_content.prefix_options[:course_module_id] = 11329
    course_content.name = "Edools API Test"

    expect(course_content.save).to eq true
  end

  it 'destroy the course_content' do
    course_content = Edools::Core::CourseContent.find(52239)
    expect(course_content.destroy).to be_truthy
  end
end
