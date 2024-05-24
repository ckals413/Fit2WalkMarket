function CheckAddShoes() {

	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	var description = document.getElementById("description");

	
	
	// 신발 아아디 체크
	if (!check(/^ISBN[0-9]{4,11}$/, productId,
			"[신발 코드]\nISBN과 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 ISBN로 시작하세요"))
		return false;
		
	// 신발명 체크	
	if (name.value.length < 4 || name.value.length > 12) {
		alert("[신발 명]\n최소 4자에서 최대 50자까지 입력하세요");
		//name.select();
		name.focus();
		return false;
	}
	// 신발 가격 체크
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[가격]\n숫자만 입력하세요");
		//unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if (unitPrice.value < 0) {
		alert("[가격]\n음수를 입력할 수 없습니다");
		//unitPrice.select();
		unitPrice.focus();
		return false;
	} 

	// 재고 수 체크
	if (isNaN(unitsInStock.value)) {
		alert("[재고 수]\n숫자만 입력하세요");
		//unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	if (description.value.length < 80) {
		alert("[상세설명]\n최소 100자이상 입력하세요");
		//description.select();
		description.focus();
		return false;
	}
	
	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		//e.select();
		e.focus();
		return false;
	}

	 document.newShoes.submit()
}
