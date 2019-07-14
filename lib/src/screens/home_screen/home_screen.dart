import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    double getSize(int index) {
      return index % 2 == 0 ? 1.2 : 0.8;
    }

    BottomNavigationBarItem bottomItem(IconData icon) {
      return BottomNavigationBarItem(
        icon: Icon(icon),
        title: Container(),
      );
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.red,
        items: [
          bottomItem(FontAwesomeIcons.home),
          bottomItem(FontAwesomeIcons.shoppingBag),
          bottomItem(FontAwesomeIcons.shoppingCart),
          bottomItem(FontAwesomeIcons.bell),
          bottomItem(FontAwesomeIcons.bars)
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF45E1B7),
              Color(0xFFB7D1FF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          width: _width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50),
              Text(
                'Principais produtos',
                style: Theme.of(context).textTheme.display1,
              ),
              SizedBox(height: 20),
              Container(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    height: 50,
                    width: _width,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(),
                          Text(
                            'Pesquisar produto',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Icon(Icons.search)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      child: Center(
                        child: Text('$index'),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
