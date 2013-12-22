require "common.rb"

article "put title here" do
p do
  tag :span, "put first word here", :class => "first_word"
text <<-'!'
  and rest of first paragraph here.
!
end
p <<-'!'
  Second paragraph here.
!
p <<-'!'
  and so on.
!
end

