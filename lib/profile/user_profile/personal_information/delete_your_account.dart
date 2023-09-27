import 'package:flutter/material.dart';

class DeleteYourAccount extends StatefulWidget {
  const DeleteYourAccount({Key? key}) : super(key: key);

  @override
  State<DeleteYourAccount> createState() => _DeleteYourAccountState();
}

class _DeleteYourAccountState extends State<DeleteYourAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delete Your Account",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Are you sure you want to delete your account?",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "This action cannot be undone and you will lose all your data.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Reason for Deletion",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Select a reason for deleting your account:",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 343,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Select a reason...",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
