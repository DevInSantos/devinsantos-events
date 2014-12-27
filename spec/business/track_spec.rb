require 'spec_helper'

describe Track do
  it "should order two collections by horary" do
    now = DateTime.now

    welcome = double("break", :horary => now - 5.hours)
    qualidade = double("talk", :horary => now - 4.hours)
    coffee = double("break", :horary => now - 3.hours)
    maroto = double("talk", :horary => now - 2.hours)
    bye = double("break", :horary => now - 1.hours)

    breaks_shuffled = [coffee, bye, welcome]
    talks_shuffled = [maroto, qualidade]

    track = Track.new(breaks_shuffled, talks_shuffled)

    expect(track.to_a).to eql [welcome, qualidade, coffee, maroto, bye]
  end
end
