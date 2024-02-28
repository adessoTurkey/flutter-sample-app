import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/features/search/models/search_entity.dart';
import 'package:flutter_movie_app/app/features/search/views/search_list_cell_view.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: theme.themeData.primaryColorDark,
                    height: context.heightFactor(.35),
                    width: context.screenSize.width,
                  ),
                  _SearchHeaderView()
                ],
              ),
              const _SearchListView()
            ],
          ),
        );
      },
    );
  }
}

class _SearchListView extends StatelessWidget {
  const _SearchListView();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: 10.symmetric(horizontal: 30),
        itemCount: searchs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: 10.onlyVertical,
            child: SearchListViewCell(searchEntity: searchs[index]),
          );
        },
      ),
    );
  }
}

class _SearchHeaderView extends StatelessWidget {
  final TextEditingController _searchTextController = TextEditingController();
  _SearchHeaderView();

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Padding(
          padding: context.heightFactor(0.1).symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.localization.search_page_title,
                  style: theme.searchViewTitleTextStyle(
                      configuration.searchViewTitleTextSize)),
              30.verticalSizedBox,
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: TextField(
                      controller: _searchTextController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText:
                            context.localization.search_page_text_field_title,
                        filled: true,
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                          onPressed: _searchTextController.clear,
                          icon: const Icon(Icons.clear_outlined),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: TextButton(
                      onPressed: _searchTextController.clear,
                      child: Text(
                        context.localization.search_page_text_field_button,
                        style: theme.searchTextFieldButtonTextStyle(
                            configuration.searchTextFieldButtonTextSize),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
