require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Edools::Core::Media, :vcr do
  it 'finds all media' do
    all_media = Edools::Core::Media.all

    expect(all_media.count).to eq 10
    expect(all_media.per_page). to eq 10
    expect(all_media.current_page). to eq 1
    expect(all_media.total_count). to eq 639
    expect(all_media.total_pages). to eq 64
  end

  it 'filters by title' do
    all_media = Edools::Core::Media.all(params: { title: '~Video-teste' })

    expect(all_media.count).to eq 1
    expect(all_media.per_page). to eq 10
    expect(all_media.current_page). to eq 1
    expect(all_media.total_count). to eq 1
    expect(all_media.total_pages). to eq 1
  end

  it 'finds the media' do
    media = Edools::Core::Media.find(54344)

    expect(media.id).to eq 54344
  end

  it 'update the media' do
    media = Edools::Core::Media.find(54344)
    media.description = 'Edools API Test'

    expect(media.save).to eq true
  end

  it 'create the media' do
    media = Edools::Core::Media.new()
    media.title = "Edools API Test"
    media.type = 'Text'
    media.text = 'Edools API Test Text'

    expect(media.save).to eq true
  end

  it 'destroy the media' do
    media = Edools::Core::Media.find(54344)
    expect(media.destroy).to be_truthy
  end
end
