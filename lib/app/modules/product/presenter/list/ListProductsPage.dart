import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pickup/app/modules/product/presenter/list/ListProductsBloc.dart';
import 'package:pickup/app/modules/product/presenter/list/states/ProductListState.dart';

class ListProductsPage extends StatefulWidget {
  @override
  _ListProductsPageState createState() => _ListProductsPageState();
}

class _ListProductsPageState extends State<ListProductsPage> {
  final bloc = Modular.get<ListProductsBloc>();

  @override
  void initState() {
    super.initState();
    bloc.add(true);
  }

  @override
  void dispose() {
    super.dispose();
    bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LIST')),
      body: Column(
        children: [
          Expanded(
              child: StreamBuilder(
                  stream: bloc.stream,
                  builder: (context, snapshot) {
                    if (bloc.state is ListStartState)
                      return Center(
                        child: Text('start'),
                      );

                    if (bloc.state is ListLoadingState)
                      return Center(
                        child: CircularProgressIndicator(),
                      );

                    if (bloc.state is ListErrorState)
                      return Center(
                        child: Text('error'),
                      );

                    final list = (bloc.state as ListSuccessState).list;
                    return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (_, i) {
                          final item = list[i];
                          return ListTile(
                            title: Text(item.name),
                          );
                        });
                  })),
        ],
      ),
    );
  }
}
