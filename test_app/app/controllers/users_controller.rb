

class UsersController < ApplicationController
  def index
    token = { consumer_key: '3d6de6bce4807d3e8484efeb46ec1cf4e7140ea2', consumer_secret: 'a42c7089d9cc999db8c77fb78020ed29' }
    client = SoapboxApi::UsersPosts.new(token)
    render text: client.fetch_posts
  end
end
