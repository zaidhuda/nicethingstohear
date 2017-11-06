class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :initialize_meta_tags

  def initialize_meta_tags
    set_meta_tags site: I18n.t('app.name'),
                  reverse: true,
                  separator: '-',
                  description: I18n.t('app.description')
  end
end
