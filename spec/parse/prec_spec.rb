RSpec.describe Parse::Prec do
  it "has a version number" do
    expect(Parse::Prec::VERSION).not_to be nil
  end

  it "reads from the stdio if no filename" do
    expect(false).to eq(true)
  end
end
