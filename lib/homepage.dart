import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey,
        title: Text(
          'HamzaTask',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
       actions: [
          Row(
            children: [
             SizedBox(

               width: 100,
               child: TextFormField(
                 decoration:  InputDecoration(
                   hintText: 'Search',
                   border: OutlineInputBorder(
                       borderRadius:BorderRadius.circular(5.0)),
                 ),
               ),
             ),
              GestureDetector(
                child: Image.asset('assets/icons/shopping_cart.png'),
              )
            ],
          ),
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeTopRow(
                      text: 'HEAD TIL 1',
                    ),
                    HomeTopRow(
                      text: 'HEAD TIL 1',
                    ),
                    HomeTopRow(
                      text: 'HEAD TIL 1',
                    ),
                    HomeTopRow(
                      text: 'HEAD TIL 1',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                height: size.width / 2.5,
                width: size.width,
                child: Stack(
                  children: [
                    SizedBox(
                        height: size.width / 2.5,
                        width: size.width,
                        child: Image.asset('assets/backgroundAsset/sambuyer.png', fit: BoxFit.fill,)),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        height: size.height * 0.04,
                        width: size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'AED 300/-',
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w400),
                            ), Row(
                              children: [
                                Text(
                                  'AED 600/-',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '  50% off  ',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best practice Defination & meaning',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w400),
                  ), Text(
                    'Shop',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              SizedBox(
                height: size.height * 0.13,
                width: size.width ,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        height: size.height * 0.1,
                        width: size.width / 4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.black,
                              child: Icon(Icons.layers, size: 70,),
                            ),
                            Text('Sneakers', style: TextStyle( fontSize: 17),)
                          ],
                        ),
                      );
                    }
                ),
              ),
              SizedBox(
                height: size.height * 0.045,
              ),
              Text(
                '  #BEST TITLE ',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w400),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                childAspectRatio: 0.7),
                itemCount: 9,
                itemBuilder: (_, index) =>  Container(
                        height: size.height * 1.9,
                        width: size.width,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height: size.height * 0.15,
                                  width: size.width / 3 -10 ,
                                  child: Image.asset('assets/homeAssets/cloth.png',fit: BoxFit.fill),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: SizedBox(
                                    width: size.width/ 3 -10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.red,size: 15,),
                                            Icon(Icons.star,color: Colors.red,size: 15,),
                                            Icon(Icons.star,color: Colors.red,size: 15,),
                                          ],
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            '  50% off  ',
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'AED 600/-',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '  50% off  ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                            Text('00.00/- '),
                            Text('Product Service '),
                            Text('Tile Product'),
                          ],
                        ),
                      ),
              ),
              Text(
                '  #TOP TITLE ',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: size.height * 0.13,
                width: size.width ,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        height: size.height * 0.1,
                        width: size.width / 4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.black,
                              child: Image.asset('assets/homeAssets/drawer_profile.png'),
                            ),
                            Text("@_User${index}", style: TextStyle( fontSize: 17, color: Colors.grey),)
                          ],
                        ),
                      );
                    }
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
                width: size.width,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '  #SHOP BY CATEGORY ',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '  View All ',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height * 0.1,
                    width: size.width / 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children:  [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.layers,color: Colors.white,),
                        ),
                        Text("Sub Category", style: TextStyle( fontSize: 17, color: Colors.grey),)
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.width / 3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children:  [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.layers,color: Colors.white,),
                        ),
                        Text("Sub Category", style: TextStyle( fontSize: 17, color: Colors.grey),)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.25,
                width: size.width ,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        height: size.height * 1.5,
                        width: size.width / 3 -12,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height: size.height * 0.15,
                                  width: size.width / 3 -10 ,
                                  child: Image.asset('assets/homeAssets/cloth.png',fit: BoxFit.fill),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: SizedBox(
                                    width: size.width/ 3 -10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.red,size: 15,),
                                            Icon(Icons.star,color: Colors.red,size: 15,),
                                            Icon(Icons.star,color: Colors.red,size: 15,),
                                          ],
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            '  50% off  ',
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'AED 600/-',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '  50% off  ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                            Text('00.00/- '),
                            Text('Product Service '),
                            Text('Tile Product'),
                          ],
                        ),
                      );
                    }
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              SizedBox(
                  height: size.height * 0.1,
                  width: size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('TERM OF USE'),
                          Text('CONTACT'),
                          Text('CAREER'),
                          Text('AREA RANGE'),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('USellUp'),
                          Text('Preject by EZENESS TECHNOLOGY'),
                        ],
                      ),
                    ],
                  )),

            ],
          ),
        ),
      ),
    );
  }
}

class bottumListView extends StatelessWidget {
  const bottumListView({
    Key? key,
    required this.size,
    required this.assetPath, required this.assetNametext, required this.assetNameTextSmall,
  }) : super(key: key);

  final Size size;
  final String assetPath;
  final String assetNametext;
  final String assetNameTextSmall;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width / 3 ,
      width: size.width / 3 ,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            child: SizedBox(
              height: size.width / 3 - 10,
              width: size.width / 3 -10 ,
              child: Image.asset('assets/homeAssets/$assetPath.png',fit: BoxFit.fill),
            ),
          ),
          Positioned(
              top: 0.0,
              left: 0.0,
              child: SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/homeAssets/50-percent.png'))),
          Positioned(
              bottom: 20,
              child: Container(
                  height: size.width / 3 - size.width / 4.8 ,
                  width: size.width / 3 - 10,
                  color:Colors.black45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( '$assetNametext',
                          style: TextStyle(fontSize: 12, color: Colors.white)
                      ),
                      Text( '$assetNameTextSmall',
                          style: TextStyle(fontSize: 6, color: Colors.white, fontStyle: FontStyle.italic)
                      ),
                    ],
                  )
              ))
        ],
      ),
    );
  }
}

class HomeBottumWidget extends StatelessWidget {
  final String AssetPath;
  final String text;
  const HomeBottumWidget({
    Key? key,
    required this.text, required this.AssetPath
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            height: 18,
            width: 18,
            child: Image.asset('assets/homeAssets/$AssetPath.png')),
        Text('$text', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Colors.white),)
      ],
    );
  }
}

class HomeTopRow extends StatelessWidget {
  final String text ;
  const HomeTopRow({Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.height * 0.05,
          width: size.width / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: Color(0xffF8EEF8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 4.0,
              ),
              Text(text, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),)
            ],
          ),
        )
      ],
    );
  }
}
