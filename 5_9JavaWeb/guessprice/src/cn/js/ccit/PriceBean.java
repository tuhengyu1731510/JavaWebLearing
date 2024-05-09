package cn.js.ccit;

/**
 * 价格实体
 * 
 * @author shiyun
 *
 */
public class PriceBean {
	private int price;

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	public int compare(int input){
        int result=0;
        
        if(input>this.getPrice()){
                 result=1;
        }else if(input<this.getPrice()){
                 result=-1;
        }else{ result=0;
        }
        return result;
}
}
