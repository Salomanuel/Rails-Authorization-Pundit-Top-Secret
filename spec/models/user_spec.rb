# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  it "extracts out domain from email" do
    user = User.new(email: "sue@spacex.com", password: "password")
    expect(user.domain).to eq("spacex.com")

    user = User.new(email: "bob@apple.com", password: "password")
    expect(user.domain).to eq("apple.com")
  end
end
