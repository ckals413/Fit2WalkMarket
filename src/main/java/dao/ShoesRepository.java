package dao;

import java.util.ArrayList;
import dto.Shoes;


public class ShoesRepository{
	
	
	private ArrayList<Shoes> listOfShoes = new ArrayList<Shoes>();
	
	private static ShoesRepository instance = new ShoesRepository();

	public static ShoesRepository getInstance(){
		return instance;
	} 
	
	
	public ShoesRepository() {
	
		Shoes shoes1= new Shoes("SKU1234", "Nike Air Max", 150000);
		shoes1.setBrand("Nike");
		shoes1.setDescription("나이키 에어 맥스는 러닝에 최적화된 신발로 최적의 쿠셔닝을 제공합니다. 오래 신어도 편안 신발입니다.");
		shoes1.setCategory("Running");
		shoes1.setUnitsInStock(500);
		shoes1.setReleaseDate("2023/04/01");
		shoes1.setCondition("New");
		shoes1.setColor("Black");
		shoes1.setFilename("shoes9.png");

		
		
		Shoes shoes2 = new Shoes("SKU5678", "Adidas Ultraboost", 160000);
		shoes2.setBrand("Adidas");
		shoes2.setDescription("아디다스 울트라부스트는 뛰어난 반응성과 편안함을 제공하는 러닝화입니다. 장시간 착용해도 발을 지지해줍니다.");
		shoes2.setCategory("Running");
		shoes2.setUnitsInStock(300);
		shoes2.setReleaseDate("2023/05/15");
		shoes2.setCondition("New");
		shoes2.setColor("White");
		shoes2.setFilename("shoes4.png");
		
		
		Shoes shoes3 = new Shoes("SKU1236", "HOKA bondi8", 190000);
		shoes3.setBrand("HOKA");
		shoes3.setDescription("High-performance running shoes with energy return.");
		shoes3.setCategory("Running");
		shoes3.setUnitsInStock(200);
		shoes3.setReleaseDate("2023/08/11");
		shoes3.setCondition("New");
		shoes3.setColor("White");
		shoes3.setFilename("shoes5.png");
		
		Shoes shoes4 = new Shoes("SKU1121", "New Balance 574", 130000);
		shoes4.setBrand("New Balance");
		shoes4.setDescription("뉴발란스 574는 클래식한 디자인과 편안함을 겸비한 신발입니다. 일상 생활에 적합합니다.");
		shoes4.setCategory("Casual");
		shoes4.setUnitsInStock(400);
		shoes4.setReleaseDate("2023/06/01");
		shoes4.setCondition("New");
		shoes4.setColor("Gray");
		shoes4.setFilename("shoes6.png");

		Shoes shoes5 = new Shoes("SKU3141", "Reebok Nano X1", 140000);
		shoes5.setBrand("Reebok");
		shoes5.setDescription("리복 나노 X1은 크로스핏과 트레이닝에 최적화된 신발로, 탁월한 지지력과 안정성을 제공합니다.");
		shoes5.setCategory("Training");
		shoes5.setUnitsInStock(350);
		shoes5.setReleaseDate("2023/07/20");
		shoes5.setCondition("New");
		shoes5.setColor("Blue");
		shoes5.setFilename("shoes7.png");
		
		Shoes shoes6 = new Shoes("SKU6789", "Under Armour HOVR Phantom", 170000);
		shoes6.setBrand("Under Armour");
		shoes6.setDescription("언더아머 HOVR 팬텀은 최상의 쿠셔닝과 에너지 반환을 제공하는 러닝화입니다.");
		shoes6.setCategory("Running");
		shoes6.setUnitsInStock(250);
		shoes6.setReleaseDate("2023/08/10");
		shoes6.setCondition("New");
		shoes6.setColor("Green");
		shoes6.setFilename("shoes8.png");
		
		Shoes shoes7 = new Shoes("SKU1011", "Asics Gel-Kayano 27", 155000);
		shoes7.setBrand("Asics");
		shoes7.setDescription("아식스 젤 카야노 27은 뛰어난 안정성과 쿠셔닝을 제공하는 러닝화입니다.");
		shoes7.setCategory("Running");
		shoes7.setUnitsInStock(280);
		shoes7.setReleaseDate("2023/09/15");
		shoes7.setCondition("New");
		shoes7.setColor("Yellow");
		shoes7.setFilename("shoes1.png");
		
		Shoes shoes8 = new Shoes("SKU1213", "Converse Chuck Taylor", 85000);
		shoes8.setBrand("Converse");
		shoes8.setDescription("컨버스 척 테일러는 클래식하고 스타일리시한 캐주얼 신발입니다.");
		shoes8.setCategory("Casual");
		shoes8.setUnitsInStock(150);
		shoes8.setReleaseDate("2023/10/05");
		shoes8.setCondition("New");
		shoes8.setColor("Blue");
		shoes8.setFilename("shoes10.png");
		
		Shoes shoes9 = new Shoes("SKU1415", "Vans Old Skool", 95000);
		shoes9.setBrand("Vans");
		shoes9.setDescription("반스 올드 스쿨은 스케이트보딩과 캐주얼 룩에 어울리는 신발입니다.");
		shoes9.setCategory("Casual");
		shoes9.setUnitsInStock(220);
		shoes9.setReleaseDate("2023/11/20");
		shoes9.setCondition("New");
		shoes9.setColor("Black");
		shoes9.setFilename("shoes11.png");

		Shoes shoes10 = new Shoes("SKU1617", "Brooks Ghost 14", 145000);
		shoes10.setBrand("Brooks");
		shoes10.setDescription("브룩스 고스트 14는 뛰어난 쿠셔닝과 편안함을 제공하는 러닝화입니다.");
		shoes10.setCategory("Running");
		shoes10.setUnitsInStock(300);
		shoes10.setReleaseDate("2023/12/01");
		shoes10.setCondition("New");
		shoes10.setColor("White");
		shoes10.setFilename("shoes12.png");
		
		
		listOfShoes.add(shoes1);
		listOfShoes.add(shoes2);
		listOfShoes.add(shoes3);
		listOfShoes.add(shoes4);
		listOfShoes.add(shoes5);
		listOfShoes.add(shoes6);
		listOfShoes.add(shoes7);
		listOfShoes.add(shoes8);
		listOfShoes.add(shoes9);
		listOfShoes.add(shoes10);
		
		
	}
	public ArrayList<Shoes> getAllShoes() {
		return listOfShoes;
	}
	public Shoes getShoesById(String shoesId) {
		Shoes shoesById = null;

		for (int i = 0; i < listOfShoes.size(); i++) {
			Shoes shoes = listOfShoes.get(i);
			if (shoes != null && shoes.getProductId() != null && shoes.getProductId().equals(shoesId)) {
				
				shoesById = shoes;
				break;
			}
		}
		return shoesById;
	}
	
	public void addShoes(Shoes shoes) {
		listOfShoes.add(shoes);
	}

}
