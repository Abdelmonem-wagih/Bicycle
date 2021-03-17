import 'package:Project/providers/providerHome.dart';
import 'package:Project/widgets/post_items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderGrid extends StatelessWidget {
  // final int itemCount;
  // ProviderGrid(this.itemCount);
  @override
  Widget build(BuildContext context) {
    //to can reach to class Products

    final post = Provider.of<ProviderHome>(context);

    //how i can watch shap of main screen
    //(.builder)=> to can know about how many number of item
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: post.items.length, //can know about how many number of item
      //to build list of view
      itemBuilder: (context, i) => PostItems(
        post.items[i].id,
        post.items[i].text,
        post.items[i].countFavorite,
        post.items[i].countShare,
        post.items[i].countComment,
        post.items[i].imageUrl,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 3 / 2,
      ),
    );
  }
}
