require 'spec_helper'

describe Client do

  before :each do
    @client = Client.new('Beth', 30, 'female', 3)
  end

  describe "#new" do
    it "takes four parameters and returns a Client object" do
      expect(@client).to be_an_instance_of(Client)
    end
  end

  describe ".name" do
    it "returns the name of the client" do
      expect(@client.name).to match('Beth')
    end
  end

  describe ".children" do
    it "returns the number of children" do
      expect(@client.children).to eq(3)
    end
  end

  describe ".age" do
    it "returns the age of the client" do
      expect(@client.age).to eq(30)
    end
  end

  describe ".to_s" do
    it "prints the Client object's attributes in a sentence" do
      expect(@client.to_s).to eql("Beth is a 30 year old female with 3 kids and 0 pets")
    end
  end

  describe ".display_pets" do
    it "prints names of the Client object's pets" do
      tiny = Animal.new("Tiny", 3, "male", "cat")
      franz = Animal.new("Franz", 5, "male", "cat")

      @client.pets[tiny.name.to_sym] = tiny
      @client.pets[franz.name.to_sym] = franz
      #call the animal class .to_s method
      expect(@client.display_pets).to match("Tiny is a 3 year old male cat \nFranz is a 5 year old male ")
    end
  end

end