activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.host = '198.20.105.55'
  deploy.branch   = 'build'
  deploy.path = '/home/deploy/muzenzaby'
  deploy.user = 'deploy'
  deploy.clean = true
  deploy.build_before = true
end

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-60570700-1'
end

activate :automatic_image_sizes

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir,  "fonts"


# Build-specific configuration
configure :development do
  set :debug_assets, true
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  # activate :asset_hash
  # activate :relative_assets
end

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
