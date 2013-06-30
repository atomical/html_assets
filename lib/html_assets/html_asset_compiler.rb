module HtmlAssets
  class HtmlAssetCompiler < Tilt::Template
    include ActionView::Helpers::JavaScriptHelper

    def prepare
    end
    
    def self.default_mime_type
      'application/javascript'
    end
    
    def evaluate(scope, locals, &block)
      path = scope.logical_path
      path.sub!('html/','') if path.start_with? 'html/' 
      "window.HTML_Assets['#{path}'] = '#{escape_javascript data}'"
    end
  end
end