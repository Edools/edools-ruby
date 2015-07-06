require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::CourseModule, :vcr do
  it 'finds all course_module' do
    course_modules = Edools::Core::CourseModule.all(params: { course_id: 1566 })

    expect(course_modules.count).to eq 3
  end

  it 'finds the course_module' do
    course_module = Edools::Core::CourseModule.find(11329)

    expect(course_module.id).to eq 11329
  end

  it 'update the course_module' do
    course_module = Edools::Core::CourseModule.find(11329)
    course_module.description = 'Edools API TEST'

    expect(course_module.save).to eq true
  end

  it 'create the course_module' do
    course_module = Edools::Core::CourseModule.new()
    course_module.prefix_options[:course_id] = 1566
    course_module.name = "Teste"

    expect(course_module.save).to eq true
  end

  it 'destroy the course_module' do
    course_module = Edools::Core::CourseModule.find(11976)
    expect(course_module.destroy).to be_truthy
  end
end
