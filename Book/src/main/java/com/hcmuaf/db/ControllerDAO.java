package com.hcmuaf.db;

import com.hcmuaf.Product.*;
import com.hcmuaf.PurchaseStatistics;
import com.hcmuaf.login.User;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.sql.Timestamp;

public class ControllerDAO {
    Connection conn=null;
    PreparedStatement ps =null;
    ResultSet rs= null;


    public boolean updatePassword(String password, String username) {
        try {
            String sql = "UPDATE `users` SET `password` = ? WHERE username = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, password);
            ps.setString(2, username);

            // Sử dụng executeUpdate cho các câu truy vấn UPDATE, INSERT, DELETE
            int rowsAffected = ps.executeUpdate();

            // Kiểm tra xem có dòng nào bị ảnh hưởng hay không
            return rowsAffected > 0;
        } catch (SQLException e) {
            throw new RuntimeException("Error updating password", e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<User> getAllAccount(){
        List<User>list=new ArrayList<>();
        String query = "SELECT * FROM users";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(
                        rs.getInt(1), // Sửa đúng số cột trả về từ câu truy vấn
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return list;
    }
    public User checkLogin(String username, String password){
        try {
            String query="SELECT*FROM users WHERE username=? AND password=?";
            conn = new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
            rs = ps.executeQuery();
            while (rs.next()) {
                User a = new User(
                        rs.getInt(1), // Sửa đúng số cột trả về từ câu truy vấn
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)
                );
                return a;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }


    public User checkLoginExist( String username){
        String query="SELECT*FROM users WHERE username=?";
        try {
            conn = new DBContext().getConnection();
            ps=conn.prepareStatement(query);
            ps.setString(1,username);
            rs=ps.executeQuery();
            while (rs.next()) {
                User a = new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)
                );
                return a;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }
    public void signup(String username,String password, String Fullname, String email, String phone,String address){
        String query = "INSERT INTO users(username, password, fullname, email, phone, address, role) VALUES(?, ?, ?, ?, ?, ?, 1)";
        try {
            conn= new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
            ps.setString(3,Fullname);
            ps.setString(4,email);
            ps.setString(5,phone);
            ps.setString(6, address);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
    // Hàm băm mật khẩu
    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedPassword = md.digest(password.getBytes(StandardCharsets.UTF_8));
            return Base64.getEncoder().encodeToString(hashedPassword);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)
                ));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return list;
    }




    public Product getById(int proid){
        String query = "SELECT * FROM products WHERE id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,proid);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8));
                return p;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    return null;
    }

    public List<Product> getProductsByCategory(String category) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products WHERE type = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getString("type"),
                        rs.getInt("quantity"),
                        rs.getInt("price"),
                        rs.getString("view"),
                        rs.getInt("cateID")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return list;
    }
    public List<Product> getProductsByCategoryAndName(String category, String searchText) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products WHERE type = ? AND name LIKE ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category);
            ps.setString(2, "%" + searchText + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getString("type"),
                        rs.getInt("quantity"),
                        rs.getInt("price"),
                        rs.getString("view"),
                        rs.getInt("cateID")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return list;
    }

    public List<Product> searchByName(String text) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM products \n" +
                "WHERE name LIKE ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + text + "%"); // Sửa lại để sử dụng "%" đúng cách
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            // Đóng tài nguyên (Connection, PreparedStatement, ResultSet) trong khối finally
            // Đảm bảo rằng tài nguyên được đóng dù có lỗi xảy ra hay không
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
        }
        return list;
    }
    public List<Category> getNAMECategory(){
        List<Category>list=new ArrayList<>();
        String query = "SELECT * FROM categories";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(
                        rs.getInt(1),
                        rs.getString(2)
                ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return list;
    }
    public int historyProduct(OrderProduct orderProduct) {
        String sql = "INSERT INTO orderproduct(name, phone,email,address, total,orderDate) VALUES(?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, orderProduct.getName());
            ps.setString(2, orderProduct.getPhone());
            ps.setString(3, orderProduct.getEmail());
            ps.setString(4, orderProduct.getAddress());
            ps.setDouble(5, orderProduct.getTotal());
            ps.setTimestamp(6,orderProduct.getOrderDate());
            ps.executeUpdate();

            try (ResultSet rss = ps.getGeneratedKeys()) {
                if (rss.next()) {
                    return rss.getInt(1);
                }
                rss.close();
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return 0;

    }
    public void history(History history) {
        String query = "INSERT INTO history(orderID, fullname, phone, email, address, quantity, totalprice,orderDate) VALUES(?, ?, ?, ?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, history.getOrderID());
            ps.setString(2, history.getFullname());
            ps.setString(3, history.getPhone());
            ps.setString(4, history.getEmail());
            ps.setString(5, history.getAddress());
            ps.setInt(6, history.getQuantity());
            ps.setInt(7, history.getTotalprice());
            ps.setTimestamp(8,history.getOrderDate());
            ps.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public void OrderDetail(OrderDetail orderDetail) {
            String query = "INSERT INTO orderdetail(productID, orderID, quantity, price) VALUES(?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, orderDetail.getProduct_id());
            ps.setInt(2, orderDetail.getOrder_id());
            ps.setInt(3, orderDetail.getQuantity());
            ps.setDouble(4, orderDetail.getTotal());
            ps.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public boolean deleteProductById(int id) {
        String sql = "DELETE FROM products WHERE id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public boolean deleteUserById(int id) {
        String sql = "DELETE FROM users WHERE id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public void updateProduct(Product product) {
        String sql = "UPDATE products SET name=?, image=?, type=?, quantity=?, price=?, view=?, cateID=? WHERE id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setString(2, product.getImage());
            ps.setString(3, product.getType());
            ps.setInt(4, product.getQuantity());
            ps.setInt(5, product.getPrice());
            ps.setString(6, product.getView());
            ps.setInt(7, product.getCateID());
            ps.setInt(8, product.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean updateProducct(String name, String image,String type, int quantity, int price, int cateID, String id) {
        String sql = "UPDATE products SET name =?, image=?,type=?, quantity=?,price =?, cateID=? WHERE id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, type);
            ps.setInt(4, quantity);
            ps.setInt(5, price);
            ps.setInt(6,cateID);
            ps.setString(7, id);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    public void addProduct(Product product) {
        String sql = "INSERT INTO products(name, image, type, quantity, price, view, cateID) VALUES(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setString(2, product.getImage());
            ps.setString(3, product.getType());
            ps.setInt(4, product.getQuantity());
            ps.setInt(5, product.getPrice());
            ps.setString(6, product.getView());
            ps.setInt(7, product.getCateID());
            ps.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public User getUserID(int proid) {
        String query = "SELECT * FROM users WHERE id=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, proid);
            rs = ps.executeQuery();
            while (rs.next()) {
                User p = new User(
                        rs.getInt(1), // Sửa đúng số cột trả về từ câu truy vấn
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
                return p;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public List<History> getHistory() {
        List<History> list = new ArrayList<>();
        String query = "SELECT * FROM history";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new History(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getTimestamp(8)
                ));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return list;
    }
    public void addUser(User user) {
        String sql = "INSERT INTO users(username, password, fullname, email, phone, address,role) VALUES(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getFullname());
            ps.setString(4, user.getEmail());
            ps.setString (5,user.getPhone());
            ps.setString(6, user.getAddress());
            ps.setInt(7, user.getRole());
            ps.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public boolean updateUser(String username, String password, String name, String email, String phone, String address, int id) {
        String sql = "UPDATE users SET username = ?, password = ?, fullname = ?, email = ?, phone = ?, address = ? WHERE id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setString(6, address);
            ps.setInt(7, id);

            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated > 0; // Trả về true nếu có ít nhất một hàng được cập nhật, ngược lại trả về false

        } catch (Exception e) {
            e.printStackTrace();
            return false; // Trả về false nếu có lỗi xảy ra
        } finally {
            // Đảm bảo đóng kết nối và PreparedStatement
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }


    public List<PurchaseStatistics> getUserPurchaseStatistics() {
        List<PurchaseStatistics> list = new ArrayList<>();
        String query = "SELECT YEAR(orderDate) AS year, MONTH(orderDate) AS month, DAY(orderDate) AS day, COUNT(DISTINCT id) AS userCount " +
                "FROM orderproduct " +
                "GROUP BY YEAR(orderDate), MONTH(orderDate), DAY(orderDate)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new PurchaseStatistics(
                        rs.getInt("year"),
                        rs.getInt("month"),
                        rs.getInt("day"),
                        rs.getInt("userCount")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return list;
    }

    public List<OrderProduct> getOrderHistory(String email) {
        List<OrderProduct> orderHistory = new ArrayList<>();
        try {
            String sql = "SELECT * FROM orderproduct WHERE email = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int orderID = rs.getInt("id");
                String fullname = rs.getString("name");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                int totalproduct = rs.getInt("total");
                Timestamp orderDate = rs.getTimestamp("orderDate");
                OrderProduct orderProduct = new OrderProduct(orderID, fullname, phone, email, address, totalproduct, orderDate);
                orderHistory.add(orderProduct);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return orderHistory;
    }

    public List<OrderDetail> getOrderDetails(int orderID) {
        List<OrderDetail> orderDetails = new ArrayList<>();
        try {
            String sql = "SELECT * FROM orderdetail WHERE orderID = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, orderID);
            rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt("productID");
                int quantity = rs.getInt("quantity");
                int totalPrice = rs.getInt("price");
                OrderDetail orderDetail = new OrderDetail(productId, orderID, quantity, totalPrice);
                orderDetails.add(orderDetail);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return orderDetails;
    }
    public Product getProduct(int productId) {
        Product product = null;
        try {
            String sql = "SELECT * FROM products WHERE id = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, productId);
            rs = ps.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                String imageUrl = rs.getString("image");
                // Bổ sung các trường thông tin khác của sản phẩm nếu cần
                product = new Product(productId, name, imageUrl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return product;
    }


    public static void main(String[] args) {
        ControllerDAO dao = new ControllerDAO();

        // Test case 1: Thêm tài khoản mới
        String newUsername = "han"; // Thay thế bằng username mới
        String newPassword = "han"; // Thay thế bằng password mới
        String fullname = "han dep gai"; // Thay thế bằng tên đầy đủ mới
        String email = "han@example.com"; // Thay thế bằng email mới
        String phone = "123456789"; // Thay thế bằng số điện thoại mới
        String address = "123 New Street"; // Thay thế bằng địa chỉ mới

        // Kiểm tra nếu tài khoản đã tồn tại
        User existingUser = dao.checkLoginExist(newUsername);
        if (existingUser == null) {
            // Đăng ký người dùng mới
            dao.signup(newUsername, newPassword, fullname, email, phone, address);
            System.out.println("Test case 1: Đăng ký thành công cho người dùng mới.");

            // Kiểm tra đăng nhập với tài khoản mới tạo
            User newUser = dao.checkLogin(newUsername, newPassword);
            if (newUser != null) {
                System.out.println("Đăng nhập thành công với tài khoản mới.");
                System.out.println(newUser);
            } else {
                System.out.println("Đăng nhập thất bại với tài khoản mới.");
            }
        } else {
            System.out.println("Test case 1: Tên người dùng đã tồn tại.");
        }
    }


}
