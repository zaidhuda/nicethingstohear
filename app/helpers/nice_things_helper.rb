module NiceThingsHelper
  def say_something_nice_path
    nice_thing_path NiceThing.random
  rescue ActionController::UrlGenerationError
    root_path
  end

  def nice_thing_content
    if @nice_thing.content.present?
      @nice_thing.content
    else
      "Seems like it is what is and you don't need to know more."
    end
  end
end
