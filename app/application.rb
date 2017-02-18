require "date"
class Application
  def call(env)
     resp = Rack::Response.new
     time = Time.now
     if time.to_s.split.fetch(1).to_i < 12

     resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
     resp.finish
   end
end
