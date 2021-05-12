ActiveAdmin.register Sensei do
  permit_params :email, :password, :password_confirmation, :name, :last_name, :surname, :id_type, :nationality, :id_card, :phone_number, :active

  index do
    selectable_column
    id_column
    column :email
    column :phone_number
    column :nationality
    column :active
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :last_name
      f.input :surname
      f.input :id_type, :as => :select,  :collection => ['national', 'resident', 'foreign']
      f.input :nationality
      f.input :id_card
      f.input :phone_number
      f.input :active, as: :boolean 
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
