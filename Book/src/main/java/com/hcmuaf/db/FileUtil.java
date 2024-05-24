package com.hcmuaf.db;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class FileUtil {
    public static void createJSPFile(String fileName, String content) {
        String filePath = "D:\\www\\NHANSAM\\src\\main\\webapp\\" + fileName + ".jsp"; // Đường dẫn đầy đủ tới thư mục products
        File file = new File(filePath);

        // Tạo thư mục nếu nó chưa tồn tại
        File parentDir = file.getParentFile();
        if (!parentDir.exists()) {
            parentDir.mkdirs();
        }

        try (FileWriter writer = new FileWriter(file)) {
            writer.write(content);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
