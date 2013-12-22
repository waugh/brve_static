class << self
  attr_accessor :pub_date_string # a string saying the date of publication
                             # of the sections encountered.
  def dated_h2 topic
    h2 pub_date_string + " -- " + topic
  end
  attr_accessor :pub_date_stack
  def push_pub_date
    self.pub_date_stack.push pub_date_string
  end
  def pop_pub_date
    self.pub_date_string = pub_date_stack.pop
  end
end
self.pub_date_stack ||= []
