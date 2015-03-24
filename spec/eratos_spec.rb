require_relative '../eratos'

RSpec.describe Eratos do
  describe '#prime' do
    context 'with args 30' do
      subject { Eratos.new.prime(30) }
      it { should eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
    end
  end
end
