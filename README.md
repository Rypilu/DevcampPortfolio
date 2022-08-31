# Devcamp Portfolio Application

> This is a Ruby on Rails 5.2.7 application that allows users to create their own portfolios.

### Features

- Real time chat engine for comments
- Blog
- Portfolio
- Drag and drop interface

### Code Example
```ruby
  def create
  @blog = Blog.new(blog_params)

  respond_to do |format|
    if @blog.save
      format.html { redirect_to @blog, notice: "Your post is now live!" }
    else
      format.html { render :new, status: :unprocessable_entity }
    end
  end
end
```