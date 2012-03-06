class Application < Sinatra::Base

  before do  
    @title = "Home"
  end

  helpers do 
    include Rack::Utils
    alias_method :h, :escape_html

    # Pluralize any word (2, post) (5, dice, die)
    def pluralize(n, singular, plural=nil)
      if n == 1 
        "1 #{singular}"
      elsif plural
        "#{n} #{plural}"
      else
        "#{n} #{singular}s"
      end
    end

    # Loads partial view into template. Required vriables into locals
    def partial(template, locals = {})
      erb(template, :layout => false, :locals => locals)
    end

  end

end