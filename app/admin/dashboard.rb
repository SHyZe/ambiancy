ActiveAdmin.register_page "Dashboard" do
	menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

	content title: proc { I18n.t("active_admin.dashboard") } do
		# div class: "blank_slate_container", id: "dashboard_default_message" do
		#   span class: "blank_slate" do
		#     span I18n.t("active_admin.dashboard_welcome.welcome")
		#     small I18n.t("active_admin.dashboard_welcome.call_to_action")
		#   end
		# end
		
		section "Recent post", :priority => 1 do
			table_for Post.order("id desc").limit(2) do
				column :id
				column :title do |post|
					link_to post.title,[:admin, post]
				end
				column :content
				column :comment_posts
			end
		end

		section "Recent product", :priority => 2 do
			table_for Product.order("id desc").limit(2) do
				column :id
				column :name do |product|
					link_to product.name,[:admin, product]
				end
				column :description
				column :comment_products
			end
		end

		# Here is an example of a simple dashboard with columns and panels.
		#
		# columns do
		#   column do
		#     panel "Recent Posts" do
		#       ul do
		#         Post.recent(5).map do |post|
		#           li link_to(post.title, admin_post_path(post))
		#         end
		#       end
		#     end
		#   end

		#   column do
		#     panel "Info" do
		#       para "Welcome to ActiveAdmin."
		#     end
		#   end
		# end
	end # content
end