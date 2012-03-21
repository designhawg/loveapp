class User < ActiveRecord::Base
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
  
end

# this is from an old application.html.erb file
# 
# <!DOCTYPE html>
# <html>
# <head>
#   <title>LoveIt.fm</title>
#   <%= stylesheet_link_tag    "application", :media => "all" %>
#   <%= javascript_include_tag "application" %>
#   <%= csrf_meta_tags %>
# </head>
# <body>
# <nav>
# <% if current_user %>
#   Welcome <%= current_user.name %>!
#   <%= link_to "Sign Out", signout_path %>
# <% else %>
#   <%= link_to "Sign in with Twitter", "/auth/twitter" %> 
# <% end %>
# </nav>
# <%= yield %>
# 
# </body>
# </html>