package dao;

import model.Category;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO implements ICategoryDAO{

    private String jdbcURL = "jdbc:mysql://localhost:3306/module3?useSSL=false&characterEncoding=UTF-8";
    private String jdbcUserName = "root";
    private String jdbcPassword = "123456";

    private static final String SELECT_ALL_CATEGORY = "select * from category";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUserName, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public List<Category> selectAllCategory() {
        List<Category> categoryList = new ArrayList<>();
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORY);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int cid = rs.getInt("cid");
                String categoryName = rs.getString("categoryName");
                Category category = new Category(cid, categoryName);
                categoryList.add(category);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }

        return categoryList;
    }


}