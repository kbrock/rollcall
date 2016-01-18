module ApplicationHelper
  def show_errors(model)
    if model.errors.any?
      html_message = ""
      html_message << %{<div class="alert alert-danger alert-dismissible" role="alert">}
      html_message << %{<button type="button" class="close" data-dismiss="alert">}
      html_message << %{<span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>}
      html_message << "<div><p>#{pluralize(model.errors.count, "issues")}:</p><ul>"
      model.errors.full_messages.each do |message|
        html_message << "<li>#{message}</li>"
      end
      html_message << "</ul></div></div>"
      raw(html_message)
    end
  end
end
