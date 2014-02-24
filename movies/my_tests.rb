#encoding: utf-8
require	'rspec'

describe "My aplicación" do
    it "does true truthy" do
        expect(true).to eq(true)
    end

    it "subtract of two numbers" do
        expect(4-1).to eq(3)
    end

    it "multiply of two numbers" do
        expect(1*1).to eq(1)
    end
end