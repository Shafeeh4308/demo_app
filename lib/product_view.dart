import 'package:flutter/material.dart';
import 'products.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.only(left: 50,top: 20),
             child: Container(height: 300,width: 300,decoration:
               BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjvv3WEqH2UWYn3mreFzVSrcOWr_ZibMjGgg&usqp'))),
             child: Padding(
               padding: const EdgeInsets.only(left: 30.0),
               child: Text('body spray'),
             ),
             ),
           ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),color: Colors.green,),
              child: ListView.builder(
                itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (ctx,index){
                return Container(
                  child:Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: Row(
                      children: [
                        SizedBox(height: 10,),
                        Image(image: NetworkImage(productList[index]['image'].toString()),),
                        Text('data'),
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
