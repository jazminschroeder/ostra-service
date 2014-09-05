require 'ostra/prediction'

describe Ostra::Prediction do
  subject(:prediction) { described_class.new }

  it 'does something' do
    expect(subject.predict('something')).to eq 'something'

  end
end
