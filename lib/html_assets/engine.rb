module HtmlAssets
  class Engine < ::Rails::Engine
    config.before_initialize do |app|
      Sprockets.register_engine('.html', HtmlAssets::HtmlAssetCompiler )
    end
  end
end
