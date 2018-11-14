class Application

  @@items= [ ]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path== "/items"
      if @@items.include? item
        resp.write "**price here**"
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
