import 'package:cook_store_app/pages/bottom_bar.dart';
import 'package:cook_store_app/pages/cookie_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Categories',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15.0,
          ),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text(
                    "Cookies",
                    style: TextStyle(fontFamily: "Varela", fontSize: 21.0),
                  ),
                ),
                Tab(
                  child: Text(
                    "Cookie cake",
                    style: TextStyle(fontFamily: "Varela", fontSize: 21.0),
                  ),
                ),
                Tab(
                  child: Text(
                    "Ice cream",
                    style: TextStyle(fontFamily: "Varela", fontSize: 21.0),
                  ),
                ),
              ]),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
                controller: _tabController,
                children: [CookiePage(), CookiePage(), CookiePage()]),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          )),
      title: Text(
        'Pickup',
        style: TextStyle(
            fontFamily: 'Varela', fontSize: 20.0, color: Color(0xFF545D68)),
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xFFF17532),
            ))
      ],
    );
  }
}
