require 'rails_helper'

RSpec.describe StringCalculatorService do
  describe '.add' do
    it { expect(described_class.add("")).to eq(0) }
    it { expect(described_class.add("1")).to eq(1) }
    it { expect(described_class.add("1,2")).to eq(3) }
    it { expect(described_class.add("1\n2,3")).to eq(6) }
  end
end
