/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import constant.CommonConst;
import dal.GenericDAO;
import entity.Product;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author chucken
 */
public class ProductDAO extends GenericDAO<Product> {

    @Override
    public List<Product> findAll() {
        return queryGenericDAO(Product.class);
    }

    @Override
    public int insert(Product t) {
        return insertGenericDAO(t);
    }

    public static void main(String[] args) {
        for (Product product : new ProductDAO().findAll()) {
            System.out.println(product);
        }
    }

    public Product findById(Product product) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "  FROM [dbo].[Product]\n"
                + "  where id = ?";

        parameterMap = new LinkedHashMap<>();
        //get ra id
        parameterMap.put("id", product.getId());
        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);
        //neu nhu list ma empty > k co san pham > tra ve null
        //nguoc lai neu ma list khong empty > co san pham > sp tim dc nam o vi tri dau tien > lay ve vi tri so 0
        return list.isEmpty() ? null : list.get(0);
    }

    public List<Product> findByCategory(String categoryId, int page) {
//        String sql = "SELECT * FROM [dbo].[Product] where categoryId = ?";
        String sql = "SELECT * FROM Product\n"
                + "WHERE categoryId = ?\n"
                + "ORDER BY id\n"
                + "OFFSET ? ROWS\n" // (PAGE -1) * Y
                + "FETCH NEXT ? ROWS ONLY"; // number record per page = Y

        parameterMap = new LinkedHashMap<>();

        parameterMap.put("categoryId", categoryId);
        // OFFSET
        parameterMap.put("offset", (page - 1) * CommonConst.RECORD_PER_PAGE);
        //FETCH
        parameterMap.put("fetch", CommonConst.RECORD_PER_PAGE);

        //lay ve 1 list gom nhieu sp
        return queryGenericDAO(Product.class, sql, parameterMap);
    }

    public List<Product> findByKeyWord(String keyword) {
        String sql = "SELECT * FROM [dbo].[Product] where [name] like ?";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");

        return queryGenericDAO(Product.class, sql, parameterMap);
    }

    public int findTotalRecordByCategory(String categoryId) {
        String sql = "SELECT COUNT(*) FROM [dbo].[Product] where [categoryId] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryId);
        return findTotalRecordGenericDAO(Product.class, sql, parameterMap);
    }

    public List<Product> searchByName(String keyword, int page) {
        String sql = "SELECT *\n"
                + "  FROM [Product]\n"
                + "  where [name] like ?"
                + "  ORDER BY id\n"
                + "  OFFSET ? ROWS\n" //( PAGE - 1 ) * Y
                + "  FETCH NEXT ? ROWS ONLY"; // NUMBER_RECORD_PER_PAGE
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");
        parameterMap.put("offset", (page - 1) * CommonConst.RECORD_PER_PAGE);
        parameterMap.put("fetch", CommonConst.RECORD_PER_PAGE);
        return queryGenericDAO(Product.class, sql, parameterMap);
    }

    public int findTotalRecordByName(String keyword) {
        String sql = "SELECT count(*)\n"
                + "  FROM Product\n"
                + "  where [name] like ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");
        return findTotalRecordGenericDAO(Product.class, sql, parameterMap);
    }

    public void deleteById(int id) {
        String sql = "DELETE FROM [dbo].[Product] where [id] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", id);
        deleteGenericDAO(sql, parameterMap);
    }

    public void update(Product product) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[categoryId] = ?\n"
                + " WHERE [id] = ?";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", product.getName());
        parameterMap.put("image", product.getImage());
        parameterMap.put("quantity", product.getQuantity());
        parameterMap.put("price", product.getPrice());
        parameterMap.put("description", product.getDescription());
        parameterMap.put("categoryId", product.getCategoryId());
        parameterMap.put("id", product.getId());

        updateGenericDAO(sql, parameterMap);
    }

    public void deleteQuantity(int amount, Product product) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [quantity] = ?    \n"
                + " WHERE id = ?";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", product.getId());
        parameterMap.put("amount", product.getQuantity() - amount);
        updateGenericDAO(sql, parameterMap);
    }

}
