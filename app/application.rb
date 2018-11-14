require 'pry'

class Application

  @@items= [ ]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      search_item = req.path.split("/items/").last
      binding.pry
      if @@items.include? search_item

        resp.write @@items.find{|s| s.name == search_item}.price
      else
        resp.status = 400
        resp.write "Item not found"
      end

    else
      resp.status = 404
      resp.write "Route not found"
    end

    resp.finish

  end

end
