# coding: utf-8

# RailsAdmin config file. Generated on May 23, 2012 21:11
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  require 'i18n'
  I18n.default_locale = :ru

  config.authorize_with do
    redirect_to "/" unless warden.user.admin?
  end


  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  config.audit_with :history, User

  # Or with a PaperTrail: (you need to install it first)
  #config.audit_with :paper_trail, User

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Plembook.Ru', 'Система управления']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }


  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 20

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models = [User]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = [User]

  # Application wide tried label methods for models' instances
  # config.label_methods << :description # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

  # config.model User do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer
  #     configure :email, :string
  #     configure :password, :password         # Hidden
  #     configure :password_confirmation, :password         # Hidden
  #     configure :reset_password_token, :string         # Hidden
  #     configure :reset_password_sent_at, :datetime
  #     configure :remember_created_at, :datetime
  #     configure :sign_in_count, :integer
  #     configure :current_sign_in_at, :datetime
  #     configure :last_sign_in_at, :datetime
  #     configure :current_sign_in_ip, :string
  #     configure :last_sign_in_ip, :string
  #     configure :authentication_token, :string
  #     configure :admin, :boolean
  #     configure :created_at, :datetime
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end


  config.model User do
    label 'Пользователь' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'пользователей' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
  end

  config.model Breed do
    label 'Порода' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'пород' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
  end


  config.model AdType do
    label 'Тип объявления' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Тип объявления' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
  end


  config.model CategoryOfAds do
    label 'Категория объявления' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Категория объявления' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
  end


  config.model Advertisement do
    label 'Объявление' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Объявления' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
    edit do
      field :description, :rich_editor do
        config({
                   :insert_many => true
               })
      end
    end
    create do
      field :description, :rich_editor do
        config({
                   :insert_many => true
               })
      end
    end

  end

  config.model PhotoAlbum do
    label 'Альбом' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Альбомы' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
    edit do
      field :description, :rich_editor do
        config({
                   :insert_many => true
               })
      end
    end
    create do
      field :description, :rich_editor do
        config({
                   :insert_many => true
               })
      end
    end

  end

  config.model Photo do
    label 'Фотография' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Фотографии' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
    edit do
      field :description, :rich_editor do
        config({
                   :insert_many => true
               })
      end
      field :image, :rich_picker do
        config({
                   :type => 'file',
                   :allowed_styles => [:original],
                   :view_mode => "list"
               })
      end
    end
    create do
      field :description, :rich_editor do
        config({
                   :insert_many => true
               })
      end
      field :image, :rich_picker do
        config({
                   :type => 'file',
                   :allowed_styles => [:original],
                   :view_mode => "list"
               })
      end
    end

  end

  config.model Category do
    label 'Категория' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Категории' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end


  end


  config.model Article do
    label 'Статья' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Статьи' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
    configure :category do
      # configuration here
    end
    configure :user do
      # configuration here
    end
  end


  config.model Color do
    label 'Окрас' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Окрасы' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
  end

  config.model Event do
    label 'Новость' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Новости' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
  end

  config.model Pedigree do
    label 'Родословная' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Родословные' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
  end

  config.model Rank do
    label 'Титул' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Титулов' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
  end

  config.model Traning do
    label 'Вид дрессировки' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Виды дрессировки' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
  end

  config.model Dog do
    label 'Собака' # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
    label_plural 'Собаки' # Same, plural
    weight -1 # Navigation priority. Bigger is higher.
    navigation_label # Sets dropdown entry's name in navigation. Only for parents!
    list do
      items_per_page 100 # Override default_items_per_page
      sort_by :id # Sort column (default is primary key)
      sort_reverse false # Sort direction (default is true for primary key, last created first)
                         # Here goes the fields configuration for the list view
    end
  end


end
