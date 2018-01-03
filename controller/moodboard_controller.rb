require 'unsplash'

class MoodboardController


  def initialize
  	Unsplash.configure do |config|    
  		config.application_id     = "33989def78c9239d28d5d8f50118555ddd8a00e0fb201a9f91e67575d11164b0"    
  		config.application_secret = "6ce7e71ea128caa47610d8be7ea3bad0299cf82e6c43e215bf22536e8ad66e9a"
  		config.application_redirect_uri = "https://urn:ietf:wg:oauth:2.0:oob"
  		config.utm_source = "moodboard"
    end
  end

  def get_cats
  	cats = Unsplash::Photo.search("cats")
    cats
  end

end
