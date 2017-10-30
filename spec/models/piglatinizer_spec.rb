describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.piglatinize("pork")).to eq("orkpackh")
    expect(words.piglatinize("I")).to eq("Itasah")
    expect(words.piglatinize("hello")).to eq("ellohackh")
    expect(words.piglatinize("please")).to eq("easeplackh")
    expect(words.piglatinize("tomorrow")).to eq("omorrowtackh")
    expect(words.piglatinize("until")).to eq("untiltasah")
    expect(words.piglatinize("this")).to eq("isthackh")
    expect(words.piglatinize("Enumeration")).to eq("Enumerationtasah")
    expect(words.piglatinize("spray")).to eq("ayspray")
    expect(words.piglatinize("prays")).to eq("ayspray")
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.to_pig_latin("i love programming")).to eq("itasah ovelackh ogrammingprackh")
  end

end
