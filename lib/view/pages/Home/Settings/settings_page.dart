import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:get/get.dart' hide Trans;
import 'package:scanly/view/constants.dart';
import 'package:scanly/view/pages/Home/Product/favorites_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool beepOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: buttonColor,
        title: const Text(
          "settings",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ).tr(),
        elevation: 0,
      ),
      body: SizedBox.expand(
        child: Column(children: [
          const SizedBox(height: 8),
          SettingsTile(
              onTap: () {
                Get.to(() => FavoritePage());
              },
              label: "favorites",
              icon: Icons.favorite),
          SettingsTile(
              onTap: () {
                Get.defaultDialog(
                    title: "select_language".tr(),
                    content: Column(
                      children: const [
                        LangChangeButton(
                          label: "english",
                          lang: "en",
                        ),
                        LangChangeButton(
                          label: "french",
                          lang: "fr",
                        ),
                        LangChangeButton(
                          label: "arabic",
                          lang: "ar",
                        ),
                      ],
                    ));
              },
              label: "language",
              icon: Icons.language),
          SettingsTile(
            onTap: () {},
            label: "beep",
            prefixWidget: Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                  activeColor: headingColor,
                  value: beepOn,
                  onChanged: (val) {
                    setState(() {
                      beepOn = val;
                    });
                  }),
            ),
          ),
          SettingsTile(
            onTap: () {},
            label: "terms_and_conditions",
            icon: Icons.library_books,
          ),
        ]),
      ),
    );
  }
}

class LangChangeButton extends StatelessWidget {
  const LangChangeButton({
    Key? key,
    required this.lang,
    required this.label,
  }) : super(key: key);

  final String lang, label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final Locale locale = Locale(lang);
        if (context.locale == locale) {
          Get.back();
          return;
        }

        context.setLocale(locale);
        Phoenix.rebirth(context);
      },
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
          child: Text(label).tr()),
    );
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    Key? key,
    required this.onTap,
    required this.label,
    this.icon,
    this.prefixWidget,
  }) : super(key: key);

  final VoidCallback onTap;
  final String label;
  final IconData? icon;
  final Widget? prefixWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 68,
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
        padding:
            EdgeInsets.symmetric(horizontal: prefixWidget != null ? 6 : 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 6,
                blurRadius: 12,
              )
            ]),
        child: Row(children: [
          if (icon != null)
            Icon(
              icon,
              color: headingColor,
              size: 30,
            ),
          if (icon == null && prefixWidget != null) prefixWidget!,
          SizedBox(width: prefixWidget != null ? 0 : 12),
          Text(
            label,
            style: const TextStyle(
              color: headingColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ).tr()
        ]),
      ),
    );
  }
}
