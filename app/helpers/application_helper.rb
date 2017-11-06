module ApplicationHelper
  def theme
    case session[:theme]
    when 'dark'
      {
        name: 'dark',
        bg: 'bg-dark',
        navbar: 'navbar-dark bg-dark',
        btn: 'btn-dark',
        text: 'text-light'
      }
    else
      {
        name: 'light',
        bg: 'bg-white',
        navbar: 'navbar-light bg-light',
        btn: 'btn-light',
        text: 'text-dark'
      }
    end
  end
end
