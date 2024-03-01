import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/app/features/search/search.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';

class SearchHeaderView extends StatelessWidget {
  const SearchHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Padding(
          padding: context.heightFactor(0.1).symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.localization.search_page_title,
                style: theme.searchViewTitleTextStyle(
                    configuration.searchViewTitleTextSize),
              ),
              30.verticalSizedBox,
              const _SearchTextFieldView()
            ],
          ),
        );
      },
    );
  }
}

class _SearchTextFieldView extends StatefulWidget {
  const _SearchTextFieldView();

  @override
  State<_SearchTextFieldView> createState() => _SearchTextFieldViewState();
}

class _SearchTextFieldViewState extends State<_SearchTextFieldView> {
  final TextEditingController _searchTextController = TextEditingController();

  @override
  void initState() {
    _searchTextController.addListener(onChange);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Row(
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
                  hintText: context.localization.search_page_text_field_title,
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
                onPressed: () {
                  _searchTextController.clear;
                },
                child: Text(
                  context.localization.search_page_text_field_button,
                  style: theme.searchTextFieldButtonTextStyle(
                      configuration.searchTextFieldButtonTextSize),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void onChange() {
    Future.delayed(const Duration(milliseconds: 500), () {
      context.read<SearchBloc>().add(
            SearchFetchingEvent(searchQuery: _searchTextController.value.text),
          );
    });
  }
}
