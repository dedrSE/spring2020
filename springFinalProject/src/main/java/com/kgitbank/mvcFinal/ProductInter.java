package com.kgitbank.mvcFinal;

import java.util.List;

public interface ProductInter {
	//1. 전체 목록
	List<ProductDTO> list();
	
	//2. 한 개 검색
	ProductDTO select(ProductDTO productDTO);
	
	//3. 구매
	void buy(ProductDTO productDTO);
	
	//4. 장바구니
	void basket(ProductDTO productDTO);
	
}
