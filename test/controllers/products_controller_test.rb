require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

test "new product" do
assert_response(:success)
end

test "show product" do
assert @product
	assert_response(:success)
end


test "create product" do
assert_difference('Product.count') do
	post :create, product: {type: "new", category: "tools", title: "drill", body: "working drill", price: 30, location: "french town", email: "email@email.com", phone: 2334651}
end
end

end
