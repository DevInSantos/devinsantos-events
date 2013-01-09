require 'spec_helper'

feature "Home" do
  let(:devinsantos) { events(:devinsantos) }
  let(:cocento) { sponsors(:cocento) }
  let(:sala1) { rooms(:sala1) }
  let(:bruno) { speakers(:bruno) }
  let(:ruby_on_rails) { talks(:ruby_on_rails) }


  scenario "Visit home" do
    visit root_path

    expect(page).to have_selector('h2', :text => devinsantos.name)
    expect(find('.event-info__date')).to have_content I18n.l(devinsantos.date, :format => :event_html).gsub('<br>', '')

    within find('.event-info__address') do
      expect(page).to have_content devinsantos.address
      expect(page).to have_link "(ver no mapa)"
    end

    within find('ul.speakers-list') do
      # expect(page).to have_content bruno.name
      # expect(page).to have_content bruno.company
      expect(page).to have_content bruno.twitter
    end
  end
end