module Session
	extend ActiveSupport::Concern


		def session_count
			#p 'Current count is ' + session[:counter].to_s
			if session[:counter].nil?
  	  			session[:counter] = 0
      end
      session[:counter] += 1

    end
      
end