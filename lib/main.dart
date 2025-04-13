import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, size: 30, color: Colors.orange[900]),
                    Text(
                      "Search...",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange[900],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            Stack(
              children: [
                IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.white),
                  onPressed: () {},
                ),

                Positioned(
                    top: 10,
                    right: 8,
                    child: Container(
                  child: Icon(Icons.circle, size: 12, color: Colors.green,),
                ))
              ],
            ),
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://previews.123rf.com/images/archamr13/archamr131308/archamr13130800078/21510857-background-batik.jpg",
              ), // Ganti dengan URL gambar
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),

      body: ListView(

        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.qr_code_scanner,
                    color: Colors.grey[600],
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                Row(
                  children: [
                    Container(width: 0.5, height: 35, color: Colors.grey),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.wallet_outlined,
                              color: Colors.orange[900],
                              size: 20,
                            ),
                            Text("Rp30.000", style: TextStyle(fontSize: 12)),
                          ],
                        ),

                        Text(
                          "THR 100RB",
                          style: TextStyle(
                            color: Colors.orange[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 0.5, height: 35, color: Colors.grey),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.token_rounded,
                              color: Colors.yellow[800],
                              size: 20,
                            ),
                            Text("Cek-in!", style: TextStyle(fontSize: 12)),
                          ],
                        ),

                        Text(
                          "Klaim 100R",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(width: 0.5, height: 35, color: Colors.grey),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.wallet_giftcard_outlined,
                              color: Colors.orange[800],
                              size: 20,
                            ),
                            Text("SPayLater", style: TextStyle(fontSize: 12)),
                          ],
                        ),

                        Text(
                          "Diskon 40RB",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 0.5, height: 35, color: Colors.grey),
                    SizedBox(width: 10),
                    Container(
                      child: Icon(
                        Icons.currency_yen_rounded,
                        color: Colors.orange[800],
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 75,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(200, 200, 200, 1),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(6),

                          child: Icon(
                            Icons.smartphone,
                            size: 30,
                            color: Colors.teal,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Pulsa, Tagihan, dan Tiket",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(200, 200, 200, 1),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(6),

                          child: Icon(
                            Icons.check_box,
                            size: 30,
                            color: Colors.orange[800],
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "ShopeeFood",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(200, 200, 200, 1),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(6),

                          child: Icon(
                            Icons.money,
                            size: 30,
                            color: Colors.orange[800],
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "ShopeeVIP",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(200, 200, 200, 1),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(6),

                          child: Icon(
                            Icons.games,
                            size: 30,
                            color: Colors.blue[800],
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Shopee Games",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(200, 200, 200, 1),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(6),

                          child: Icon(
                            Icons.heart_broken,
                            size: 30,
                            color: Colors.red[800],
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Shopee Pilih Lokal",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(200, 200, 200, 1),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(6),

                          child: Icon(
                            Icons.shopping_bag,
                            size: 30,
                            color: Colors.red[800],
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Shopee Pilih Lokal",
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Shopee Live",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.orange[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey[400],
                            size: 15,
                          ),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  height: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://cdn-oss.ginee.com/official/wp-content/uploads/2021/07/image-135.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 40, // Atur tinggi area gradasi
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(5)),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Color.fromRGBO(0, 0, 0, 0.7), // Hitam pekat di bawah
                                          Color.fromRGBO(0, 0, 0, 0.4), // Lebih transparan di tengah
                                          Color.fromRGBO(0, 0, 0, 0.0), // Transparan di atas
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  bottom: 3,
                                  right: 3,
                                  left: 3,
                                  child: Text("FLASH SALE JELANG LEBARAN", style: TextStyle( color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold), maxLines: 2,),
                                ),

                                Positioned(
                                  top: 4, // Atur posisi dari atas
                                  left: 4, // Atur posisi dari kiri
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.orange[800], // Warna latar belakang merah seperti tanda live
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.circle, color: Colors.white, size: 10,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "LIVE",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Stack(
                              children: [
                                // Gambar Background
                                Container(
                                  height: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://cdn-oss.ginee.com/official/wp-content/uploads/2021/07/image-135.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 40, // Atur tinggi area gradasi
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(5),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Color.fromRGBO(
                                            0,
                                            0,
                                            0,
                                            0.7,
                                          ), // Hitam pekat di bawah
                                          Color.fromRGBO(
                                            0,
                                            0,
                                            0,
                                            0.4,
                                          ), // Lebih transparan di tengah
                                          Color.fromRGBO(
                                            0,
                                            0,
                                            0,
                                            0.0,
                                          ), // Transparan di atas
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  bottom: 3,
                                  right: 3,
                                  left: 3,
                                  child: Text(
                                    "RAMADHAN BERKAH ✨",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 4, // Atur posisi dari atas
                                  left: 4, // Atur posisi dari kiri
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color:
                                          Colors
                                              .orange[800], // Warna latar belakang merah seperti tanda live
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "LIVE",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Shopee Video",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.orange[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey[400],
                            size: 15,
                          ),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  height: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://cdn-oss.ginee.com/official/wp-content/uploads/2021/07/image-135.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 40, // Atur tinggi area gradasi
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Color.fromRGBO(0, 0, 0, 0.0), // Hitam pekat di bawah
                                          Color.fromRGBO(0, 0, 0, 0.4), // Lebih transparan di tengah
                                          Color.fromRGBO(0, 0, 0, 0.7), // Transparan di atas
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 3,
                                  right: 3,
                                  left: 3,
                                  child: Row(
                                    children: [
                                      Icon(Icons.play_arrow , color: Colors.white,),
                                      Text("3 RB", style: TextStyle( color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold), maxLines: 2,),
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Stack(
                              children: [
                                // Gambar Background
                                Container(
                                  height: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://cdn-oss.ginee.com/official/wp-content/uploads/2021/07/image-135.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 40, // Atur tinggi area gradasi
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(5),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Color.fromRGBO(
                                            0,
                                            0,
                                            0,
                                            0.0,
                                          ), // Hitam pekat di bawah
                                          Color.fromRGBO(
                                            0,
                                            0,
                                            0,
                                            0.4,
                                          ), // Lebih transparan di tengah
                                          Color.fromRGBO(
                                            0,
                                            0,
                                            0,
                                            0.7,
                                          ), // Transparan di atas
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 3,
                                  right: 3,
                                  left: 3,
                                  child: Row(
                                    children: [
                                      Icon(Icons.play_arrow, color: Colors.white,),
                                      Text(
                                        "234 RB",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),




          Expanded(child: Container(

            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Expanded( child: Container(
                    height: 270,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded( child: Container(
                  height: 270,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
                ),
              ],
            )
          ))
        ],
      ),
    );
  }
}
