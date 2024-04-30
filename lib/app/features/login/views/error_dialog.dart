import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/core/extensions/extensions.dart';
import 'package:flutter_movie_app/localization/localization.dart';
import 'package:flutter_movie_app/responsive/configuration_widget.dart';
import '../../../../gen/assets.gen.dart';
import '../../../core/constants/m_colors.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ConfigurationWidget(
      onConfigurationReady: (config, theme) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(config.dialogButtonCornerRadius)),
          child: SizedBox(
            height: config.dialogSize.height,
            width: config.dialogSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: config.dialogBannerHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(config.dialogButtonCornerRadius)),
                    color: MColors.vibrantBlue,
                    image: DecorationImage(
                        colorFilter: const ColorFilter.mode(
                            MColors.vibrantBlue, BlendMode.dstATop),
                        image: AssetImage(
                            MovieAssets.images.loginErrorBanner.path),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                Text(
                  context.localization.login_error_dialog_info,
                  style: theme.loginErrorDialogInfo(config.dialogInfoTextSize),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: theme
                        .loginErrorDialogButton(config.dialogButtonTextSize),
                    backgroundColor: MColors.vibrantBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(config.dialogButtonCornerRadius))),
                    elevation: 0,
                  ),
                  child: Text(
                    context.localization.login_error_dialog_button,
                    style: theme
                        .loginErrorDialogButton(config.dialogButtonTextSize),
                  ),
                ),
                12.verticalSizedBox
              ],
            ),
          ),
        );
      },
    );
  }
}
