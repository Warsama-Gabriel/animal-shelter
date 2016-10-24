require 'spec_helper'

describe Animal do

  before :each do
    @animal = Animal.new("Tiny", 3, "male", "cat")
    @animal.toys << "mice" << "string"
  end

  describe "#new" do
    it "takes four parameters and returns an Animal object" do
      expect(@animal).to be_an_instance_of(Animal)
    end
  end

  describe ".name" do
    it "has a name" do
      expect(@animal.name).to eq("Tiny")
    end
  end

  describe ".age" do
    it "has an age" do
      expect(@animal.age).to eq(3)
    end
  end

  describe ".gender" do
    it "has a gender" do
      expect(@animal.gender).to eq("male")
    end
  end

  describe ".species" do
    it "has a species" do
      expect(@animal.species).to eq("cat")
    end
  end

  describe "#toys" do
    it "has multiple toys" do
      expect(@animal.toys).to eq(['mice', 'string'])
    end
  end

  describe ".to_s" do
    it "prints the Animals object's attributes in a sentence" do
      expect(@animal.to_s).to match("Tiny is a 3 year old male cat that loves mice, string")
    end
  end


end