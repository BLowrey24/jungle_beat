require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  let(:jb) { JungleBeat.new }

  describe "#initialize" do
    it 'exists' do
      expect(jb).to be_an_instance_of(JungleBeat)
    end

    it 'has attributes' do
      expect(jb.list).to be_a(LinkedList)
      expect(jb.list.head).to eq(nil)
    end
  end

  describe '#append' do
    it 'can add nodes to the list' do
      jb.append("deep doo ditt")

      expect(jb.list.head.data).to eq("deep")
      expect(jb.list.head.next_node.data).to eq("doo")
    end
  end
end