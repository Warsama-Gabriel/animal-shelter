require 'spec_helper'

describe Shelter do

  before :each do
    @shelter = Shelter.new('HappiTails', '10 East 21st Street')
  end

  describe "#new" do
    it "takes two parameters and returns a Shelter object" do
      expect(@shelter).to be_an_instance_of(Shelter)
    end
  end

  describe ".to_s" do
    it "prints the Shelter object's attributes in a sentence" do
      expect(@shelter.to_s).to match("HappiTails shelter at 10 East 21st Street has 0 animals and 0 people")
    end
  end

  describe ".display_animals" do
    it "prints the Shelter's Animals" do
      dot = Animal.new("Dot", 2, "female", "dog")
      king = Animal.new("King", 3, "male", "cat")
      @shelter.animals[dot.name.to_sym] = dot
      @shelter.animals[king.name.to_sym] = king
      expect(@shelter.display_animals).to match("The shelter has 2 animals Dot and King.")
    end
  end

  describe ".display_clients" do
    it "prints the Shelter object's Clients" do
      client = Client.new("Beth", 30, "female", 3)
      @shelter.clients[client.name.to_sym] = client
      expect(@shelter.display_clients).to match("Beth is a 30 year old female with 3 kids and 0 pets")
    end
  end

  describe ".adopt" do
    it "takes an Animal object from a Client and adds it to the shelter" do
      client = Client.new("Beth", 30, "female", 3)
      tiny = Animal.new("Tiny", 3, "male", "cat")
      franz = Animal.new("Franz", 5, "male", "cat")

      client.pets[tiny.name.to_sym] = tiny
      client.pets[franz.name.to_sym] = franz

      @shelter.adopt(tiny)
      expect(@shelter.display_animals).to match("The shelter has 1 animal Tiny")
      expect(clients.display_pets).to match("Franz is a 5 year old male cat")
    end
  end

end