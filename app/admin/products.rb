ActiveAdmin.register Product do
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
		column :title
		column :description
		column :price
    column :picture_file_name
		column :user_id
		actions
	end

	form title: 'Product form' do |f|
		inputs 'Details for product form' do
			input :name
			input :description, as: :html_editor
		end
		actions
	end

end
