class Application

  @@items= [ ]

  def call(env)

    if req.path.match(/items/)
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
