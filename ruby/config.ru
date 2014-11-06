require File.expand_path('../vendor/bundle/bundler/setup', __FILE__)
require 'sinatra'

# A Product represents an item in your grocery list

class Product < Struct.new(:name, :price)
end

# An empty grocery list
$products = []

get '/' do
  erb :index
end

post '/groceries' do
  # Create a new product
  prod = Product.new

  # Read the name from the "product_name" input
  prod.name = params['product_name']

  # Add a new product to the grocery list
  $products.push prod

  # Go back to the homepage
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
