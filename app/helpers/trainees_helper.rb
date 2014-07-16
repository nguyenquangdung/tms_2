module TraineesHelper
	def gravatar_for(trainee)
    gravatar_id = Digest::MD5::hexdigest(trainee.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: trainee.name, class: "gravatar")
  end
end
