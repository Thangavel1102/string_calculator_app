require 'rails_helper'

RSpec.describe StringCalculatorService do
  describe '.add' do
    it { expect(described_class.add("")).to eq(0) }
    it { expect(described_class.add("1")).to eq(1) }
    it { expect(described_class.add("1,2")).to eq(3) }
    it { expect(described_class.add("1\n2,3")).to eq(6) }
    it { expect(described_class.add("//;\n1;2")).to eq(3) }

    it "raises an error for negative numbers" do
      expect { described_class.add("1,-2,-5") }.to raise_error("negative numbers not allowed -2,-5")
    end
  end
end
