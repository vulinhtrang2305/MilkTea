/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import entity.Order;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author chucken
 */
public class OrderDAO extends GenericDAO<Order> {

    @Override
    public List<Order> findAll() {
        String sql = "select * from [Order]";
        parameterMap = new LinkedHashMap<>();
        return queryGenericDAO(Order.class, sql, parameterMap);
    }

    @Override
    public int insert(Order t) {
        String sql = "INSERT INTO [Order]\n"
                + "           ([amount]\n"
                + "           ,[accountId]\n"
                + "           ,[createAt])\n"
                + "     VALUES\n"
                + "           (?,?,?)";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("1", t.getAmount());
        parameterMap.put("2", t.getAccountId());
        parameterMap.put("3", t.getCreateAt());
        return insertGenericDAO(sql, parameterMap);
    }

    public static void main(String[] args) {
        for (Order order : new OrderDAO().findAll()) {
            System.out.println(order);
        }
    }
}
