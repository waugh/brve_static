# Specific to web site.

$env.title                  = "Bill of Rights for Voting Equality"
$env.home                   = "http://jackwaugh.com/"
$env.administrivia_color    = $env.reading_color
$env.frame_background_color = "#00aa2b"
$env.identity_text_color    = "#000"
$env.outer_border_color     = "#fff"
$env.background_image       = ""
# "background-image:url('img/cabbage.jpg');"
$env.nav_first = nil
# lambda { a "Resume",
# :href => "http://jackwaugh.com/jobhunt/" }
$env.nav_rest = []
$env.src_home_path = "../.." # reflects depth of what dir?
class << $env
  def tag *args, &y
    parent.tag *args, &y
  end
  def emit_emblem
    tag :img, :src =>
      "https://d22r54gnmuhwmk.cloudfront.net/photos/1/rg/dn/" +
      "dyRGDnHfdnKNjVQ-800x450-noPad.jpg?1423803260",
      :style => "max-width: 100%"
  end
  if false
    def emit_emblem
      tag :img, :src => "img/self_2010-01_thumb.jpg",
        :class => "emblem"
    end
  end
end
