module ApplicationHelper
    def title
        base_title = "Collect<div>"
        if @title.nil?
        base_title
    else
        "#{base_title} | #{@title}"
    end
    end
    
    def logo
        image_tag("logo.png", :alt => "CollectDiv", :class => "round")
    end
end
