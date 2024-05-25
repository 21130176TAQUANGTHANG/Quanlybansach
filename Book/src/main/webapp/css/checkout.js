 function populateDistricts() {
    var citySelect = document.getElementById("city");
    var districtSelect = document.getElementById("district");
    var selectedCity = citySelect.value;

    // Xóa tất cả các option trong dropdown quận/huyện trước khi thêm mới
    while (districtSelect.options.length > 0) {
    districtSelect.remove(0);
}

    // Thêm option mới tương ứng với thành phố được chọn
    if (selectedCity === "angiang") {
    addOption(districtSelect, "angiang1", "Thành phố Long Xuyên");
    addOption(districtSelect, "angiang2", "Thành phố Châu Đốc");
    addOption(districtSelect, "angiang3", "Huyện An Phú");
    addOption(districtSelect, "angiang4", "Thị Xã Tân Châu");
    addOption(districtSelect, "angiang5", "Huyện Phú Tân");
    addOption(districtSelect, "angiang6", "Huyện Tịnh Biên");
    addOption(districtSelect, "angiang7", "Huyện Tri Tôn");
    addOption(districtSelect, "angiang8", "Huyện Châu Phú");
    addOption(districtSelect, "angiang9", "Huyện Chợ Mới");
    addOption(districtSelect, "angiang10", "Huyện Châu Thành");
    addOption(districtSelect, "angiang11", "Huyện Thoại Sơn");

    // Thêm các quận/huyện khác của Hà Nội
} else if (selectedCity === "vungtau") {
    addOption(districtSelect, "vungtau1", "Thành phố Vũng Tàu");
    addOption(districtSelect, "vungtau2", "Thành phố Bà Rịa");
    addOption(districtSelect, "vungtau3", "Huyện Xuyên Mộc");
    addOption(districtSelect, "vungtau4", "Huyện Long Điền");
    addOption(districtSelect, "vungtau5", "Thị Xã Phú Mỹ");
    addOption(districtSelect, "vungtau6", "Huyện Châu Đức");
    addOption(districtSelect, "vungtau7", "Huyện Đất Đỏ");
    addOption(districtSelect, "vungtau8", "Huyện đảo Côn Đảo");


}else if (selectedCity == "bacgiang"){
    addOption(districtSelect,"bacgiang1","Thành Phố Bắc Giang");
    addOption(districtSelect,"bacgiang2","Huyện Yên Thế");
    addOption(districtSelect,"bacgiang3","Huyện Lục Ngạn");
    addOption(districtSelect,"bacgiang4","Huyện Sơn Động");
    addOption(districtSelect,"bacgiang5","Huyện Lục Nam");
    addOption(districtSelect,"bacgiang6","Huyện Tân Yên");
    addOption(districtSelect,"bacgiang7","Huyện Hiệp Hòa");
    addOption(districtSelect,"bacgiang8","Huyện Lạng Giang");
    addOption(districtSelect,"bacgiang9","Huyện Việt Yên");
    addOption(districtSelect,"bacgiang10","Huyện Yên Dũng");

}else if(selectedCity == "backan"){
    addOption(districtSelect,"backan1","Thành phố Bắc Kạn");
    addOption(districtSelect,"backan2","Huyện Chợ Đồn");
    addOption(districtSelect,"backan3","Huyện Bạch Thông");
    addOption(districtSelect,"backan4","Huyện Na Rì");
    addOption(districtSelect,"backan5","Huyện Ngân Sơn");
    addOption(districtSelect,"backan6","Huyện Ba Bể");
    addOption(districtSelect,"backan7","Huyện Chợ Mới");
    addOption(districtSelect,"backan8","Huyện Pác Nặm");

} else if(selectedCity == "baclieu"){
    addOption(districtSelect,"baclieu1","Thành Phố Bạc Liêu");
    addOption(districtSelect,"baclieu2","Huyện Vĩnh Lợi");
    addOption(districtSelect,"baclieu3","Huyện Hồng Dân");
    addOption(districtSelect,"baclieu4","Thị Xã Giá Rai");
    addOption(districtSelect,"baclieu5","Huyện Phước Long");
    addOption(districtSelect,"baclieu6","Huyện Đông Hải");
    addOption(districtSelect,"baclieu7","Huyện Hòa Bình");

}else if(selectedCity == "bacninh"){
    addOption(districtSelect, "bacninh1","Thành Phố Bắc Ninh");
    addOption(districtSelect, "bacninh2","Huyện Yên Phong");
    addOption(districtSelect, "bacninh3","Huyện Quế Võ");
    addOption(districtSelect, "bacninh4","Huyện Tiên Du");
    addOption(districtSelect, "bacninh5","Thị xã Từ Sơn");
    addOption(districtSelect, "bacninh6","Huyện Thuận Thành");
    addOption(districtSelect, "bacninh7","Huyện Gia Bình");
    addOption(districtSelect, "bacninh8","Huyện Lương Tài");

}else if(selectedCity == "bentre"){
    addOption(districtSelect,"bentre1","Thành phố Bến Tre");
    addOption(districtSelect,"bentre2","Huyện Châu Thành");
    addOption(districtSelect,"bentre3","Huyện Chợ Lách");
    addOption(districtSelect,"bentre4","Huyện Mỏ Cày Bắc");
    addOption(districtSelect,"bentre5","Huyện Giồng Trôm");
    addOption(districtSelect,"bentre6","Huyện Bình Đại");
    addOption(districtSelect,"bentre7","Huyện Ba tri");

}else if(selectedCity == "binhdinh"){
    addOption(districtSelect,"binhdinh1","Thành Phố Quy Nhơn");
    addOption(districtSelect,"binhdinh2","Huyện An Lão");
    addOption(districtSelect,"binhdinh3","Huyện Hoài Ân");
    addOption(districtSelect,"binhdinh4","Thị xã Hoài Nhơn");
    addOption(districtSelect,"binhdinh5","Huyện Phú Mỹ");
    addOption(districtSelect,"binhdinh6","Huyện Phù Cát");
    addOption(districtSelect,"binhdinh7","Huyện Vĩnh Thạnh");
    addOption(districtSelect,"binhdinh8","Huyện Tây Sơn");
    addOption(districtSelect,"binhdinh9","Huyện Vân Canh");
    addOption(districtSelect,"binhdinh10","Thị xã An Nhơn");
    addOption(districtSelect,"binhdinh11","Huyện Tuy Phước");

}else if(selectedCity == "binhduong"){
    addOption(districtSelect,"binhduong1","Thành phố Thủ Dầu Một");
    addOption(districtSelect,"binhduong2","Thị xã Bến Cát");
    addOption(districtSelect,"binhduong3","Thị xã Tân Uyên");
    addOption(districtSelect,"binhduong4","Thành phố Thuận An");
    addOption(districtSelect,"binhduong5","Thành phố Dĩ An");
    addOption(districtSelect,"binhduong6","Huyện Phú Giáo");
    addOption(districtSelect,"binhduong7","Huyện Dầu Tiếng");
    addOption(districtSelect,"binhduong8","Huyện Bàu Bàng");
    addOption(districtSelect,"binhduong9","Huyện Bắc Tân Uyên");

}else if(selectedCity == "binhphuoc"){
    addOption(districtSelect, "binhphuoc1","Thành phố Đồng Xoài");
    addOption(districtSelect, "binhphuoc2","Huyện Đồng Phú");
    addOption(districtSelect, "binhphuoc3","Huyện Chơn Thành");
    addOption(districtSelect, "binhphuoc4","Thị xã Bình Long");
    addOption(districtSelect, "binhphuoc5","Huyện Lộc Ninh");
    addOption(districtSelect, "binhphuoc6","Huyện Bù Đốp");
    addOption(districtSelect, "binhphuoc7","Thị xã Phước Long");
    addOption(districtSelect, "binhphuoc8","Huyện Bù Đăng");
    addOption(districtSelect, "binhphuoc9","Huyện Hớn Quản");
    addOption(districtSelect, "binhphuoc10","Huyện Bù Gia Mập");
    addOption(districtSelect, "binhphuoc11","Huyện Phú Riềng");

}else if(selectedCity == "binhthuan"){
    addOption(districtSelect,"binhthuan1","Thành phố Phan Thiêt");
    addOption(districtSelect,"binhthuan2","Huyện Tuy Phong");
    addOption(districtSelect,"binhthuan3","Huyện Bắc Bình");
    addOption(districtSelect,"binhthuan4","Huyện Hàm Thuận Bắc");
    addOption(districtSelect,"binhthuan5","Huyện Hàm Thuận Nam");
    addOption(districtSelect,"binhthuan6","Huyện Hàm Tân");
    addOption(districtSelect,"binhthuan7","Huyện Đức Linh");
    addOption(districtSelect,"binhthuan8","Huyện Tánh Linh");
    addOption(districtSelect,"binhthuan9","Huyện đảo Phú Qúy");
    addOption(districtSelect,"binhthuan10","Thị xã La Gi");

}else if(selectedCity == "camau"){
    addOption(districtSelect,"camau1","Thành phố Cà Mau");
    addOption(districtSelect,"camau2","Huyện Thới Bình");
    addOption(districtSelect,"camau3","Huyện U Minh");
    addOption(districtSelect,"camau4","Huyện Trần Văn Thời");
    addOption(districtSelect,"camau5","Huyện Cái Nước");
    addOption(districtSelect,"camau6","Huyện Đầm Dơi");
    addOption(districtSelect,"camau7","Huyện Ngọc Hiển");
    addOption(districtSelect,"camau8","Huyện Năm Căn");
    addOption(districtSelect,"camau9","Huyện Phú Tân");

}else if(selectedCity == "cantho"){
    addOption(districtSelect, "cantho1","Quận Ninh Kiều");
    addOption(districtSelect, "cantho2","Quận Bình Thủy");
    addOption(districtSelect, "cantho3","Quận Cái Răng");
    addOption(districtSelect, "cantho4","Quận Ô Môn");
    addOption(districtSelect, "cantho5","Huyện Phong Điền");
    addOption(districtSelect, "cantho6","Huyện Cờ Đỏ");
    addOption(districtSelect, "cantho7","Huyện Vĩnh Thạnh");
    addOption(districtSelect, "cantho8","Quận Thốt Nốt");
    addOption(districtSelect, "cantho9","Huyện Thới Lai");

}else if(selectedCity == "caobang"){
    addOption(districtSelect,"caobang1","Thành phố Cao Bằng");
    addOption(districtSelect,"caobang2","Huyện Bảo Lạc");
    addOption(districtSelect,"caobang3","Huyện Thông Nông");
    addOption(districtSelect,"caobang4","Huyện Hà Quảng");
    addOption(districtSelect,"caobang5","Huyện Trà Lĩnh");
    addOption(districtSelect,"caobang6","Huyện Trùng Khánh");
    addOption(districtSelect,"caobang7","Huyện Nguyên Bình");
    addOption(districtSelect,"caobang8","Huyện Hòa An");
    addOption(districtSelect,"caobang9","Huyện Quảng Uyên");
    addOption(districtSelect,"caobang10","Huyện Thạch An");
    addOption(districtSelect,"caobang11","Huyện Hạ Lang");
    addOption(districtSelect,"caobang12","Huyện Bảo Lâm");
    addOption(districtSelect,"caobang13","Huyện Phục Hòa");
    addOption(districtSelect,"caobang14","Huyện Quảng Hòa");

}else if(selectedCity == "danang"){
    addOption(districtSelect,"danang1","Quận Hải Châu");
    addOption(districtSelect,"danang2","Quận Thanh Khê");
    addOption(districtSelect,"danang3","Quận Sơn Trà");
    addOption(districtSelect,"danang4","Quận Ngũ Hành Sơn");
    addOption(districtSelect,"danang5","Quận Liên Chiểu");
    addOption(districtSelect,"danang6","Huyện Hòa Vang");
    addOption(districtSelect,"danang7","Quận Cẩm Lệ");
    addOption(districtSelect,"danang8","Huyện đảo Hoàng Sa");

}else if(selectedCity == "daklak"){
    addOption(districtSelect, "daklak1","Thành phố Buôn Ma Thuật");
    addOption(districtSelect, "daklak2","Huyện Ea H leo");
    addOption(districtSelect, "daklak3","Huyện Krông Búk");
    addOption(districtSelect, "daklak4","Huyện Krông Năng");
    addOption(districtSelect, "daklak5","Huyện Ea Súp");
    addOption(districtSelect, "daklak6","Huyện Cư M gar");
    addOption(districtSelect, "daklak7","Huyện Krông Pắc");
    addOption(districtSelect, "daklak8","Huyện Ea Kar");
    addOption(districtSelect, "daklak9","Huyện M Đrắk");
    addOption(districtSelect, "daklak10","Huyện Krông Ana");
    addOption(districtSelect, "daklak11","Huyện Krông Bông");
    addOption(districtSelect, "daklak12","Huyện Lắk");
    addOption(districtSelect, "daklak13","Huyện Buôn Đôn");
    addOption(districtSelect, "daklak14","Huyện Cư Kuin");
    addOption(districtSelect, "daklak15","Thị xã Buôn Hồ");

}else if(selectedCity=="daknong"){
    addOption(districtSelect,"daknong1","Thành phố Gia Nghĩa");
    addOption(districtSelect,"daknong2","Huyện Đắk R lấp");
    addOption(districtSelect,"daknong3","Huyện Đắk Mil");
    addOption(districtSelect,"daknong4","Huyện Cư Jút");
    addOption(districtSelect,"daknong5","Huyện Đắk Song");
    addOption(districtSelect,"daknong6","Huyện Krông Nô");
    addOption(districtSelect,"daknong7","Huyện Đắk Glong");
    addOption(districtSelect,"daknong8","Huyện Tuy Đức");

}else if(selectedCity=="dienbien"){
    addOption(districtSelect,"dienbien1","Thành Phố Điện Biên Phủ");
    addOption(districtSelect,"dienbien2","Thị xã Mường Lay");
    addOption(districtSelect,"dienbien3","Huyện Điện Biên");
    addOption(districtSelect,"dienbien4","Huyên Tuần Giáo");
    addOption(districtSelect,"dienbien5","Huyện Mường Chà");
    addOption(districtSelect,"dienbien6","Huyện Tủa Chùa");
    addOption(districtSelect,"dienbien7","Huyện Điện Biên Đông");
    addOption(districtSelect,"dienbien8","Huyện Mường Nhé");
    addOption(districtSelect,"dienbien9","Huyện Mường Ảng");
    addOption(districtSelect,"dienbien10","Huyện Nậm Pồ");

}else if( selectedCity=="dongnai") {
    addOption(districtSelect,"dongnai1","Thành phố Biên Hòa");
    addOption(districtSelect,"dongnai2","Huyện Vĩnh Cửu");
    addOption(districtSelect,"dongnai3","Huyện Tân Phú");
    addOption(districtSelect,"dongnai4","Huyện Định Quán");
    addOption(districtSelect,"dongnai5","Huyện Thống Nhất");
    addOption(districtSelect,"dongnai6","Thành phố Long Khánh");
    addOption(districtSelect,"dongnai7","Huyện Xuân Lô");
    addOption(districtSelect,"dongnai8","Huyện Long Thành");
    addOption(districtSelect,"dongnai9","Huyện Nhơn Trạch");
    addOption(districtSelect,"dongnai10","Huyện Trảng Bom");
    addOption(districtSelect,"dongnai11","Huyện Cẩm Mỹ");

}else if(selectedCity=="dongthap"){
    addOption(districtSelect, "dongthap1","Thành phố Cao Lãnh");
    addOption(districtSelect, "dongthap2","Thành phố Sa Đéc");
    addOption(districtSelect, "dongthap3","Thành phố Hồng Ngự");
    addOption(districtSelect, "dongthap4","Huyện Tam Nông");
    addOption(districtSelect, "dongthap5","Huyện Thanh Bình");
    addOption(districtSelect, "dongthap6","Huyện Cao Lãnh");
    addOption(districtSelect, "dongthap7","Huyện Lấp Vò");
    addOption(districtSelect, "dongthap8","Huyện Tháp Mười");
    addOption(districtSelect, "dongthap9","Huyện Lai Vung");
    addOption(districtSelect, "dongthap10","Huyện Châu Thành");
    addOption(districtSelect, "dongthap11","Thị xã Hồng Ngự");

}else if(selectedCity == "gialai"){
    addOption(districtSelect,"gialai1","Thành phố Pleiku");
    addOption(districtSelect,"gialai2","Huyện Chư Păh");
    addOption(districtSelect,"gialai3","Huyện Mang Yang");
    addOption(districtSelect,"gialai4","Huyện Kbang");
    addOption(districtSelect,"gialai5","Thị xã An Khê");
    addOption(districtSelect,"gialai6","Huyện Kông Chro");
    addOption(districtSelect,"gialai7","Huyện Đức Cơ");
    addOption(districtSelect,"gialai8","Huyện Chư Prông");
    addOption(districtSelect,"gialai9","Huyện Chư Sê");
    addOption(districtSelect,"gialai10","Thị xã Ayun Pa");
    addOption(districtSelect,"gialai11","Huyện Krông Pa");
    addOption(districtSelect,"gialai12","Huyện Ia Grai");
    addOption(districtSelect,"gialai13","Huyện Đắk Đoa");
    addOption(districtSelect,"gialai14","Huyện Ia Pa");
    addOption(districtSelect,"gialai15","Huyện Đắk Pơ");
    addOption(districtSelect,"gialai16","Huyện Phú Thiện");
    addOption(districtSelect,"gialai17","Huyện Chư Pưh");

}else if(selectedCity == "hagiang"){
        addOption(districtSelect, "hagiang1","Thành phố Hà Giang");
        addOption(districtSelect, "hagiang2","Huyện Đồng Văn");
        addOption(districtSelect, "hagiang3","Huyện Mèo Vạc");
        addOption(districtSelect, "hagiang4","Huyện Yên Minh");
        addOption(districtSelect, "hagiang5","Huyện Quản Bạ");
        addOption(districtSelect, "hagiang6","Huyện Vị Xuyên");
        addOption(districtSelect, "hagiang7","Huyện Bắc Mê");
        addOption(districtSelect, "hagiang8","Huyện Hoàng Su Phi");
        addOption(districtSelect, "hagiang9","Huyện Xín Mần");
        addOption(districtSelect, "hagiang10","Huyện Bắc Quang");
        addOption(districtSelect, "hagiang11","Huyện Quang Bình");

    }else if(selectedCity== "hanam"){
        addOption(districtSelect, "hanam1","Thành phố Phủ Lý");
        addOption(districtSelect, "hanam2","Thị xã Duy Tiên");
        addOption(districtSelect, "hanam3","Huện Kim Bảng");
        addOption(districtSelect, "hanam4","Huyện Lý Nhân");
        addOption(districtSelect, "hanam5","Huyện Thanh Liêm");
        addOption(districtSelect, "hanam6","Huyện Bình Lục");

    }else if(selectedCity=="hanoi"){
        addOption(districtSelect, "hanoi1","Quận Bắc Từ Liêm");
        addOption(districtSelect, "hanoi2","Quận Nam Từ Liêm");
        addOption(districtSelect, "hanoi3","Quận Ba Đình");
        addOption(districtSelect, "hanoi4","Quận Hoàn Kiếm");
        addOption(districtSelect, "hanoi5","Quận Hai Bà Trưng");
        addOption(districtSelect, "hanoi6","Quận Đống Đa");
        addOption(districtSelect, "hanoi7","Quận Tây Hồ");
        addOption(districtSelect, "hanoi8","Quận Cầu Giấy");
        addOption(districtSelect, "hanoi9","Quận Thanh Xuân");
        addOption(districtSelect, "hanoi10","Quận Hoàng Mai");
        addOption(districtSelect, "hanoi11","Quận Long Biên");
        addOption(districtSelect, "hanoi12","Huyện Thạnh Trị");
        addOption(districtSelect, "hanoi13","Huyện Gia Lâm");
        addOption(districtSelect, "hanoi14","Huyện Đông Anh");
        addOption(districtSelect, "hanoi15","Huyện Sóc Sơn");
        addOption(districtSelect, "hanoi16","Quận Hà Đông");
        addOption(districtSelect, "hanoi17","Thị xã Sơn Tây");
        addOption(districtSelect, "hanoi18","Huyện Bà Vì");
        addOption(districtSelect, "hanoi19","Huyện Phúc Thọ");
        addOption(districtSelect, "hanoi20","Huyện Thạch Thất");
        addOption(districtSelect, "hanoi21","Huyện Quốc Oai");
        addOption(districtSelect, "hanoi22","Huyện Chương Mỹ");
        addOption(districtSelect, "hanoi23","Huyện Đan Phượng");
        addOption(districtSelect, "hanoi24","Huyện Hoài Đức");
        addOption(districtSelect, "hanoi25","Huyện Thanh Oai");
        addOption(districtSelect, "hanoi26","Huyện Mỹ Đức");
        addOption(districtSelect, "hanoi27","Huyện Ứng Hòa");
        addOption(districtSelect, "hanoi28","Huyện Thường Tín");
        addOption(districtSelect, "hanoi29","Huyện Phú Xuyên");
        addOption(districtSelect, "hanoi30","Huyện Mê Linh");

    }else if(selectedCity== "hatinh"){
        addOption(districtSelect,"hatinh1","Thành phố Hà Tĩnh");
        addOption(districtSelect,"hatinh2","Thị xã Hồng Lĩnh");
        addOption(districtSelect,"hatinh3","Huyện Hương Sơn");
        addOption(districtSelect,"hatinh4","Huyện Đức Thọ");
        addOption(districtSelect,"hatinh5","Huyện Nghi Xuân");
        addOption(districtSelect,"hatinh6","Huyện Can Lộc");
        addOption(districtSelect,"hatinh7","Huyện Hương Khê");
        addOption(districtSelect,"hatinh8","Huyện Thạch Hà");
        addOption(districtSelect,"hatinh9","Huyện Cẩm Xuyên");
        addOption(districtSelect,"hatinh10","Huyện Vũ Quang");
        addOption(districtSelect,"hatinh11","Huyện Lộc Hà");
        addOption(districtSelect,"hatinh12","Huyện Kỳ Anh");
        addOption(districtSelect,"hatinh13","Thị xã Kỳ Anh");

    }else if(selectedCity=="haiduong"){
        addOption(districtSelect,"haiduong1","Thành phố Hải Dương");
        addOption(districtSelect,"haiduong2","Thành phố Chí Linh");
        addOption(districtSelect,"haiduong3","Huyện Nam Sách");
        addOption(districtSelect,"haiduong4","Thị xã Kinh Môn");
        addOption(districtSelect,"haiduong5","Huyện Gia Lộc");
        addOption(districtSelect,"haiduong6","Huyện Tứ kỳ");
        addOption(districtSelect,"haiduong7","Huyện Thanh Miện");
        addOption(districtSelect,"haiduong8","Huyện Ninh Giang");
        addOption(districtSelect,"haiduong9","Huyện Cẩm Giàng");
        addOption(districtSelect,"haiduong10","Huyện Thanh Hà");
        addOption(districtSelect,"haiduong11","Huyện Kim Thành");
        addOption(districtSelect,"haiduong12","Huyện Bình Giang");

    }else if(selectedCity=="haiphong"){
        addOption(districtSelect, "haiphong1","Huyện An Lão");
        addOption(districtSelect, "haiphong2","Quận Hồng Bàng");
        addOption(districtSelect, "haiphong3","Quận Lê Chân");
        addOption(districtSelect, "haiphong4","Quận Ngô Quyền");
        addOption(districtSelect, "haiphong5","Quận Kiến An");
        addOption(districtSelect, "haiphong6","Quận Hải An");
        addOption(districtSelect, "haiphong7","Quận Đồ Sơn");
        addOption(districtSelect, "haiphong8","Huyện Kiến Thụy");
        addOption(districtSelect, "haiphong9","Huyện Thủy Nguyên");
        addOption(districtSelect, "haiphong10","Huyện An Dương");
        addOption(districtSelect, "haiphong11","Huyện Tiên Lãng");
        addOption(districtSelect, "haiphong12","Huyễn Vĩnh Bảo");
        addOption(districtSelect, "haiphong13","Huyện đảo Cát Hải");
        addOption(districtSelect, "haiphong14","Quận Dương Kinh");

    }else if(selectedCity=="haugiang"){
        addOption(districtSelect,"haugiang1","Thành phố Vị Thanh");
        addOption(districtSelect,"haugiang2","Huyện Vị Thủy");
        addOption(districtSelect,"haugiang3","Huyện Long Mỹ");
        addOption(districtSelect,"haugiang4","Huyện Phụng Hiệp");
        addOption(districtSelect,"haugiang5","Huyện Châu Thành");
        addOption(districtSelect,"haugiang6","Huyện Châu Thành A");
        addOption(districtSelect,"haugiang7","Thành phố Ngã Bảy");
        addOption(districtSelect,"haugiang8","Thị xã Long Mỹ");

    }else if(selectedCity=="hochiminh"){
        addOption(districtSelect,"hochiminh1","Thành Phố Thủ Đức");
        addOption(districtSelect,"hochiminh2","Quận 1");
        addOption(districtSelect,"hochiminh3","Quận 2");
        addOption(districtSelect,"hochiminh4","Quận 3");
        addOption(districtSelect,"hochiminh5","Quận 4");
        addOption(districtSelect,"hochiminh6","Quận 5");
        addOption(districtSelect,"hochiminh7","Quận 6");
        addOption(districtSelect,"hochiminh8","Quận 7");
        addOption(districtSelect,"hochiminh9","Quận 8");
        addOption(districtSelect,"hochiminh10","Quận 9");
        addOption(districtSelect,"hochiminh11","Quận 10");
        addOption(districtSelect,"hochiminh12","Quận 11");
        addOption(districtSelect,"hochiminh13","Quận 12");
        addOption(districtSelect,"hochiminh14","Quận Gò Vấp");
        addOption(districtSelect,"hochiminh15","Quận Tân Bình");
        addOption(districtSelect,"hochiminh16","Quận Tân Phú");
        addOption(districtSelect,"hochiminh17","Quận Bình Thạnh");
        addOption(districtSelect,"hochiminh18","Quận Phú Nhuận");
        addOption(districtSelect,"hochiminh19","Quận Thử Đức");
        addOption(districtSelect,"hochiminh20","Quận Bình Tân");
        addOption(districtSelect,"hochiminh21","Huyện Bình Chánh");
        addOption(districtSelect,"hochiminh22","Huyện Cử Chi");
        addOption(districtSelect,"hochiminh23","Huyện Hóc Môn");
        addOption(districtSelect,"hochiminh24","Huyện Nhà Bè");
        addOption(districtSelect,"hochiminh25","Huyền Cần Giờ");

    }else if(selectedCity=="hoabinh"){
        addOption(districtSelect,"hoabinh1","Thành phố Hòa Bình");
        addOption(districtSelect,"hoabinh2","Quận Yên Thủy");
        addOption(districtSelect,"hoabinh3","Huyện Đà Bắc");
        addOption(districtSelect,"hoabinh4","Huyện Mai Châu");
        addOption(districtSelect,"hoabinh5","Huyện Tân Lạc");
        addOption(districtSelect,"hoabinh6","Huyện Lạc Sơn");
        addOption(districtSelect,"hoabinh7","Huyện Kỳ Sơn");
        addOption(districtSelect,"hoabinh8","Huyện Lương Sơn");
        addOption(districtSelect,"hoabinh9","Huyện Kim Bôi");
        addOption(districtSelect,"hoabinh10","Huyện Lạc Thủy");
        addOption(districtSelect,"hoabinh11","Huyện Cao Phong");

    }else if(selectedCity=="hungyen"){
        addOption(districtSelect, "hy1", "Thành phố Hưng Yên");
        addOption(districtSelect, "hy2", "Huyện Văn Lâm");
        addOption(districtSelect, "hy3", "Huyện Văn Giang");
        addOption(districtSelect, "hy4", "Huyện Yên Mỹ");
        addOption(districtSelect, "hy5", "Huyện Mỹ Hào");
        addOption(districtSelect, "hy6", "Huyện Ân Thi");
        addOption(districtSelect, "hy7", "Huyện Khoái Châu");
        addOption(districtSelect, "hy8", "Huyện Kim Động");
        addOption(districtSelect, "hy9", "Huyện Tiên Lữ");
        addOption(districtSelect, "hy10", "Huyện Phù Cừ");
        addOption(districtSelect, "hy11", "Huyện Trần Đề");
    }else if (selectedCity === "khanhhoa") {
        addOption(districtSelect, "khanhhoa1", "Thành phố Nha Trang");
        addOption(districtSelect, "khanhhoa2", "Thị xã Cam Ranh");
        addOption(districtSelect, "khanhhoa3", "Huyện Cam Lâm");
        addOption(districtSelect, "khanhhoa4", "Huyện Vạn Ninh");
        addOption(districtSelect, "khanhhoa5", "Huyện Diên Khánh");
        addOption(districtSelect, "khanhhoa6", "Huyện Khánh Vĩnh");
        addOption(districtSelect, "khanhhoa7", "Huyện Khánh Sơn");
        addOption(districtSelect, "khanhhoa8", "Huyện Trường Sa");
    } else if (selectedCity === "kiengiang") {
        addOption(districtSelect, "kiengiang1", "Thành phố Rạch Giá");
        addOption(districtSelect, "kiengiang2", "Thị xã Hà Tiên");
        addOption(districtSelect, "kiengiang3", "Huyện Kiên Lương");
        addOption(districtSelect, "kiengiang4", "Huyện Hòn Đất");
        addOption(districtSelect, "kiengiang5", "Huyện Tân Hiệp");
        addOption(districtSelect, "kiengiang6", "Huyện Châu Thành");
        addOption(districtSelect, "kiengiang7", "Huyện Giồng Riềng");
        addOption(districtSelect, "kiengiang8", "Huyện Gò Quao");
        addOption(districtSelect, "kiengiang9", "Huyện An Biên");
        addOption(districtSelect, "kiengiang10", "Huyện An Minh");
        addOption(districtSelect, "kiengiang11", "Huyện Vĩnh Thuận");
        addOption(districtSelect, "kiengiang12", "Huyện Phú Quốc");
        addOption(districtSelect, "kiengiang13", "Huyện Kiên Hải");
        addOption(districtSelect, "kiengiang14", "Huyện U Minh Thượng");
        addOption(districtSelect, "kiengiang15", "Huyện Giang Thành");
    } else if (selectedCity === "kontum") {
        addOption(districtSelect, "kontum1", "Thành phố Kon Tum");
        addOption(districtSelect, "kontum2", "Huyện Đắk Glei");
        addOption(districtSelect, "kontum3", "Huyện Ngọc Hồi");
        addOption(districtSelect, "kontum4", "Huyện Đắk Tô");
        addOption(districtSelect, "kontum5", "Huyện Kon Plông");
        addOption(districtSelect, "kontum6", "Huyện Kon Rẫy");
        addOption(districtSelect, "kontum7", "Huyện Đắk Hà");
        addOption(districtSelect, "kontum8", "Huyện Sa Thầy");
        addOption(districtSelect, "kontum9", "Huyện Tu Mơ Rông");
    }else if (selectedCity === "laichau") {
        addOption(districtSelect, "laichau1", "Thành phố Lai Châu");
        addOption(districtSelect, "laichau2", "Huyện Tam Đường");
        addOption(districtSelect, "laichau3", "Huyện Mường Tè");
        addOption(districtSelect, "laichau4", "Huyện Sìn Hồ");
        addOption(districtSelect, "laichau5", "Huyện Phong Thổ");
        addOption(districtSelect, "laichau6", "Huyện Than Uyên");
        addOption(districtSelect, "laichau7", "Huyện Tân Uyên");
        addOption(districtSelect, "laichau8", "Huyện Nậm Nhùn");
    } else if (selectedCity === "lamdong") {
        addOption(districtSelect, "lamdong1", "Thành phố Đà Lạt");
        addOption(districtSelect, "lamdong2", "Thành phố Bảo Lộc");
        addOption(districtSelect, "lamdong3", "Huyện Đam Rông");
        addOption(districtSelect, "lamdong4", "Huyện Lạc Dương");
        addOption(districtSelect, "lamdong5", "Huyện Lâm Hà");
        addOption(districtSelect, "lamdong6", "Huyện Đơn Dương");
        addOption(districtSelect, "lamdong7", "Huyện Đức Trọng");
        addOption(districtSelect, "lamdong8", "Huyện Di Linh");
        addOption(districtSelect, "lamdong9", "Huyện Bảo Lâm");
        addOption(districtSelect, "lamdong10", "Huyện Đạ Huoai");
        addOption(districtSelect, "lamdong11", "Huyện Đạ Tẻh");
        addOption(districtSelect, "lamdong12", "Huyện Cát Tiên");
    }else if (selectedCity === "langson") {
        addOption(districtSelect, "langson1", "Thành phố Lạng Sơn");
        addOption(districtSelect, "langson2", "Huyện Tràng Định");
        addOption(districtSelect, "langson3", "Huyện Văn Lãng");
        addOption(districtSelect, "langson4", "Huyện Bình Gia");
        addOption(districtSelect, "langson5", "Huyện Văn Quan");
        addOption(districtSelect, "langson6", "Huyện Cao Lộc");
        addOption(districtSelect, "langson7", "Huyện Lộc Bình");
        addOption(districtSelect, "langson8", "Huyện Chi Lăng");
        addOption(districtSelect, "langson9", "Huyện Đình Lập");
    } else if (selectedCity === "laocai") {
        addOption(districtSelect, "laocai1", "Thành phố Lào Cai");
        addOption(districtSelect, "laocai2", "Thị xã Sa Pa");
        addOption(districtSelect, "laocai3", "Huyện Bát Xát");
        addOption(districtSelect, "laocai4", "Huyện Bảo Thắng");
        addOption(districtSelect, "laocai5", "Huyện Bảo Yên");
        addOption(districtSelect, "laocai6", "Huyện Bắc Hà");
        addOption(districtSelect, "laocai7", "Huyện Văn Bàn");
        addOption(districtSelect, "laocai8", "Huyện Mường Khương");
        addOption(districtSelect, "laocai9", "Huyện Si Ma Cai");
    } else if (selectedCity === "longan") {
        addOption(districtSelect, "longan1", "Thành phố Tân An");
        addOption(districtSelect, "longan2", "Huyện Vĩnh Hưng");
        addOption(districtSelect, "longan3", "Huyện Mộc Hóa");
        addOption(districtSelect, "longan4", "Huyện Tân Thạnh");
        addOption(districtSelect, "longan5", "Huyện Thạnh Hóa");
        addOption(districtSelect, "longan6", "Huyện Đức Huệ");
        addOption(districtSelect, "longan7", "Huyện Đức Hòa");
        addOption(districtSelect, "longan8", "Huyện Bến Lức");
        addOption(districtSelect, "longan9", "Huyện Thủ Thừa");
        addOption(districtSelect, "longan10", "Huyện Châu Thành");
        addOption(districtSelect, "longan11", "Huyện Tân Trụ");
        addOption(districtSelect, "longan12", "Huyện Cần Đước");
        addOption(districtSelect, "longan13", "Huyện Cần Giuộc");
        addOption(districtSelect, "longan14", "Huyện Tân Hưng");
    } else if (selectedCity === "namdinh") {
        addOption(districtSelect, "namdinh1", "Thành phố Nam Định");
        addOption(districtSelect, "namdinh2", "Huyện Mỹ Lộc");
        addOption(districtSelect, "namdinh3", "Huyện Xuân Trường");
        addOption(districtSelect, "namdinh4", "Huyện Giao Thủy");
        addOption(districtSelect, "namdinh5", "Huyện Nam Trực");
        addOption(districtSelect, "namdinh6", "Huyện Trực Ninh");
        addOption(districtSelect, "namdinh7", "Huyện Nghĩa Hưng");
        addOption(districtSelect, "namdinh8", "Huyện Hải Hậu");
        addOption(districtSelect, "namdinh9", "Huyện Vụ Bản");
    } else if (selectedCity === "nghean") {
        addOption(districtSelect, "nghean1", "Thành phố Vinh");
        addOption(districtSelect, "nghean2", "Thị xã Cửa Lò");
        addOption(districtSelect, "nghean3", "Thị xã Thái Hoà");
        addOption(districtSelect, "nghean4", "Huyện Quế Phong");
        addOption(districtSelect, "nghean5", "Huyện Quỳ Châu");
        addOption(districtSelect, "nghean6", "Huyện Kỳ Sơn");
        addOption(districtSelect, "nghean7", "Huyện Tương Dương");
        addOption(districtSelect, "nghean8", "Huyện Nghĩa Đàn");
        addOption(districtSelect, "nghean9", "Huyện Quỳ Hợp");
        addOption(districtSelect, "nghean10", "Huyện Quỳnh Lưu");
        addOption(districtSelect, "nghean11", "Huyện Con Cuông");

    }else if (selectedCity === "ninhbinh") {
        addOption(districtSelect, "ninhbinh1", "Thành phố Ninh Bình");
        addOption(districtSelect, "ninhbinh2", "Thành phố Tam Điệp");
        addOption(districtSelect, "ninhbinh3", "Huyện Nho Quan");
        addOption(districtSelect, "ninhbinh4", "Huyện Gia Viễn");
        addOption(districtSelect, "ninhbinh5", "Huyện Hoa Lư");
        addOption(districtSelect, "ninhbinh6", "Huyện Yên Khánh");
        addOption(districtSelect, "ninhbinh7", "Huyện Kim Sơn");
        addOption(districtSelect, "ninhbinh8", "Huyện Yên Mô");
    } else if (selectedCity === "ninhthuan") {
        addOption(districtSelect, "ninhthuan1", "Thành phố Phan Rang-Tháp Chàm");
        addOption(districtSelect, "ninhthuan2", "Huyện Ninh Hải");
        addOption(districtSelect, "ninhthuan3", "Huyện Ninh Phước");
        addOption(districtSelect, "ninhthuan4", "Huyện Ninh Sơn");
        addOption(districtSelect, "ninhthuan5", "Huyện Thuận Bắc");
        addOption(districtSelect, "ninhthuan6", "Huyện Bác Ái");
        addOption(districtSelect, "ninhthuan7", "Huyện Thuận Nam");
    } else if (selectedCity === "phutho") {
        addOption(districtSelect, "phutho1", "Thành phố Việt Trì");
        addOption(districtSelect, "phutho2", "Thị xã Phú Thọ");
        addOption(districtSelect, "phutho3", "Huyện Đoan Hùng");
        addOption(districtSelect, "phutho4", "Huyện Hạ Hoà");
        addOption(districtSelect, "phutho5", "Huyện Thanh Ba");
        addOption(districtSelect, "phutho6", "Huyện Phù Ninh");
        addOption(districtSelect, "phutho7", "Huyện Yên Lập");
        addOption(districtSelect, "phutho8", "Huyện Cẩm Khê");
        addOption(districtSelect, "phutho9", "Huyện Tam Nông");
        addOption(districtSelect, "phutho10", "Huyện Lâm Thao");
        addOption(districtSelect, "phutho11", "Huyện Thanh Sơn");
        addOption(districtSelect, "phutho12", "Huyện Thanh Thuỷ");
        addOption(districtSelect, "phutho13", "Huyện Tân Sơn");
    } else if (selectedCity === "phuyen") {
        addOption(districtSelect, "phuyen1", "Thành phố Tuy Hoà");
        addOption(districtSelect, "phuyen2", "Huyện Đồng Xuân");
        addOption(districtSelect, "phuyen3", "Huyện Tuy An");
        addOption(districtSelect, "phuyen4", "Huyện Sơn Hòa");
        addOption(districtSelect, "phuyen5", "Huyện Sông Cầu");
        addOption(districtSelect, "phuyen6", "Huyện Tuy Hoà");
        addOption(districtSelect, "phuyen7", "Huyện Đông Hòa");
        addOption(districtSelect, "phuyen8", "Huyện Phú Hoà");
        addOption(districtSelect, "phuyen9", "Huyện Tây Hòa");
        addOption(districtSelect, "phuyen10", "Huyện Sông Hinh");
    } else if (selectedCity === "quangbinh") {
        addOption(districtSelect, "quangbinh1", "Thành phố Đồng Hới");
        addOption(districtSelect, "quangbinh2", "Huyện Minh Hóa");
        addOption(districtSelect, "quangbinh3", "Huyện Tuyên Hóa");
        addOption(districtSelect, "quangbinh4", "Huyện Quảng Trạch");
        addOption(districtSelect, "quangbinh5", "Huyện Bố Trạch");
        addOption(districtSelect, "quangbinh6", "Huyện Quảng Ninh");
        addOption(districtSelect, "quangbinh7", "Huyện Lệ Thủy");
    }else if (selectedCity === "quangnam") {
        addOption(districtSelect, "quangnam1", "Thành phố Tam Kỳ");
        addOption(districtSelect, "quangnam2", "Thành phố Hội An");
        addOption(districtSelect, "quangnam3", "Huyện Duy Xuyên");
        addOption(districtSelect, "quangnam4", "Huyện Đại Lộc");
        addOption(districtSelect, "quangnam5", "Huyện Điện Bàn");
        addOption(districtSelect, "quangnam6", "Huyện Quế Sơn");
        addOption(districtSelect, "quangnam7", "Huyện Hiệp Đức");
        addOption(districtSelect, "quangnam8", "Huyện Thăng Bình");
        addOption(districtSelect, "quangnam9", "Huyện Núi Thành");
        addOption(districtSelect, "quangnam10", "Huyện Tiên Phước");
        addOption(districtSelect, "quangnam11", "Huyện Bắc Trà My");
        addOption(districtSelect, "quangnam12", "Huyện Nam Trà My");
        addOption(districtSelect, "quangnam13", "Huyện Đông Giang");
        addOption(districtSelect, "quangnam14", "Huyện Phước Sơn");
        addOption(districtSelect, "quangnam15", "Huyện Nam Giang");
        addOption(districtSelect, "quangnam16", "Huyện Tây Giang");
        addOption(districtSelect, "quangnam17", "Huyện Sông Trà");
        addOption(districtSelect, "quangnam18", "Huyện Phú Ninh");
    }else if (selectedCity === "quangngai") {
        addOption(districtSelect, "quangngai1", "Thành phố Quảng Ngãi");
        addOption(districtSelect, "quangngai2", "Huyện Bình Sơn");
        addOption(districtSelect, "quangngai3", "Huyện Trà Bồng");
        addOption(districtSelect, "quangngai4", "Huyện Sơn Tịnh");
        addOption(districtSelect, "quangngai5", "Huyện Tư Nghĩa");
        addOption(districtSelect, "quangngai6", "Huyện Sơn Hà");
        addOption(districtSelect, "quangngai7", "Huyện Sơn Tây");
        addOption(districtSelect, "quangngai8", "Huyện Minh Long");
        addOption(districtSelect, "quangngai9", "Huyện Nghĩa Hành");
        addOption(districtSelect, "quangngai10", "Huyện Mộ Đức");
        addOption(districtSelect, "quangngai11", "Huyện Đức Phổ");
        addOption(districtSelect, "quangngai12", "Huyện Ba Tơ");
        addOption(districtSelect, "quangngai13", "Huyện Lý Sơn");
    } else if (selectedCity === "quangninh") {
        addOption(districtSelect, "quangninh1", "Thành phố Hạ Long");
        addOption(districtSelect, "quangninh2", "Thành phố Cẩm Phả");
        addOption(districtSelect, "quangninh3", "Thành phố Uông Bí");
        addOption(districtSelect, "quangninh4", "Huyện Đông Triều");
        addOption(districtSelect, "quangninh5", "Huyện Quảng Yên");
        addOption(districtSelect, "quangninh6", "Huyện Cô Tô");
        addOption(districtSelect, "quangninh7", "Huyện Tiên Yên");
        addOption(districtSelect, "quangninh8", "Huyện Bình Liêu");
        addOption(districtSelect, "quangninh9", "Huyện Ba Chẽ");
        addOption(districtSelect, "quangninh10", "Huyện Đầm Hà");
        addOption(districtSelect, "quangninh11", "Huyện Hải Hà");
        addOption(districtSelect, "quangninh12", "Huyện Vân Đồn");
    } else if (selectedCity === "quangtri") {
        addOption(districtSelect, "quangtri1", "Thành phố Đông Hà");
        addOption(districtSelect, "quangtri2", "Thị xã Quảng Trị");
        addOption(districtSelect, "quangtri3", "Huyện Vĩnh Linh");
        addOption(districtSelect, "quangtri4", "Huyện Hướng Hóa");
        addOption(districtSelect, "quangtri5", "Huyện Gio Linh");
        addOption(districtSelect, "quangtri6", "Huyện Đa Krông");
        addOption(districtSelect, "quangtri7", "Huyện Cam Lộ");
        addOption(districtSelect, "quangtri8", "Huyện Triệu Phong");
        addOption(districtSelect, "quangtri9", "Huyện Hải Lăng");
        addOption(districtSelect, "quangtri10", "Huyện Cồn Cỏ");
    }else if (selectedCity === "soctrang") {
        addOption(districtSelect, "soctrang1", "Thành phố Sóc Trăng");
        addOption(districtSelect, "soctrang2", "Huyện Châu Thành");
        addOption(districtSelect, "soctrang3", "Huyện Kế Sách");
        addOption(districtSelect, "soctrang4", "Huyện Mỹ Tú");
        addOption(districtSelect, "soctrang5", "Huyện Mỹ Xuyên");
        addOption(districtSelect, "soctrang6", "Huyện Thạnh Trị");
        addOption(districtSelect, "soctrang7", "Huyện Long Phú");
        addOption(districtSelect, "soctrang8", "Huyện Cù Lao Dung");
        addOption(districtSelect, "soctrang9", "Huyện Vĩnh Châu");
        addOption(districtSelect, "soctrang10", "Huyện Ngã Năm");
        addOption(districtSelect, "soctrang11", "Huyện Trần Đề");
    } else if (selectedCity === "sonla") {
        addOption(districtSelect, "sonla1", "Thành phố Sơn La");
        addOption(districtSelect, "sonla2", "Huyện Quỳnh Nhai");
        addOption(districtSelect, "sonla3", "Huyện Mường La");
        addOption(districtSelect, "sonla4", "Huyện Thuận Châu");
        addOption(districtSelect, "sonla5", "Huyện Bắc Yên");
        addOption(districtSelect, "sonla6", "Huyện Phù Yên");
        addOption(districtSelect, "sonla7", "Huyện Mai Sơn");
        addOption(districtSelect, "sonla8", "Huyện Yên Châu");
        addOption(districtSelect, "sonla9", "Huyện Sông Mã");
        addOption(districtSelect, "sonla10", "Huyện Mộc Châu");
        addOption(districtSelect, "sonla11", "Huyện Sốp Cộp");
        addOption(districtSelect, "sonla12", "Huyện Vân Hồ");
    }else if (selectedCity === "tayninh") {
        addOption(districtSelect, "tayninh1", "Thành phố Tây Ninh");
        addOption(districtSelect, "tayninh2", "Huyện Tân Biên");
        addOption(districtSelect, "tayninh3", "Huyện Tân Châu");
        addOption(districtSelect, "tayninh4", "Huyện Dương Minh Châu");
        addOption(districtSelect, "tayninh5", "Huyện Châu Thành");
        addOption(districtSelect, "tayninh6", "Huyện Hòa Thành");
        addOption(districtSelect, "tayninh7", "Huyện Gò Dầu");
        addOption(districtSelect, "tayninh8", "Huyện Bến Cầu");
        addOption(districtSelect, "tayninh9", "Huyện Trảng Bàng");
    } else if (selectedCity === "thaibinh") {
        addOption(districtSelect, "thaibinh1", "Thành phố Thái Bình");
        addOption(districtSelect, "thaibinh2", "Huyện Quỳnh Phụ");
        addOption(districtSelect, "thaibinh3", "Huyện Hưng Hà");
        addOption(districtSelect, "thaibinh4", "Huyện Đông Hưng");
        addOption(districtSelect, "thaibinh5", "Huyện Vũ Thư");
        addOption(districtSelect, "thaibinh6", "Huyện Kiến Xương");
        addOption(districtSelect, "thaibinh7", "Huyện Tiền Hải");
        addOption(districtSelect, "thaibinh8", "Huyện Thái Thuỵ");
    } else if (selectedCity === "thainguyen") {
        addOption(districtSelect, "thainguyen1", "Thành phố Thái Nguyên");
        addOption(districtSelect, "thainguyen2", "Thành phố Sông Công");
        addOption(districtSelect, "thainguyen3", "Huyện Định Hóa");
        addOption(districtSelect, "thainguyen4", "Huyện Phú Lương");
        addOption(districtSelect, "thainguyen5", "Huyện Đồng Hỷ");
        addOption(districtSelect, "thainguyen6", "Huyện Võ Nhai");
        addOption(districtSelect, "thainguyen7", "Huyện Đại Từ");
        addOption(districtSelect, "thainguyen8", "Huyện Phú Bình");
        addOption(districtSelect, "thainguyen9", "Huyện Phổ Yên");
    } else if (selectedCity === "thanhhoa") {
        addOption(districtSelect, "thanhhoa1", "Thành phố Thanh Hóa");
        addOption(districtSelect, "thanhhoa2", "Thị xã Bỉm Sơn");
        addOption(districtSelect, "thanhhoa3", "Thị xã Sầm Sơn");
        addOption(districtSelect, "thanhhoa4", "Huyện Mường Lát");
        addOption(districtSelect, "thanhhoa5", "Huyện Quan Hóa");
        addOption(districtSelect, "thanhhoa6", "Huyện Bá Thước");
        addOption(districtSelect, "thanhhoa7", "Huyện Quan Sơn");
        addOption(districtSelect, "thanhhoa8", "Huyện Lang Chánh");
        addOption(districtSelect, "thanhhoa9", "Huyện Ngọc Lặc");
        addOption(districtSelect, "thanhhoa10", "Huyện Cẩm Thủy");
        addOption(districtSelect, "thanhhoa11", "Huyện Hà Trung");
        addOption(districtSelect, "thanhhoa12", "Huyện Vĩnh Lộc");
        addOption(districtSelect, "thanhhoa13", "Huyện Yên Định");
        addOption(districtSelect, "thanhhoa14", "Huyện Thọ Xuân");
        addOption(districtSelect, "thanhhoa15", "Huyện Thường Xuân");
        addOption(districtSelect, "thanhhoa16", "Huyện Triệu Sơn");
        addOption(districtSelect, "thanhhoa17", "Huyện Thiệu Hóa");
        addOption(districtSelect, "thanhhoa18", "Huyện Hoằng Hoá");
        addOption(districtSelect, "thanhhoa19", "Huyện Hậu Lộc");
        addOption(districtSelect, "thanhhoa20", "Huyện Nga Sơn");
        addOption(districtSelect, "thanhhoa21", "Huyện Như Thanh");
        addOption(districtSelect, "thanhhoa22", "Huyện Như Xuân");
        addOption(districtSelect, "thanhhoa23", "Huyện Nông Cống");
        addOption(districtSelect, "thanhhoa24", "Huyện Đông Sơn");
        addOption(districtSelect, "thanhhoa25", "Huyện Quảng Xương");
    }else if (selectedCity === "thuathienhue") {
        addOption(districtSelect, "thuathienhue1", "Thành phố Huế");
        addOption(districtSelect, "thuathienhue2", "Huyện Phong Điền");
        addOption(districtSelect, "thuathienhue3", "Huyện Quảng Điền");
        addOption(districtSelect, "thuathienhue4", "Huyện Phú Vang");
        addOption(districtSelect, "thuathienhue5", "Huyện Hương Thủy");
        addOption(districtSelect, "thuathienhue6", "Huyện Hương Trà");
        addOption(districtSelect, "thuathienhue7", "Huyện A Lưới");
        addOption(districtSelect, "thuathienhue8", "Huyện Phú Lộc");
        addOption(districtSelect, "thuathienhue9", "Huyện Nam Đông");
    } else if (selectedCity === "tiengiang") {
        addOption(districtSelect, "tiengiang1", "Thành phố Mỹ Tho");
        addOption(districtSelect, "tiengiang2", "Thị xã Gò Công");
        addOption(districtSelect, "tiengiang3", "Thị xã Cai Lậy");
        addOption(districtSelect, "tiengiang4", "Huyện Cái Bè");
        addOption(districtSelect, "tiengiang5", "Huyện Cai Lậy");
        addOption(districtSelect, "tiengiang6", "Huyện Châu Thành");
        addOption(districtSelect, "tiengiang7", "Huyện Chợ Gạo");
        addOption(districtSelect, "tiengiang8", "Huyện Gò Công Đông");
        addOption(districtSelect, "tiengiang9", "Huyện Gò Công Tây");
        addOption(districtSelect, "tiengiang10", "Huyện Tân Phước");
    } else if (selectedCity === "travinh") {
        addOption(districtSelect, "travinh1", "Thành phố Trà Vinh");
        addOption(districtSelect, "travinh2", "Huyện Càng Long");
        addOption(districtSelect, "travinh3", "Huyện Cầu Kè");
        addOption(districtSelect, "travinh4", "Huyện Tiểu Cần");
        addOption(districtSelect, "travinh5", "Huyện Châu Thành");
        addOption(districtSelect, "travinh6", "Huyện Trà Cú");
        addOption(districtSelect, "travinh7", "Huyện Cầu Ngang");
        addOption(districtSelect, "travinh8", "Huyện Duyên Hải");
    } else if (selectedCity === "tuyenquang") {
        addOption(districtSelect, "tuyenquang1", "Thành phố Tuyên Quang");
        addOption(districtSelect, "tuyenquang2", "Huyện Lâm Bình");
        addOption(districtSelect, "tuyenquang3", "Huyện Na Hang");
        addOption(districtSelect, "tuyenquang4", "Huyện Chiêm Hóa");
        addOption(districtSelect, "tuyenquang5", "Huyện Hàm Yên");
        addOption(districtSelect, "tuyenquang6", "Huyện Yên Sơn");
        addOption(districtSelect, "tuyenquang7", "Huyện Sơn Dương");
    } else if (selectedCity === "vinhlong") {
        addOption(districtSelect, "vinhlong1", "Thành phố Vĩnh Long");
        addOption(districtSelect, "vinhlong2", "Huyện Long Hồ");
        addOption(districtSelect, "vinhlong3", "Huyện Mang Thít");
        addOption(districtSelect, "vinhlong4", "Huyện Vũng Liêm");
        addOption(districtSelect, "vinhlong5", "Huyện Tam Bình");
        addOption(districtSelect, "vinhlong6", "Huyện Bình Minh");
        addOption(districtSelect, "vinhlong7", "Huyện Trà Ôn");
        addOption(districtSelect, "vinhlong8", "Huyện Bình Tân");
    } else if (selectedCity === "vinhphuc") {
        addOption(districtSelect, "vinhphuc1", "Thành phố Vĩnh Yên");
        addOption(districtSelect, "vinhphuc2", "Thị xã Phúc Yên");
        addOption(districtSelect, "vinhphuc3", "Huyện Lập Thạch");
        addOption(districtSelect, "vinhphuc4", "Huyện Tam Dương");
        addOption(districtSelect, "vinhphuc5", "Huyện Tam Đảo");
        addOption(districtSelect, "vinhphuc6", "Huyện Bình Xuyên");
        addOption(districtSelect, "vinhphuc7", "Huyện Yên Lạc");
        addOption(districtSelect, "vinhphuc8", "Huyện Vĩnh Tường");
        addOption(districtSelect, "vinhphuc9", "Huyện Sông Lô");
    } else if (selectedCity === "yenbai") {
        addOption(districtSelect, "yenbai1", "Thành phố Yên Bái");
        addOption(districtSelect, "yenbai2", "Huyện Nghĩa Lộ");
        addOption(districtSelect, "yenbai3", "Huyện Lục Yên");
        addOption(districtSelect, "yenbai4", "Huyện Văn Yên");
        addOption(districtSelect, "yenbai5", "Huyện Mù Cang Chải");
        addOption(districtSelect, "yenbai6", "Huyện Trấn Yên");
        addOption(districtSelect, "yenbai7", "Huyện Trạm Tấu");
        addOption(districtSelect, "yenbai8", "Huyện Văn Chấn");
        addOption(districtSelect, "yenbai9", "Huyện Yên Bình");
    }

        // Thêm các điều kiện khác tương ứng với các thành phố khác

}

    function addOption(select, value, text) {
    var option = document.createElement("option");
    option.value = value;
    option.text = text;
    select.add(option);
}
