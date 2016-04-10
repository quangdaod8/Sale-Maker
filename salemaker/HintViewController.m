//
//  HintViewController.m
//  salemaker
//
//  Created by Duy Quang on 4/1/16.
//  Copyright © 2016 duyquang. All rights reserved.
//

#import "HintViewController.h"

@interface HintViewController ()

@end

@implementation HintViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    _txtHint.text = @"Vì sao hình ảnh sản phẩm lại quan trọng?\n+ Hình ảnh sản phẩm đẹp & nổi bật sẽ thu hút khách hàng mua sản phẩm.\n+ Trong trường hợp khách hàng xem sản phẩm nhưng chưa thể mua ngay, họ sẽ lưu lại hình ảnh sản phẩm.\n+ Khách hàng sẽ chia sẻ hình ảnh sản phẩm của bạn.\n\nSale Maker ra đời giúp bạn tạo hình ảnh sản phẩm Nhanh - Đẹp - Hiệu quả.\nKhông những vậy, tôi sẽ hướng dẫn bạn tạo hình ảnh sản phẩm tối ưu:\n\nHình ảnh sản phẩm:\n+ Ảnh chụp sản phẩm phải rõ nét, đủ ánh sáng.\n+ Chụp ảnh trên nền trắng hoặc tối giúp nổi bật sản phẩm.\n+ Nên chỉnh sửa ảnh qua 1 số ứng dụng để có được hình ảnh đẹp nhất.\n+ Gộp nhiều ảnh thành 1 trước khi tạo sản phẩm\nVí dụ: Ảnh chụp trước & sau của 1 chiếc váy\n+ Ảnh sản phẩm được Sale Maker cắt lại thành hình vuông.\nTheo 1 nghiên cứu, ảnh sản phẩm hình vuông thu hút hơn 40% so với ảnh hình chữ nhật.\nẢnh hình vuông giúp tối ưu hiển thị trên Facebook & Instagram hơn so với ảnh chữ nhật.\n\nTên sản phẩm:\n+ Ngắn gọn, đúng chính tả.\n+ Tận dụng hình ảnh:\nGiả sử ảnh sản phẩm là 1 chiếc áo sơ mi kẻ ca-rô hiệu Dior.\nBạn có thể đặt tên sản phẩm là: “Sơ mi Dior” thay vì “Áo sơ mi kẻ ca-rô Dior”.\nBởi nhìn vào ảnh sản phẩm khách hàng đã biết đây là 1 chiếc áo, kẻ ca-rô, chỉ có thương hiệu Dior là khó nhận thấy, hãy đặt tên gây ấn tượng với khách hàng.\n\nGiá:\n+ Ghi đầy đủ giá, tránh sử dụng kí tự “k”\nVí dụ: 150.000 thay vì 150k\n+ Thêm dấu “.” sau mỗi 1 nghìn đơn vị\nVí dụ: 1.500.000 thay vì 1500000\n+ Sale Maker sẽ tự động thêm kí tự vnđ sau giá, vui lòng không nhập gì thêm ngoài giá sản phẩm\n\nLiên hệ:\nHãy tạo liên hệ 1 cách đơn giản nhưng nổi bật giúp khách hàng liên hệ ngay được với bạn.\nTrong đa số các trường hợp nên để số điện thoại của bạn.\nThêm dấu “-” giữa các số điện thoại giúp khách hàng dễ đọc & nhập hơn.\nVí dụ:\n+ Gọi: 0163-265-2615\n+ Nhận Order: 0163-265-2615\n+ Chuyên Sỉ-Lẻ: 0163-265-2615\n+ Thuy's Boutique: 0163-265-2615\n+ 94-Lê Chí Thanh: 0163-265-2615\n\nMột số gợi ý khác:\n+ Để tiết kiệm thời gian hãy chụp ảnh tất cả sản phẩm trước (chỉnh sửa thêm nếu cần thiết). Sau đó vào Sale Maker xây dựng hình ảnh cho từng sản phẩm. Lưu lại ảnh sản phẩm hoặc chia sẻ ngay lên Facebook, Zalo, Instagram, vv\n+ Hãy tạo phần liên hệ theo hướng dẫn ở trên sau đó lưu vào Ghi chú. Khi tạo nhiều sản phẩm khác nhau cùng liên hệ chỉ cần vào Ghi chú Copy rồi Dán. Giảm đáng kể thời gian tạo sản phẩm của bạn.\n\nHi vọng Sale Maker & những gợi ý trên của tôi sẽ góp phần thúc đẩy doanh số sản phẩm của bạn.\nChúc bạn buôn may bắn đắt.\n\nCEO Sale Maker: Đào Duy Quang";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
