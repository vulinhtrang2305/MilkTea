/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import entity.Account;
import static java.util.Collections.list;
import java.util.LinkedHashMap;
import java.util.List;
import org.apache.catalina.util.ParameterMap;

/**
 *
 * @author chucken
 */
public class AccountDAO extends GenericDAO<Account> {

    @Override
    public List<Account> findAll() {
        return queryGenericDAO(Account.class);
    }

    @Override
    public int insert(Account t) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[email]\n"
                + "           ,[address]\n"
                + "           ,[roleId])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,2)";
        
        parameterMap = new ParameterMap<>();
        parameterMap.put("username", t.getUsername());
        parameterMap.put("password", t.getPassword());
        parameterMap.put("email", t.getEmail());
        parameterMap.put("address", t.getAddress());
        
        return insertGenericDAO(sql, parameterMap);
        
    }

    public Account findUsernameAndPass(Account account) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Account]\n"
                + "  where username = ? and password = ?";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", account.getUsername());
        parameterMap.put("password", account.getPassword());

        List<Account> list = queryGenericDAO(Account.class, sql, parameterMap);

        return list.isEmpty() ? null : list.get(0);
    }

    public boolean findByUsername(Account account) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[Account]\n"
                + "  where username = ?";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("username", account.getUsername());
        // tim thay username trung vs user trong DB
        return !queryGenericDAO(Account.class, sql, parameterMap).isEmpty();
    }

}
