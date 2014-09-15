class Image
  attr_reader :body, :url
  def initialize(body, url)
    @body = body
    @url = url
  end
  
  def url_small
    "#{@url}:small"
  end

  def url_medium
    @url
  end

  def url_large
    "#{@url}:large"
  end
end
