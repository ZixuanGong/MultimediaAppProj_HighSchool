module TeachersHelper
	def format4url(dept_name)
		dept_name.downcase.gsub(/\s+/, '-')
	end

	def format4display(dept_name)
		temp = dept_name.gsub(/[-]/, ' ')
		temp.titleize
	end

	def current_topic
		
	end
end
