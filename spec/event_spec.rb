require 'rspec'
require './lib/person'
require './lib/craft'
require './lib/event'

RSpec.describe Event do
  before :each do
    @person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    @craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})
    @event = Event.new("Carla's Craft Connection", [@craft], [@person])
  end

  context '#initialize' do
    it 'exists' do
      expect(@event).to be_an Event
    end

    it 'has readable attributes' do
      expect(@event.name).to eq "Carla's Craft Connection"
      expect(@event.crafts).to eq [@craft]
      expect(@event.attendees).to eq [@person]
    end
  end
end
