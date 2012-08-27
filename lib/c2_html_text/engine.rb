module C2HtmlText
  class Engine < ::Rails::Engine
    isolate_namespace C2HtmlText

    initializer "register content type" do |app|
      app.config.content_types << FormattedText
    end
  end
end
