module ApplicationHelper

   def menu_principal
      # o mesmo que ["cliente", "qualificacao", "restaurante"]
      menu = %w(cliente qualificacao restaurante comentario)
      menu_principal = "<ul>"
      menu.each do |item|
         menu_principal << "<li>" + link_to(item, :controller => item.pluralize) + "</li>"
      end
      menu_principal << "</ul>"
      raw menu_principal
   end

   def comentarios(comentavel)
      comentarios = "" 
   
      if comentavel.comentarios.any?
         comentarios << render(:partial => "comentarios/comentario",
                               :collection => comentavel.comentarios)
      end
      raw comentarios
   end

   def novo_comentario(comentavel)

      raw render(:partial => "comentarios/novo_comentario",
                 :locals => {:comentavel => comentavel})   

   end

end
