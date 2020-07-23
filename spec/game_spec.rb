require_relative ../lib/app/game.rb

describe "Fonction A" do
  it "should do that" do
    expect(your_fonction("datas")).to eq({ "result" })
  end
end

describe "Fontion B result" do
  result = get_...
  it "Is not nil" do
    expect(result).not_to be_nil
  end
  it "Is an array of more than 10 elements" do
    expect((result.is_a? Array) && (result.size > 10)).to be true
  end
  it "Contains string" do
    expect(result.all? { |h| h.is_a? String }).to be true
  end
end
