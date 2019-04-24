require 'rails_helper'

RSpec.describe Post, type: :model do
  

describe Post do
  fixtures :posts

  before(:each) do
    @post = Post.new
  end

end
end