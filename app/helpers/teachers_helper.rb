module TeachersHelper
	attr_accessor :prev_page

	def format4url(dept_name)
		dept_name.downcase.gsub(/\s+/, '-')
	end

	def format4display(dept_name)
		temp = dept_name.gsub(/[-]/, ' ')
		temp.titleize
	end

end
