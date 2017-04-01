module ApplicationHelper

  def glyph(*names)
    content_tag :i, " ", :class => names.map{|name| "fa fa-#{name.to_s.gsub('_','-') }" }
  end

  def delimiter(number)
    number_with_delimiter(number, :delimiter => ",", :separator => ".")
  end

end
