RailsAdmin.config do |config|

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
    redirect_to main_app.root_path unless current_user.admin?
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Type do
    field :name
    field :dishes do
      associated_collection_cache_all true
      associated_collection_scope do
        Proc.new { |scope|
          scope = scope.where(type_id: nil)
        }
      end
    end
  end

  config.model Menu do
      field :date
      field :dishes do
        associated_collection_cache_all true
        associated_collection_scope do
          Proc.new { |scope|
            scope = scope.all
          }
        end
      end
      list do
        field :id
        field :date
        field :dishes
      end
    end
  config.model DishesMenu do
    include_all_fields
  end
end
