require 'rails_helper'

RSpec.describe Locale, type: :model do
  xit "can be placed inside a second locale" do
    usa = create(:locale, name: "United States of America")
    texas = create(:locale, name: "Texas", inside: usa)

    expect(texas.inside).to be usa
  end
end
