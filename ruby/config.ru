require File.expand_path('../vendor/bundle/bundler/setup', __FILE__)
require 'sinatra'

class Product < Struct.new(:name)
end

$products = []

get '/' do
  erb :index
end

post '/groceries' do
  name = params['product_name']
  $products.push Product.new(name)
  redirect to '/'
end


run Sinatra::Application

__END__

@@index
<html>
<title>My grocery list</title>
<body>
  <h1>Grocery List</h1>
  <ul>
    <% $products.each do |p| %>
    <li><%= p.name %></li>
    <% end %>
  </ul>
  <form method="POST" action="/groceries">
    <input type="text" name="product_name" autofocus/>
    <button>Add it</button>
  </form>
</body>
</htm>
