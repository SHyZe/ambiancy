ActiveAdmin::Editor.configure do |config|
	# config.s3_bucket = ''
	# config.aws_access_key_id = ''
	# config.aws_access_secret = ''
	# config.storage_dir = 'uploads'
	# 
	ActiveAdmin.register Post do
	  form do |f|
	    f.inputs do
	      f.input :title
	      f.input :content, as: :html_editor
	    end

	    f.buttons
	  end
	end

end
