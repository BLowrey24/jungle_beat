class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data.split(" ").each { |data| list.append(data)}
  end

  def count
    list.count
  end
end