class Activity
  attr_reader :name
  def initialize(name)
    @name   = name
    @number = []
  end

  def participant
    @name[:participant]
  end

  def spent
    @name[:spent]
  end

  def add
    @number << @name[:participant]
  end

end
