package com.java.dao;
 
import java.util.List;
 
import com.java.model.CartInfo;
import com.java.model.OrderDetailInfo;
import com.java.model.OrderInfo;
import com.java.model.PaginationResult;
 
public interface OrderDAO {
 
    public void saveOrder(CartInfo cartInfo);
 
    public PaginationResult<OrderInfo> listOrderInfo(int page,
            int maxResult, int maxNavigationPage);
    
    public OrderInfo getOrderInfo(String orderId);
    
    public List<OrderDetailInfo> listOrderDetailInfos(String orderId);
 
}