import 'package:flutter/material.dart';
import 'item_data.dart';

class ItemGrid extends StatefulWidget {
  const ItemGrid({Key? key}) : super(key: key);

  @override
  _ItemGridState createState() => _ItemGridState();
}

class _ItemGridState extends State<ItemGrid> {

  List<Widget> items = [];
  var itemInformation = ItemInformation.itemData;

  @override
  void initState() {
    for (int i = 0; i < itemInformation.length; i++) {
      items.add(
        ItemCard(
         title: itemInformation[i]["name"].toString(),
         description: itemInformation[i]["description"].toString(),
         cost: itemInformation[i]["cost"].toString(),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GridView.builder(
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          childAspectRatio: 0.6
        ),
        itemBuilder: (context, int index) {
          return items[index];
        },
      ),
    );
  }
}


class ItemCard extends StatefulWidget {
  String title;
  String description;
  String cost;
  ItemCard({Key? key, required this.title, required this.description, required this.cost}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              height: 170,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text(widget.title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Text(widget.description, style: const TextStyle(fontSize: 13, color: Colors.grey)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 20),
                    child: Text("\$${widget.cost}", style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                ),
                // const Icon(Icons.favorite_border, size: 30,),
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border, size: 30,), splashColor: Colors.transparent,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
