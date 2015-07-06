require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Lesson, :vcr do
  it 'finds all lesson' do
    lessons = Edools::Core::Lesson.all

    expect(lessons.count).to eq 10
    expect(lessons.per_page). to eq 10
    expect(lessons.current_page). to eq 1
    expect(lessons.total_count). to eq 381
    expect(lessons.total_pages). to eq 39
  end

  it 'finds the lesson' do
    lesson = Edools::Core::Lesson.find(52232)

    expect(lesson.id).to eq 52232
  end

  it 'update the lesson' do
    lesson = Edools::Core::Lesson.find(52232)
    lesson.description = 'Edools API Test'

    expect(lesson.save).to eq true
  end

  it 'create the lesson' do
    lesson = Edools::Core::Lesson.new()
    lesson.title = "Edools API Test"
    lesson.type = 'ContentLesson'

    expect(lesson.save).to eq true
  end

  it 'destroy the lesson' do
    lesson = Edools::Core::Lesson.find(52232)
    expect(lesson.destroy).to be_truthy
  end
end
