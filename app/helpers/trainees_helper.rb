module TraineesHelper
	def gravatar_for(trainee,options = {size: 50})
    gravatar_id = Digest::MD5::hexdigest(trainee.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: trainee.name, class: "gravatar")
  end
end
