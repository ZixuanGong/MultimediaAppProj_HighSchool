module ApplicationHelper

	@@prev_page = nil

	def full_title(page_title)
		base_title = "Regis High School"
	    if page_title.empty?
	      base_title
	    else
	      "#{base_title} | #{page_title}"
	    end
	end

	def full_class_name(cla_id)
		c = Cla.find(cla_id)
		"Senior #{c.grade}-#{c.name}"
	end

	def get_prev_path
		self.prev_page.split('/')[-1]
	end

	def set_prev_page(page)
		self.prev_page=page
	end

	def prev_page=(page)
		if !page.nil?
			@@prev_page= page
		end
	end

	def prev_page
		@@prev_page
	end
end
