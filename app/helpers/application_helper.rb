module ApplicationHelper
	def full_title(page_title)
		base_title = "Regis High School"
	    if page_title.empty?
	      base_title
	    else
	      "#{base_title} | #{page_title}"
	    end
	end

	def get_path(url)
		url.split('/')[-1]
	end
end
