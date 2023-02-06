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
    end
  end
end