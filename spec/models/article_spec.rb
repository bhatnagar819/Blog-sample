require "rails_helper"

RSpec.describe Article, :type => :model do
  it "orders by text" do
    any_text = Article.create!(title: "Ankit", text: "any")
    other_text = Article.create!(title: "Bhatnagar", text: "bhatnagartext")

    expect(Article.ordered_by_text).to eq([any_text, other_text])
  end
end
