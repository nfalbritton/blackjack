require "spec_helper"

RSpec.describe Hand do

  let(:hand) { Hand.new(["10♦", "J♥"]) }
	let(:hand_facecards) {Hand.new(["J♦", "Q♥"])}

  describe "calculate_hand" do
    it "gives the sum of two face cards" do
      expect(hand_facecards.calculate_hand).to eq(20)
    end

  end
end 
