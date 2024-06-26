package com.misuldam.dto;

public class WishListItemDTO {

    private int wishlistItemId;
    private int userId;
    private int productId;
    private ProductDTO product;
    
	public int getWishlistItemId() {
		return wishlistItemId;
	}
	public void setWishlistItemId(int wishlistItemId) {
		this.wishlistItemId = wishlistItemId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public ProductDTO getProduct() {
		return product;
	}
	public void setProduct(ProductDTO product) {
		this.product = product;
	}
    
}
