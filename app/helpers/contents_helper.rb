module ContentsHelper
  def md_to_html content
    RDiscount.new(content.body).to_html.html_safe
  end

  def embed uri
    return if uri.blank?
    api_response = embedly_api.oembed(url: uri)
    api_response[0].html.html_safe
  end

  private
  def embedly_api
    @embedly_api ||= Embedly::API.new
  end
end
