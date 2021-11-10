import 'package:flutter/material.dart';
import 'package:jayraj_task/icons/icons_icons.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class TableData extends StatefulWidget {
  const TableData({Key? key}) : super(key: key);

  @override
  _TableDataState createState() => _TableDataState();
}

class _TableDataState extends State<TableData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30.withOpacity(0.6),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const <Widget>[
           Tab(

             icon: Icon(CustomIcons.faq , color: Colors.black,),
            )
        ],
        title: const Text(
          'Economy Data',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
              height: 100,
              padding: const EdgeInsets.only(top: 10),
              color: Colors.white,
              child: buildFloatingSearchBar(context)),

          Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2.0, 2.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            padding: const EdgeInsets.only(right: 4, top: 2),
            margin: const EdgeInsets.only(left: 7),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(2)),
              ),
              child: Table(
                border: const TableBorder(
                    horizontalInside: BorderSide(
                      width: 2,
                    ),
                    verticalInside: BorderSide(width: 1)),
                children: [
                  TableRow(children: [
                    Container(
                      color: Colors.grey.shade400.withOpacity(0.5),
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      height: 35,
                      width: 20,
                      child: const Text(
                        "India",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff1F4856)),
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade400.withOpacity(0.5),
                      padding: const EdgeInsets.only(left: 10),
                      height: 35,
                      width: 20,
                      child: const Text(
                        "Actual",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff1F4856)),
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade400.withOpacity(0.5),
                      padding: const EdgeInsets.only(left: 10),
                      height: 35,
                      width: 20,
                      child: const Text(
                        "Previous",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff1F4856)),
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade400.withOpacity(0.5),
                      padding: const EdgeInsets.only(left: 10),
                      height: 35,
                      width: 20,
                      child: const Text(
                        "Highest",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff1F4856)),
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade400.withOpacity(0.5),
                      padding: const EdgeInsets.only(left: 10),
                      height: 35,
                      width: 20,
                      child: const Text(
                        "Lowest",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff1F4856)),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: const EdgeInsets.only(left: 15, top: 7),
                      height: 35,
                      width: 20,
                      child: const Text(
                        "GDP",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30, top: 8),
                      child: const Text('7.90'),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30, top: 8),
                      child: const Text('23.7'),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30, top: 8),
                      child: const Text('32.70'),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30, top: 8),
                      child: const Text('- 25.9'),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      height: 35,
                      width: 20,
                      child: const Text(
                        "Deb",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: const EdgeInsets.only(left: 6, top: 8),
                      height: 35,
                      width: 20,
                      child: const Text(
                        "Population",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                  ]),
                  TableRow(children: [
                    Container(
                        padding: const EdgeInsets.only(left: 10, top: 7),
                        height: 35,
                        width: 20,
                        child: const Text(
                          "Import",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                  ]),
                  TableRow(children: [
                    Container(
                        padding: const EdgeInsets.only(left: 10, top: 7),
                        height: 35,
                        width: 20,
                        child: const Text(
                          "Export",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                  ]),
                  TableRow(children: [
                    Container(
                        padding: const EdgeInsets.only(left: 10, top: 3),
                        height: 35,
                        width: 20,
                        child: const Text(
                          "Inflation Rate",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                  ]),
                  TableRow(children: [
                    Container(
                        padding: const EdgeInsets.only(left: 8, top: 3),
                        height: 35,
                        width: 20,
                        child: const Text(
                          "Interest Rate",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                  ]),
                  TableRow(children: [
                    Container(
                        padding: const EdgeInsets.only(left: 8, top: 2),
                        height: 35,
                        width: 20,
                        child: const Text(
                          "Employment Rate",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        )),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                  ]),
                  TableRow(children: [
                    Container(
                        padding: const EdgeInsets.only(left: 6, top: 5),
                        height: 35,
                        width: 20,
                        child: const Text(
                          "Unemployment Rate",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        )),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                    const Text(''),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildFloatingSearchBar(BuildContext context) {
  final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

  return FloatingSearchBar(
    hint: 'Search Country',
    scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
    transitionDuration: const Duration(milliseconds: 800),
    transitionCurve: Curves.easeInOut,
    physics: const BouncingScrollPhysics(),
    axisAlignment: isPortrait ? 0.0 : -1.0,
    openAxisAlignment: 0.0,
    width: isPortrait ? 600 : 500,
    debounceDelay: const Duration(milliseconds: 500),
    onQueryChanged: (query) {
      // Call your model, bloc, controller here.
    },
    // Specify a custom transition to be used for
    // animating between opened and closed stated.
    transition: CircularFloatingSearchBarTransition(),
    actions: [
      FloatingSearchBarAction(
        showIfOpened: false,
        child: CircularButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ),
      FloatingSearchBarAction.searchToClear(
        showIfClosed: false,
      ),
    ],
    builder: (context, transition) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Material(
          color: Colors.white,
          elevation: 4.0,
          child: Column(
             children: Colors.accents.map((color) {
              return Container();
            }).toList(),
          ),
        ),
      );
    },
  );
}
