ActiveAdmin.register Post do
	decorate_with PostDecorator

	permit_params :title, :content, :comment_post_id, :category_post_id, :user_id
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
		column :content
		column :comment_post_id
    column :image_file_name
		column :category_post_id
		column :user_id
		actions
	end

	form title: 'Post form' do |f|
		inputs 'Details for post form' do
			input :title
			input :image
			input :content
		end
		actions
	end

end
