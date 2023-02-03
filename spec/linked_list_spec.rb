require "./lib/node"
require "./lib/linked_list"

RSpec.describe Node do
  let(:list) { LinkedList.new }
  let(:node) { Node.new("plop") }

  describe "#initialize" do
    it 'exists' do
      expect(list).to be_an_instance_of(LinkedList)
    end

    it 'has attributes' do
      expect(list.head).to eq(nil)
    end
  end

  describe "#append" do
    it 'can add a node to the list' do
      list.append("doop")

      expect(list.head.data).to eq("doop")
    end
  end
end