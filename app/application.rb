class Application

  def call(env)

    if req.path.match(/items/)

    else

      resp.write ""
      resp.status = 404
    end

    resp.finish

  end

end
