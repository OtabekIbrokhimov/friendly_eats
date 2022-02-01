import 'package:flutter/material.dart';
import 'package:lazy_loading_list/lazy_loading_list.dart';
import 'model/model1.dart';

class WebPage extends StatefulWidget {
  const WebPage({Key? key}) : super(key: key);
static const String id = "/Webpage";
  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  List<Product> product = [

    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$100", image: "assets/images/image_mael_2.jpg", category:  "french", isLike: false),
    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$70", image: "assets/images/image_mael_3.jpg", category:  "sushi", isLike: false),
    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$200", image: "assets/images/image_mael_4.jpg", category:  "branch", isLike: false),
    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$500", image: "assets/images/image_mael_5.jpg", category:  "fastfood", isLike: false),
    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$10", image: "assets/images/image_mael_6.jpg", category:  "french", isLike: false),
    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$110", image: "assets/images/image_mael_7.jpg", category:  "burger", isLike: false),
    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$155", image: "assets/images/image_mael_8.jpg", category:  "unkonwn", isLike: false),
    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$176", image: "assets/images/image_mael_9.jpg", category:  "french", isLike: false),
    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$108", image: "assets/images/image_mael_10.jpg", category:  "french", isLike: false),
    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$180", image: "assets/images/image_mael_2.jpg", category:  "french", isLike: false),
    Product(name: "Diner Streakhouse", type: "Calarodo springs", cost: "\$100", image: "assets/images/image_mael_2.jpg", category:  "french", isLike: false),
  ];
  int rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
            onPressed: (){},
            icon: ImageIcon(AssetImage("assets/icons/knife.png"),size: 40,color: Colors.white,)),
        title: Text("FriendlyEats",style: TextStyle(color: Colors.white,fontSize: 25),),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                )),
            height: 55,
            width: double.infinity,
            margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
            child: TextFormField(
              // scrollPadding: EdgeInsets.only(top: 50),
              decoration: InputDecoration(

                prefixIcon: Icon(Icons.wifi),
                hintText: "by rating",
                hintStyle: TextStyle(fontSize: 13),
                label: Text("All Restaurants",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: product.length,
                itemBuilder: (context, index){
                  return itemOfProducts(index);
                },

              )
            ],
          ),
        ),
      ),
    );

  }
  LazyLoadingList itemOfProducts(int index) {
    return LazyLoadingList(
      initialSizeOfItems: 3,
      index: index,
      hasMore: false,
      loadMore: () => print('Loading More'),
     child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  image: DecorationImage(
                    image: AssetImage(product[index].image),
                    fit: BoxFit.cover,
                  )
              ),

            ),
            Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text(product[index].name, style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold ),),
                    Text(product[index].cost,style: TextStyle(fontSize: 15, color: Colors.grey),),
                  ],)
            ),
            Row(children: [
              IconButton(onPressed: (){
                setState(() {
                  rating = 1;
                });
              }, icon: !(rating >0)? Icon(Icons.star_border_outlined,color: Colors.yellow,size: 20,):Icon(Icons.star_outlined,color: Colors.yellow,)),
              IconButton(onPressed: (){
                setState(() {
                  rating = 2;
                });
              }, icon: !(rating >1)? Icon(Icons.star_border_outlined,color: Colors.yellow,):Icon(Icons.star_outlined,color: Colors.yellow,)),
              IconButton(onPressed: (){
                setState(() {
                  rating = 3;
                });
              }, icon: !(rating >2)? Icon(Icons.star_border_outlined,color: Colors.yellow,):Icon(Icons.star_outlined,color: Colors.yellow,)),
              IconButton(onPressed: (){
                setState(() {
                  rating = 4;
                });
              }, icon: !(rating >3)? Icon(Icons.star_border_outlined,color: Colors.yellow,):Icon(Icons.star_outlined,color: Colors.yellow,)),
              IconButton(onPressed: (){
                setState(() {
                  rating = 5;
                });
              }, icon: !(rating >4)? Icon(Icons.star_border_outlined,color: Colors.yellow,):Icon(Icons.star_outlined,color: Colors.yellow,))
            ],),
            Container(
                margin: EdgeInsets.all(10),
                child:  Row(
                  children: [
                    Text(product[index].category,style: TextStyle(color: Colors.grey,fontSize: 15),),
                    SizedBox(width: 5,),
                    CircleAvatar(radius: 5,backgroundColor: Colors.grey,),
                    SizedBox(width: 5,),
                    Text(product[index].type,style: TextStyle(color: Colors.grey,fontSize: 15),),
                  ],
                ))
          ],

        )
      ),
    );
  }
}
