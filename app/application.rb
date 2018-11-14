class Application

  @@items= [ ]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path== "/items"
      if @@items.include? item
        resp.write "**price here**"
      else
        resp.write "Item not found"
        resp.status = 404
      end
    else

      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish

  end

end
