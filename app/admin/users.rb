ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	index do
		column :id
		column :username
		column :email
		column :avatar_file_name
		column :pays
		column :ville
		column :telephone
		column :zipcode
		actions
	end

	form title: 'Product form' do |f|
		inputs 'Details for product form' do
			input :username
			input :email
			input :avatar
			input :pays
			input :ville
			input :telephone
			input :zipcode
		end
		actions
	end

end
