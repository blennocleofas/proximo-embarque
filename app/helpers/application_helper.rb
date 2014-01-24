module ApplicationHelper
	def create_date(date)
    # formatting date: Aug, 31 2007 - 9:55PM
    date.strftime("%d/%m/%Y - %H:%M")
  	end
  	def aniversario_face(str)
  		DateTime.strptime(str, '%m/%d/%Y').strftime("%d/%m/%Y")
  	end
    def nav_link(link_text, link_path)
      class_name = current_page?(link_path) ? 'current' : ''

      content_tag(:li, :class => class_name) do
        link_to link_text, link_path
      end
    end
  	def sexo_face(str)
  		case str
  		when "male"
  			str = "Masculino"
  		when "female"
  			str = "Feminino"
  			
  		end

  	end
    def liquidize(content, arguments)
      raw(Liquid::Template.parse(content).render(arguments))
    end
    def title(page_title, options={})
      content_for(:title, page_title.to_s)
      return content_tag(:h1, page_title, options)
    end
end
