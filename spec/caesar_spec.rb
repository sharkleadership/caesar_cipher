require_relative '../caesar'
describe '#caesar_cipher' do
  context 'when shift offset is low' do
    it 'shifts forward (a -> b)' do
      output = caesar_cipher('Hello', 5)
      expect(output).to eq('Mjqqt')
    end
  end

  context 'when shift offset is high' do
    it 'shifts properly' do
      output = caesar_cipher('Hello', 84)
      expect(output).to eq('Nkrru')
    end
  end

  context 'when shift offset is negative' do
    it 'shifts backward (b -> a)' do
      output = caesar_cipher('Sound', -5)
      expect(output).to eq('Njpiy')
    end
  end

  context 'when given a shift of 0' do
    it 'outputs the input phrase' do
      output = caesar_cipher('Goldenrod', 0)
      expect(output).to eq('Goldenrod')
    end
  end

  context 'when encoding multiple words' do
    it 'outputs correctly' do
      output = caesar_cipher('Banana train', 2)
      expect(output).to eq('Dcpcpc vtckp')
    end
  end

  context 'when given non-Latin characters or symbols' do
    it 'shifts only Latin characters' do
      output = caesar_cipher('Hello, こんにちは!', 5)
      expect(output).to eq('Mjqqt, こんにちは!')
    end
  end
end
