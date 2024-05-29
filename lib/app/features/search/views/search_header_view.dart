import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/app/app.dart';
import 'package:flutter_movie_app/localization/app_localization.dart';
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

class _SearchTextFieldView extends StatelessWidget {
  const _SearchTextFieldView();

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (configuration, theme) {
        return Row(
          children: [
            Expanded(
              flex: 7,
              child: TextField(
                onChanged: (value) {
                  context.read<SearchBloc>().add(SearchTextChanged(value));
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  fillColor: MColors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: context.localization.search_page_text_field_title,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            BlocConsumer<SearchBloc, SearchState>(
              listener: (context, state) {
                if (state.isValid == false) {
                  context.showSnackbarAfterHide(
                    SnackBar(
                      content: Text(
                        context.localizeSearchFailure(
                            SearchFailureEnum.shortSearchTextErrorMessage),
                      ),
                    ),
                  );
                }
              },
              builder: (context, state) {
                return Expanded(
                  flex: 3,
                  child: TextButton(
                    onPressed: state.isValid == true
                        ? () {
                            context
                                .read<SearchBloc>()
                                .add(const SearchButtonClicked());
                            context.removeKeyboard();
                          }
                        : null,
                    child: Text(
                      context.localization.search_page_text_field_button,
                      style: theme.searchTextFieldButtonTextStyle(
                        configuration.searchTextFieldButtonTextSize,
                        state.isValid ?? false,
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        );
      },
    );
  }
}
