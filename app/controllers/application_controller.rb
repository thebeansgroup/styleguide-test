class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :styleguide_view_path

  private
  def styleguide_view_path
    gem = Gem.loaded_specs['sb-styleguide']
    if gem
      prepend_view_path "#{gem.full_gem_path}/vendor/assets/views"
    end
  end
end
