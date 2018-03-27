class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if resp.path=="items"
      item = req.path.split("/items/").last
    else
      resp.write "Item Not Found"
      resp.status = 404
    end
    resp.finish
  end
end
