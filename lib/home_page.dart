import 'package:demo_app/product_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(Icons.arrow_back),
        ),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.favorite),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.shopping_bag),
          ),
        ],
      ),

      body: ListView(
        children: [
          Column(
            children: [
              Image(image: NetworkImage('https://image.shutterstock.com/image-vector/sale-banner-template-design-comic-260nw-1887577765.jpg',
              )),

              GridView.builder(
                physics:NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: productList.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
                      children:[
                        InkWell(
                          child: Container(
                            height: 100,
                            width: 120,
                            alignment: Alignment.center,
                            child:Image(image: NetworkImage(
                              productList[index]['image'].toString(),
                            ),
                                fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Products()));
                          },
                        ),
                        Text(productList[index]['name'].toString()),
                      ]
                    );
                  }),
            ],
          ),
          Container(child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNP_dpi6KtWKnOorIFZ7JALIUJisKoEPUJGg&usqp=CAU'),fit: BoxFit.cover,),
          height: 200,width: 500,
          ),

          SizedBox(height: 20,),

          GridView.builder(
              physics:NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 3 / 3,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30),
              itemCount: productList.length,
              itemBuilder: (BuildContext ctx, index) {
                return Column(
                    children:[
                      Container(
                        child: Image(image: NetworkImage(
                          productList[index]['image'].toString(),
                        ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ]
                );
              },),

        ],
      ),
    );
  }
}
