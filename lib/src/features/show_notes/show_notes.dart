import 'dart:ui';

import 'package:bloco_de_notas/src/features/create_note/create_note.dart';
import 'package:bloco_de_notas/src/features/show_notes/note_widget.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShowNotesPage extends StatefulWidget {
  const ShowNotesPage({Key? key}) : super(key: key);

  @override
  _ShowNotesPageState createState() => _ShowNotesPageState();
}

class _ShowNotesPageState extends State<ShowNotesPage> {
  final ScrollController _controllerScroll = ScrollController();

  List<NoteWidget> listNote = [
    NoteWidget(
      color: Color(0XFFF5487F),
      title: 'Não esquecer',
      date: 'Criação: 08/07/21',
      text:
          'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua.',
      onTap: () {},
    ),
    NoteWidget(
      color: Color(0XFF58B368),
      title: 'Reunião com os stakeholders',
      date: 'Criação: 07/07/21',
      text:
          '• Ipsum dolor sit amet, consectur. \n • Adipiscing elit, sed do eiusmod tempor incidi. \n • Ut labore et dolore magna aliqua.',
      onTap: () {},
    ),
    NoteWidget(
      color: Color(0XFF8681FC),
      title: 'Lembretes para o médico',
      date: 'Criação: 06/07/21',
      text:
          'Lorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      onTap: () {},
    ),
    NoteWidget(
      color: Color(0XFF44C2FD),
      title: 'Ideias para o novo app 2022',
      date: 'Criação: 06/07/21',
      text:
          '• Ipsum dolor sit amet, consectur. \n • Adipiscing elit, sed do eiusmod tempor incidi. \n • Ut labore et dolore magna aliqua.',
      onTap: () {},
    ),
    NoteWidget(
      color: Color(0XFFFAC736),
      title: 'Reunião do grupo de treinamento',
      date: 'Criação: 05/07/21',
      text: 'Ipsum dolor sit amet, consectur.',
      onTap: () {},
    ),
    NoteWidget(
      color: Color(0XFFF5487F),
      title: 'Não esquecer',
      date: 'Criação: 08/07/21',
      text:
          'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed incididunt ut labore et dolore aliqua.',
      onTap: () {},
    ),
    NoteWidget(
      color: Color(0XFF58B368),
      title: 'Reunião com os stakeholders',
      date: 'Criação: 07/07/21',
      text:
          '• Ipsum dolor sit amet, consectur. \n • Adipiscing elit, sed do eiusmod tempor incidi. \n • Ut labore et dolore magna aliqua.',
      onTap: () {},
    ),
    NoteWidget(
      color: Color(0XFF8681FC),
      title: 'Lembretes para o médico',
      date: 'Criação: 06/07/21',
      text:
          'Lorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      onTap: () {},
    ),
    NoteWidget(
      color: Color(0XFF44C2FD),
      title: 'Ideias para o novo app 2022',
      date: 'Criação: 06/07/21',
      text:
          '• Ipsum dolor sit amet, consectur. \n • Adipiscing elit, sed do eiusmod tempor incidi. \n • Ut labore et dolore magna aliqua.',
      onTap: () {},
    ),
    NoteWidget(
      color: Color(0XFFFAC736),
      title: 'Reunião do grupo de treinamento',
      date: 'Criação: 05/07/21',
      text: 'Ipsum dolor sit amet, consectur.',
      onTap: () {},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/book_create_note.png'),
            Image.asset('assets/images/journal_create_note.png'),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppColors.linearGradient,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
            width: MediaQuery.of(context).size.width / 1.4,
            child: TextField(
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                letterSpacing: 0.15,
                color: Color.fromRGBO(0, 0, 0, 0.38),
                //font roboto,
              ),
              decoration: InputDecoration(
                hintText: "Pesquisar",
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 0, left: 10),
                  child: Icon(
                    Icons.search,
                    color: Color.fromRGBO(0, 0, 0, 0.54),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
              child: RawScrollbar(
                radius: Radius.circular(10),
                controller: _controllerScroll,
                thumbColor: Color(0xFFAFACF3),
                isAlwaysShown: true,
                thickness: 7,
                child: StaggeredGridView.countBuilder(
                  controller: _controllerScroll,
                  padding: EdgeInsets.all(20),
                  crossAxisCount: 2,
                  itemCount: listNote.length,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  itemBuilder: (context, int index) => listNote[index],
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (BuildContext context) => CreateNotesPage(),
            ),
          );
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 0.1,
                offset: Offset(0, 4),
              ),
            ],
            shape: BoxShape.circle,
            gradient: AppColors.linearGradient,
          ),
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
