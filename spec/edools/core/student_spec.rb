require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Student, :vcr do
  it 'create the student' do
    student = Edools::Core::Student.new(first_name: 'Teste', email: 'teste6@edools.com', password: '123456', password_confirmation: '123456')
    expect(student.save).to eq true
  end

  it 'finds the student' do
    student = Edools::Core::Student.find(1671)
    expect(student.id).to eq 1671
    expect(student.first_name).to eq 'Teste'
  end

  it 'finds all student' do
    students = Edools::Core::Student.all
    expect(students.count).to eq 10
    expect(students.select { |s| s.id == 1671 }.first.first_name).to eq 'Teste'
  end

  it 'update the student' do
    student = Edools::Core::Student.find(1671)
    student.phone = "1406638122"
    expect(student.save).to eq true
    expect(Edools::Core::Student.find(1671).phone).to eq student.phone
  end

  it 'destroy the student' do
    student = Edools::Core::Student.find(1671)
    expect(student.destroy.code).to eq "204"
  end
end
