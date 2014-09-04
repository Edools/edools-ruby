require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Session, :vcr do
  let(:student) { Edools::Core::Student.find(1023) }
  let(:session) { Edools::Core::Session.new(user: { email: student.email, password: 'edools1234' }, realm: { id: 224, type: 'School' }) }

  it 'create the session' do
    expect(session.save).to eq true
    expect(session.credentials).to_not eq nil
  end

  it 'destroy the session' # is done destroying the api key created on session creation
end
