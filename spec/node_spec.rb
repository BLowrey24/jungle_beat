require "./lib/node"

RSpec.describe Node do
  let(:node) { Node.new("plop") }

  describe "#initialize" do
    it 'exists' do
      expect(node).to be_an_instance_of(Node)
    end

    it 'has attributes' do
      expect(node.data).to eq("plop")
    end
  end
end