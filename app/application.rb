class Application

  def call(env)
    resp = Rack::Response.new
    
    if (morning..noon).cover? now 
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end 
