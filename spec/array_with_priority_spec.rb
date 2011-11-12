require "spec_helper"

describe ArrayWithPriority do

  before do
    @a = ArrayWithPriority.new
    @a.add :highest, :priority => 1
    @a.add :high, :priority => 2
    @a.add :default
    @a << :default_2
    @a.add :low, :priority => 10
    @a.add :very_low, :priority => 1024
  end

  describe "#add" do
    describe "with a priority" do
      it "should add the element with the specified priority" do
        @a[0].should include(:highest)
        @a[1].should include(:high)
        @a[3].should include(:low)
        @a[4].should include(:very_low)
      end
    end
    describe "without a priority" do
      it "should add the element with default priority" do
        @a[2].should include(:default)
      end
    end
  end

  describe "#<<" do
    it "should add the element with default priority" do
      @a[2].should include(:default_2)
    end
  end

  describe "#method_missing" do
    describe "with no arguments" do
      it "should proxy to Array successfully" do
        @a.first.should == [:highest]
      end
    end
    describe "with arguments" do
      it "should proxy to Array successfully" do
        @a.first(2).should == [[:highest], [:high]]
      end
    end
    describe "with a block" do
      it "should proxy to Array successfully" do
        @a.each {|x| x.should_not be_nil }.should == [[:highest], [:high], [:default, :default_2], [:low], [:very_low]]
      end
    end
  end

end
