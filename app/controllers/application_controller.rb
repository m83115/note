class ApplicationController < ActionController::Base


<% if note.errors.any? %>
    <ul>
        <% note.errors.full_messages.each do |message| %>
            <li><%= message %></li>
        <% end %>
    </ul>
<% end %>

rescue_from ActiveRecord::RecordNotFound, with::recode_not_found
private

def record_not_found
    render file: "public/404.html", status: :not_found
end

