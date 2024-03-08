import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(

       ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text("Welcome to Dashboard")),



      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("HassanKhanAfridi"),
                accountEmail:Text("HassanChingari@gmail.com"),currentAccountPicture:
              FittedBox(
                fit: BoxFit.cover,
                child: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnNmSYpaGC3xakijlLsJpVi6gGLW0PQ6wiIQ&usqp=CAU'),
                maxRadius: 50,
                ),
              ),

            ),
            ListTile(
                 leading: FaIcon(FontAwesomeIcons.hospitalUser,size: 20),
                 title: Text("Admin Pannel"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.cartShopping,size: 20),
              title: Text("Shopping Cart and Checkout"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.history,size: 20),
              title: Text("Order History and Tracking"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.handsHelping,size: 20),
              title: Text("FeedBack and Support"),
            ),

          ],
        ),
      ) ,


    );
  }
}
