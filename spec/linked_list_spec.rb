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

    it 'can add multiple nodes to the list' do
      list.append("doop")
      list.append("deep")

      expect(list.head.next_node.data).to eq("deep")
    end 
  end

  describe '#count' do
    it 'returns the # of nodes in the list' do
      list.append("doop")

      expect(list.count).to eq(1)

      list.append("deep")

      expect(list.count).to eq(2)
    end
  end

  describe '#to_string' do
    it 'returns a string ' do
      list.append("doop")

      expect(list.to_string).to eq("doop")
    end

    it 'returns a string of multiple nodes together' do
      list.append("doop")
      list.append("deep")

      expect(list.to_string).to eq("doop deep")
    end
  end

  describe '#prepend' do 
    it 'can add data to the front of the list' do
      list.append("plop")
      list.append("suu")
      list.prepend("dop")

      expect(list.to_string).to eq("dop plop suu")
    end
  end

  describe '#insert' do
    it 'can insert a node into a specific index point on the list' do
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.insert(1, "woo")

      expect(list.to_string).to eq("dop woo plop suu")
    end
  end

  describe '#find' do
    it 'it can find a specific node in the list' do
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")
      
      expect(list.find(2, 1)).to eq("shi")
      expect(list.find(1,3)).to eq("woo shi shu")
    end
  end
end