import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hask/helpers/app_theme.dart';

class MainLoginPage extends StatefulWidget {
  const MainLoginPage({Key? key}) : super(key: key);

  @override
  _MainLoginPageState createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: 'Manage your team\n& everything\nwith',
                      style: AppTheme.fontStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' HASK',
                          style: AppTheme.fontStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      'Log In',
                      style: AppTheme.fontStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.background,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'or continue with',
                          style: AppTheme.fontStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    _buildSocialButton(
                      'assets/svgs/apple_logo.svg',
                      onTap: () {},
                    ),
                    _buildSocialButton(
                      'assets/svgs/google_logo.svg',
                      onTap: () {},
                    ),
                    _buildSocialButton(
                      'assets/svgs/facebook_logo.svg',
                      onTap: () {},
                    ),
                    _buildSocialButton(
                      'assets/svgs/twitter_logo.svg',
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Don`t have an account?',
                    style: AppTheme.fontStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Sign up',
                        style: AppTheme.fontStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w500,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(String icon, {required VoidCallback onTap}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(vertical: 16),
            ),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side:
                    BorderSide(color: Theme.of(context).colorScheme.onSurface),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).colorScheme.background),
          ),
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
