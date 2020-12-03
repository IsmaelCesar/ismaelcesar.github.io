# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join('lib')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( my_avatar.png lattes.png lattes_white.png)
Rails.application.config.assets.precompile += %w( programming-languages-logos/src/ruby/ruby.svg 
                                                  programming-languages-logos/src/python/python.svg
                                                  programming-languages-logos/src/javascript/javascript.svg
                                                  programming-languages-logos/src/java/java.svg
                                                  programming-languages-logos/src/c/c.svg
                                                )