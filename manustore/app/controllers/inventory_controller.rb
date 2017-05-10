require 'csv'
class InventoryController < ApplicationController
  def upload
	  if request.post? then
		  CSV.foreach(params[:inventory].tempfile).with_index {|row,i|
			next if i == 0
			category_name = row[1]
			product_id = row[0]
			product_name = row[2]
			product_price = row[3].to_f
			#create category if doesnt exist
			cat = Category.where(:name => category_name).first_or_create
			#create product if doesnt exist
			#byebug
			prod = Product.where(:product_id => product_id,:category_id => cat.id, :price => product_price).first_or_create
		}
		redirect_to '/categories/'
	  end
  end
end
