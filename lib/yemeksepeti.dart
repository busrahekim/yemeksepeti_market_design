import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yemeksepeti_design/colors.dart';
import 'package:yemeksepeti_design/products.dart';

class YemekSepeti extends StatefulWidget {
  const YemekSepeti({Key? key}) : super(key: key);

  @override
  _YemekSepetiState createState() => _YemekSepetiState();
}

class _YemekSepetiState extends State<YemekSepeti> {
  var tfController = TextEditingController();
  late PageController _pageController;

  List<String> images = [
    "https://cdnuploads.aa.com.tr/uploads/sirkethaberleri/Contents/2021/12/18/thumbs_b_c_d83198e92b533468fb63333420c976bc.jpg",
    "https://cdnuploads.aa.com.tr/uploads/sirkethaberleri/Contents/2021/12/18/thumbs_b_c_d83198e92b533468fb63333420c976bc.jpg",
    "https://cdnuploads.aa.com.tr/uploads/sirkethaberleri/Contents/2021/12/18/thumbs_b_c_d83198e92b533468fb63333420c976bc.jpg",
    "https://cdnuploads.aa.com.tr/uploads/sirkethaberleri/Contents/2021/12/18/thumbs_b_c_d83198e92b533468fb63333420c976bc.jpg",
    "https://cdnuploads.aa.com.tr/uploads/sirkethaberleri/Contents/2021/12/18/thumbs_b_c_d83198e92b533468fb63333420c976bc.jpg",
    "https://cdnuploads.aa.com.tr/uploads/sirkethaberleri/Contents/2021/12/18/thumbs_b_c_d83198e92b533468fb63333420c976bc.jpg",
    "https://cdnuploads.aa.com.tr/uploads/sirkethaberleri/Contents/2021/12/18/thumbs_b_c_d83198e92b533468fb63333420c976bc.jpg",
    "https://cdnuploads.aa.com.tr/uploads/sirkethaberleri/Contents/2021/12/18/thumbs_b_c_d83198e92b533468fb63333420c976bc.jpg",
    "https://cdnuploads.aa.com.tr/uploads/sirkethaberleri/Contents/2021/12/18/thumbs_b_c_d83198e92b533468fb63333420c976bc.jpg",
  ];

  /*Future<List<Products>> getProducts() async {
    var productList = <Products>[];

    var p1 = Products(
        productID: 1,
        productImage:
            "https://thumbs.dreamstime.com/b/bell-vector-icon-bell-vector-icon-isolated-white-background-116568708.jpg",
        productName: "Yeni Ürünler",
        quantity: "319 ürün");
    var p2 = Products(
        productID: 2,
        productImage:
            "https://media.istockphoto.com/photos/wicker-basket-with-assorted-baking-products-isolated-on-white-picture-id924464130?k=20&m=924464130&s=612x612&w=0&h=Y8zHQa7d30SYnlC5TdAxhd5uw7eHHBbhkkawp_tlk3g=",
        productName: "Fırından",
        quantity: "72 ürün");
    var p3 = Products(
        productID: 3,
        productImage:
            "https://www.damacanasu.com.tr/wp-content/uploads/2021/01/damacana2.jpg",
        productName: "Su",
        quantity: "26 ürün");
    var p4 = Products(
        productID: 4,
        productImage:
            "https://media.istockphoto.com/photos/image-of-dairy-products-on-white-background-picture-id470310068?k=20&m=470310068&s=170667a&w=0&h=4Ue7DMmJqZwmOAfuNrW0byIcMr7-VgtrHIbq4hZ3KtE=",
        productName: "Süt & Kahvaltılık",
        quantity: "269 ürün");

    var p5 = Products(
        productID: 5,
        productImage:
            "https://thumbs.dreamstime.com/b/red-apple-isolated-clipping-path-19130134.jpg",
        productName: "Meyve  & Sebze",
        quantity: "25 ürün");
    var p6 = Products(
        productID: 6,
        productImage:
            "https://media.istockphoto.com/photos/chocolate-blocks-picture-id497801056?k=20&m=497801056&s=612x612&w=0&h=LAgL5j9BfTB598vQASqQ4TGCfk2-7lkCB7wxXCf1hec=",
        productName: "Atıştırmalık",
        quantity: "666 ürün");
    var p7 = Products(
        productID: 7,
        productImage:
            "https://media.istockphoto.com/photos/soft-drink-picture-id968834938?k=20&m=968834938&s=612x612&w=0&h=TLQyvArFMIlX9NeOPjcRK0P3_oReNzOqQCysbH00a2Y=",
        productName: "İçecek",
        quantity: "310 ürün");
    var p8 = Products(
        productID: 8,
        productImage: "https://pasaportpizza.com/RESIM/pizza-ege.jpg",
        productName: "Hazır  Gıda",
        quantity: "112 ürün");

    var p9 = Products(
        productID: 9,
        productImage:
            "https://ayb.akinoncdn.com/products/2021/05/06/99/2f096cbd-924b-4c94-8665-6fa21b5ab405_size780x780_quality60_cropCenter.jpg",
        productName: "Dondurma",
        quantity: "92 ürün");
    var p10 = Products(
        productID: 10,
        productImage:
            "https://sc04.alicdn.com/kf/U5d84e97fa1ac4c31997a3bdbdada3324r.jpg",
        productName: "Kahve",
        quantity: "57 ürün");
    var p11 = Products(
        productID: 11,
        productImage:
            "https://media.istockphoto.com/photos/plate-of-grilled-chicken-with-vegetables-on-wite-background-top-view-picture-id1055015208?k=20&m=1055015208&s=612x612&w=0&h=cgoCUIdwpXEHTvHmkS5Qcn2NRsQyhlhM2s65iIyKEKg=",
        productName: "Taze Yemek",
        quantity: "27 ürün");
    var p12 = Products(
        productID: 12,
        productImage:
            "https://media.istockphoto.com/photos/whole-grain-wheat-flour-and-ears-isolated-on-white-picture-id690134076?k=20&m=690134076&s=612x612&w=0&h=uDfOiibPE3Dm8-afKqdPOv2FASgVnGmDO9OQOuPQRZE=",
        productName: "Temel Gıda",
        quantity: "394 ürün");

    var p13 = Products(
        productID: 13,
        productImage:
            "https://media.istockphoto.com/photos/whole-grain-wheat-flour-and-ears-isolated-on-white-picture-id690134076?k=20&m=690134076&s=612x612&w=0&h=uDfOiibPE3Dm8-afKqdPOv2FASgVnGmDO9OQOuPQRZE=",
        productName: "Temel Gıda",
        quantity: "319 ürün");
    var p14 = Products(
        productID: 14,
        productImage:
            "https://media.istockphoto.com/photos/wicker-basket-with-assorted-baking-products-isolated-on-white-picture-id924464130?k=20&m=924464130&s=612x612&w=0&h=Y8zHQa7d30SYnlC5TdAxhd5uw7eHHBbhkkawp_tlk3g=",
        productName: "Fırından",
        quantity: "72 ürün");
    var p15 = Products(
        productID: 15,
        productImage:
            "https://www.damacanasu.com.tr/wp-content/uploads/2021/01/damacana2.jpg",
        productName: "Su",
        quantity: "26 ürün");
    var p16 = Products(
        productID: 16,
        productImage:
            "https://media.istockphoto.com/photos/image-of-dairy-products-on-white-background-picture-id470310068?k=20&m=470310068&s=170667a&w=0&h=4Ue7DMmJqZwmOAfuNrW0byIcMr7-VgtrHIbq4hZ3KtE=",
        productName: "Süt & Kahvaltılık",
        quantity: "269 ürün");

    productList.add(p1);
    productList.add(p2);
    productList.add(p3);
    productList.add(p4);

    productList.add(p5);
    productList.add(p6);
    productList.add(p7);
    productList.add(p8);

    productList.add(p9);
    productList.add(p10);
    productList.add(p11);
    productList.add(p12);

    productList.add(p13);
    productList.add(p14);
    productList.add(p15);
    productList.add(p16);

    return productList;
  }*/

  Future<List<Products>> getProducts() async {
    var productList = <Products>[];

    var p1 = Products(
        productID: 1,
        productImage: "images/yeniurunler.jpg",
        productName: "Yeni Ürünler",
        quantity: "319 ürün");
    var p2 = Products(
        productID: 2,
        productImage: "images/fırından.jpg",
        productName: "Fırından",
        quantity: "72 ürün");
    var p3 = Products(
        productID: 3,
        productImage: "images/damacana.jpg",
        productName: "Su",
        quantity: "26 ürün");
    var p4 = Products(
        productID: 4,
        productImage: "images/dairy.jpg",
        productName: "Kahvaltılık",
        quantity: "269 ürün");

    var p5 = Products(
        productID: 5,
        productImage: "images/apple.jpg",
        productName: "Meyve  & Sebze",
        quantity: "25 ürün");
    var p6 = Products(
        productID: 6,
        productImage: "images/chocolate.jpg",
        productName: "Atıştırmalık",
        quantity: "666 ürün");
    var p7 = Products(
        productID: 7,
        productImage: "images/coke.jpg",
        productName: "İçecek",
        quantity: "310 ürün");
    var p8 = Products(
        productID: 8,
        productImage: "images/pizza.jpg",
        productName: "Hazır  Gıda",
        quantity: "112 ürün");

    var p9 = Products(
        productID: 9,
        productImage: "images/icecream.jpg",
        productName: "Dondurma",
        quantity: "92 ürün");
    var p10 = Products(
        productID: 10,
        productImage: "images/coffee.jpg",
        productName: "Kahve",
        quantity: "57 ürün");
    var p11 = Products(
        productID: 11,
        productImage: "images/freshfood.jpg",
        productName: "Taze Yemek",
        quantity: "27 ürün");
    var p12 = Products(
        productID: 12,
        productImage: "images/flour.jpg",
        productName: "Temel Gıda",
        quantity: "394 ürün");

    var p13 = Products(
        productID: 13,
        productImage: "images/flour.jpg",
        productName: "Temel Gıda",
        quantity: "319 ürün");
    var p14 = Products(
        productID: 14,
        productImage: "images/fırından.jpg",
        productName: "Fırından",
        quantity: "72 ürün");
    var p15 = Products(
        productID: 15,
        productImage: "images/damacana.jpg",
        productName: "Su",
        quantity: "26 ürün");
    var p16 = Products(
        productID: 16,
        productImage: "images/dairy.jpg",
        productName: "Kahvaltılık",
        quantity: "269 ürün");

    productList.add(p1);
    productList.add(p2);
    productList.add(p3);
    productList.add(p4);

    productList.add(p5);
    productList.add(p6);
    productList.add(p7);
    productList.add(p8);

    productList.add(p9);
    productList.add(p10);
    productList.add(p11);
    productList.add(p12);

    productList.add(p13);
    productList.add(p14);
    productList.add(p15);
    productList.add(p16);

    return productList;
  }

  int activePage = 1;

  AnimatedContainer slider(List<String> images, int pagePosition, bool active) {
    double margin = active ? 10 : 20;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        image: DecorationImage(image: NetworkImage(images[pagePosition])),
        /*image: DecorationImage(
          image: AssetImage("images/indirim.jpg"),
          fit: BoxFit.cover,
        ),*/
      ),
    );
  }

  List<Widget> indicators(int imagesLength, int currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(5),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.pink : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }

  imageAnimation(PageController animation, images, pagePosition) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, widget) {
        print(pagePosition);

        return SizedBox(
          width: 200,
          height: 200,
          child: widget,
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Image.network(images[pagePosition]),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Yemeksepeti ",
                      style: TextStyle(
                          fontFamily: "MyFont",
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "market",
                      style: TextStyle(
                          backgroundColor: Colors.white,
                          fontFamily: "MyFont",
                          color: primaryColor,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Text(
                " Hızlı teslimat ",
                style: TextStyle(
                  fontFamily: "MyFont",
                  fontSize: 16,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 8.0),
              child: IconButton(
                tooltip: "Favori ürünlerinizi burada bulabilirsiniz.",
                onPressed: () {},
                icon: Image.asset(
                  "images/like.png",
                  color: Colors.white,
                ),
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                "images/back.png",
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: TextField(
              onChanged: (value) {
                print(value);
              },
              controller: tfController,
              decoration: const InputDecoration(
                hintText: "   Ürün veya Kategori Ara",
                fillColor: Colors.white,
                filled: true,
                hintStyle: TextStyle(
                  fontFamily: "MyFont",
                  fontSize: 16,
                ),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.pink,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: Row(
              children: const [
                Icon(
                  Icons.info_outline,
                  color: Colors.pink,
                ),
                Text(
                  "  Mağaza Bilgileri",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MyFont",
                  ),
                ),
                Spacer(),
                Text(
                  "Görüntüle",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "MyFont",
                      color: Colors.pink),
                )
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: PageView.builder(
                    itemCount: images.length,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      bool active = pagePosition == activePage;
                      return slider(images, pagePosition, active);
                    }),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicators(images.length, activePage))
            ],
          ),
          Expanded(
            flex: 1,
            child: FutureBuilder<List<Products>>(
              future: getProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var yListe = snapshot.data;
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4, childAspectRatio: 1),
                    itemCount: yListe!.length,
                    itemBuilder: (context, index) {
                      var y = yListe[index];
                      return GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            SizedBox(
                              width: 100,
                              height: 100,
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      y.productImage,
                                      fit: BoxFit.cover,
                                      width: 60,
                                      height: 60,
                                    ),
                                    /*Image.network(
                                      y.productImage,
                                      fit: BoxFit.cover,
                                      width: 60,
                                      height: 60,
                                    ),*/
                                    Text(
                                      "${y.productName}",
                                      style: const TextStyle(
                                          fontFamily: "MyFont",
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "${y.quantity}",
                                      style: const TextStyle(
                                        fontFamily: "MyFont",
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return const Center();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
