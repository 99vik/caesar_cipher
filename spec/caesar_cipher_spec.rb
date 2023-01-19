require './casear_cipher'

describe CaesarCipher do
  before { @user = CaesarCipher.new }

  describe '#translate' do
    it 'returns correct small char' do
      expect(@user.translate('a', 2)).to eql('c')
    end
    it 'returns correct large char' do
        expect(@user.translate('B', 3)).to eql('E')
      end
    it 'edge case' do
      expect(@user.translate('yZ', 3)).to eql('bC')
    end
    it 'returns correct string' do
        expect(@user.translate('Hello World!', 2)).to eql('Jgnnq Yqtnf!')
    end
    it 'works with negative shift' do
        expect(@user.translate('AC pq', -2)).to eql('YA no')
    end
    it 'works with large shift' do
        expect(@user.translate('Abc', 53)).to eql('Bcd')
    end
  end
end