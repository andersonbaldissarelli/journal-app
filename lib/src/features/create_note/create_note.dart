import 'package:flutter/material.dart';

class CreateNotesPage extends StatefulWidget {
  const CreateNotesPage({Key? key}) : super(key: key);

  @override
  _CreateNotesPageState createState() => _CreateNotesPageState();
}

class _CreateNotesPageState extends State<CreateNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset("assets/images/journal_logo_blue.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset("assets/images/journal_blue.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  maxLines: null,
                  minLines: null,
                  decoration: InputDecoration(
                    hintText: "Título",
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 0.15,
                      color: Colors.black.withOpacity(0.54),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  maxLines: null,
                  minLines: null,
                  decoration: InputDecoration(
                    hintText: "Digite aqui...",
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      letterSpacing: 0.15,
                      color: Colors.black.withOpacity(0.54),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Card(
          elevation: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.date_range,
                    size: 30,
                    color: Colors.black54,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.attach_file,
                    size: 30,
                    color: Colors.black54,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.black54,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.share,
                    size: 30,
                    color: Colors.black54,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.delete,
                    size: 30,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
