class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      name = req.path.split("/items/").last
      if @@items.include?(name)
        item = @@items.find{|i| i.name == name}
        resp.write item.price
      else
        
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
