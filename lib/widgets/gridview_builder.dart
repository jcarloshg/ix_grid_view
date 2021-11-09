import 'package:flutter/material.dart';
import 'package:ix_grid_view/widgets/GridIcons.dart';

class GridViewBuildWidget extends StatelessWidget {
  const GridViewBuildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconData> _iconsList = GridIcons().getIconList();

    return GridView.builder(
        itemCount: _iconsList.length,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150),
        itemBuilder: (BuildContext context, int index) {
          // ignore: avoid_print
          print('_buildGridViewBuilder $index');

          return Card(
            color: Colors.white70,
            margin: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    _iconsList[index],
                    size: 48.0,
                    color: Colors.lightGreen,
                  ),
                  const Divider(),
                  Text(
                    'index $index',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
              onTap: () {
                print('Row $index');
              },
            ),
          );
        });
  }
}
