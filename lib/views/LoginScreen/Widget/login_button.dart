import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.small,
  });

  final TextStyle? small;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(
                  "assets/icon/facebook_icon.png",
                  height: 20,
                  width: 30,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text("facebook",
                    style: small?.copyWith(color: Colors.black,
                      fontSize:
                      MediaQuery.sizeOf(context).height * .02,
                    ))
              ],
            )),
        OutlinedButton(
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(
                  "assets/icon/google_icon.png",
                  height: 20,
                  width: 30,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text("google",
                    style: small?.copyWith(
                      color: Colors.black,
                      fontSize:
                      MediaQuery.sizeOf(context).height * .02,))
              ],
            )),
      ],
    );
  }
}
