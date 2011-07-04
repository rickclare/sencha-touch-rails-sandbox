Sass::Engine::DEFAULT_OPTIONS[:load_paths].tap do |load_paths|
  load_paths << "#{Rails.root}/app/assets/stylesheets"
  load_paths << "#{Rails.root}/app/assets/images"
  load_paths << "#{Rails.root}/vendor/assets/stylesheets"
  load_paths << "#{Rails.root}/vendor/assets/images"
  load_paths << "#{Gem.loaded_specs['compass'].full_gem_path}/frameworks/compass/stylesheets"
  load_paths << "#{Gem.loaded_specs['compass'].full_gem_path}/frameworks/blueprint/stylesheets"
end

module SenchaTouch
  module SassExtensions
    module Functions
      module ThemeImages
        def theme_image(theme, path, mime_type = nil)
          path = path.value
          images_path = Rails.root.join(theme.value)
          real_path = File.join(images_path, path)
          inline_image_string(data(real_path), compute_mime_type(path, mime_type))
        end
      end
    end
  end
end

module Sass::Script::Functions
  include SenchaTouch::SassExtensions::Functions::ThemeImages
end