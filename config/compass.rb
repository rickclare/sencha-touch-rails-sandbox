# This configuration file works with both the Compass command line tool and within Rails.
# Require any additional compass plugins here.
project_type = :rails

# Set this to the root of your project when deployed:
http_path = "/"

# Set sass_dir to a 'dummy' path, as we aren't using compass to compile scss 
sass_dir = 'dummy_dir'
css_dir   = 'tmp/compass'
images_dir = 'public/compass_images'
http_images_path = '/compass_images'

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = 
  begin
    Rails.env.development? ? :expanded : :compressed
  rescue NameError
    # Running outside of Rails (e.g. 'compass watch'), therefore assume Development env
    :expanded
  end

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass app/stylesheets scss && rm -rf sass && mv scss sass
