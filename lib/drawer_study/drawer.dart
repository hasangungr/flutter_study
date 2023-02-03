import 'package:flutter/material.dart';
import 'package:flutter_study/drawer_study/field/drawer_header_field.dart';

class DrawerStudy extends StatelessWidget {
  const DrawerStudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeadField(context, name: "Hasan Güngör"),
            colourfulFeaturedViews(),
            Expanded(flex: 1, child: viewList()),
            rowCardWithIcon(text: "Powered By Brand", icon: Icons.copyright)
          ],
        ),
      ),
    );
  }

  Widget colourfulFeaturedViews() {
    return Container(
      width: double.infinity,
      height: 75,
      color: Colors.orange,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          columnCardWithIcon(text: "My Orders", icon: Icons.list),
          columnCardWithIcon(text: "Rewards", icon: Icons.card_giftcard),
          columnCardWithIcon(text: "Wallet", icon: Icons.wallet),
          columnCardWithIcon(text: "Cart", icon: Icons.shopping_cart_outlined),
          columnCardWithIcon(text: "Cart", icon: Icons.shopping_cart_outlined),
          columnCardWithIcon(text: "Cart", icon: Icons.shopping_cart_outlined),
          columnCardWithIcon(text: "Cart", icon: Icons.shopping_cart_outlined),
        ],
      ),
    );
  }

  Widget columnCardWithIcon({required String text, required IconData icon}) {
    //fix name
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
      child: Column(
        children: [IconButton(onPressed: () {}, icon: Icon(icon)), Text(text)],
      ),
    );
  }

  Widget viewList() {
    return ListView(
      children: [
        rowCardWithIcon(text: "Shop Now", icon: Icons.house_sharp),
        rowCardWithIcon(text: "My Profile", icon: Icons.person),
        rowCardWithIcon(text: "Chat With Us", icon: Icons.whatsapp),
        rowCardWithIcon(text: "About Us", icon: Icons.info),
        rowCardWithIcon(text: "Terms & Privacy", icon: Icons.privacy_tip_sharp),
        rowCardWithIcon(text: "Contact Us", icon: Icons.phone),
        rowCardWithIcon(text: "Review Us", icon: Icons.reviews_outlined),
        rowCardWithIcon(text: "Share With Friends", icon: Icons.share),
        rowCardWithIcon(text: "Shop Now", icon: Icons.house_sharp),
        rowCardWithIcon(text: "My Profile", icon: Icons.person),
        rowCardWithIcon(text: "Chat With Us", icon: Icons.whatsapp),
        rowCardWithIcon(text: "About Us", icon: Icons.info),
      ],
    );
  }

  Widget rowCardWithIcon({required String text, required IconData icon}) {
    //fix name
    return ListTile(
      onTap: (() => null),
      leading: Icon(icon),
      title: Text(text),
    );
  }
}
