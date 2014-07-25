require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Student, :vcr do
  it 'finds the student' do
    student = Edools::Core::Student.find(1249)

    expect(student.id).to eq 1249
    expect(student.first_name).to eq 'Ali Ismayilov'
  end

  it 'finds all student' do
    students = Edools::Core::Student.all

    expect(students.count).to eq 5
    expect(students.first.id).to eq 1249
    expect(students.first.first_name).to eq 'Ali Ismayilov'
  end

  it 'update the student' do
    student = Edools::Core::Student.find(1249)
    student.phone = Time.now.to_i.to_s

    expect(student.save).to be_true
    expect(Edools::Core::Student.find(1249).phone).to eq student.phone
  end

  it 'create the student' do
    student = Edools::Core::Student.new(first_name: 'Teste', email: 'teste@edools.com', password: '123456', password_confirmation: '123456')
    student.phone = Time.now.to_i.to_s

    expect(student.save).to be_true
    expect(Edools::Core::Student.find(1249).phone).to eq student.phone
  end

  it 'destroy the student' do
    student = Edools::Core::Student.find(1249)
    expect(student.destroy).to be_true
  end
end
