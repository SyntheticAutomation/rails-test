require 'spec_helper'

describe List do
  context "(empty)" do
    subject { List.new }
    it "should not be valid" do
      expect(subject.valid?).to eq(false)
    end
  end
end
