import 'package:bloco_de_notas/src/features/new_note/new_note.dart';

import 'package:flutter/material.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:flutter/services.dart';

class SavedNotes extends StatefulWidget {
  const SavedNotes({Key? key}) : super(key: key);

  @override
  _SavedNotesState createState() => _SavedNotesState();
}

class _SavedNotesState extends State<SavedNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        title: Image.asset(
          'assets/images/app_bar_logo_white.png',
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppColors.blueGradient,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: RawScrollbar(
        isAlwaysShown: true,
        thumbColor: Colors.blueGrey,
        radius: Radius.circular(20),
        thickness: 9,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 49,
                  left: 80,
                  top: 16,
                  bottom: 15,
                ),
                child: Container(
                  height: 30.5,
                  width: 261,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      labelText: 'Pesquisar',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 145,
                              decoration: BoxDecoration(
                                color: AppColors.rosa,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    '\n  Não esquecer',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 57),
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: Text(
                                            '\n \nLorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.\n \n',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 120),
                                          child: Text(
                                            '\nCriação: 08/07/21',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(242, 245, 250, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16, top: 28),
                              width: 145,
                              decoration: BoxDecoration(
                                color: AppColors.verde,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    '\n Reunião com os \n stakeholders',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 57,
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: Text(
                                            '\n \n • Ipsum dolor sit amet, consectur. \n  • Adipiscing elit, sed do eiusmod tempor incidi. \n  • Ut labore et dolore magna aliqua.\n \n',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 120),
                                          child: Text(
                                            '\n\n\nCriação: 07/07/21',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(242, 245, 250, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 145,
                              decoration: BoxDecoration(
                                color: AppColors.roxo,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    '\n  Lembretes para o \n  médico',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 57),
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: Text(
                                            '\n \nLorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n \n',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 120),
                                          child: Text(
                                            '\n\nCriação: 06/07/21',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(242, 245, 250, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16, top: 25),
                              width: 145,
                              decoration: BoxDecoration(
                                color: AppColors.ciano,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    '\n Ideias para o \n novo app 2022',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 57,
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: Text(
                                            '\n \n • Ipsum dolor sit    amet, consectur. \n • Adipiscing elit,   sed do eiusmod tempor incidi. \n • Ut labore dolore.\n \n\n',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 120),
                                          child: Text(
                                            '\n\n\nCriação: 07/07/21',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(242, 245, 250, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 145,
                              decoration: BoxDecoration(
                                color: AppColors.amarelo,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    '\n  Reunião do grupo de \n  treinamento',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 57),
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: Text(
                                            '\n \nLorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.\n \n',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 120),
                                          child: Text(
                                            'Criação: 08/07/21',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(242, 245, 250, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16, top: 25),
                              width: 145,
                              decoration: BoxDecoration(
                                color: AppColors.roxo,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Stack(
                                children: [
                                  Text(
                                    '\n Estudar assuntos da \n raro',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 57,
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          child: Text(
                                            '\n \n • Ipsum dolor sit amet, consectur. \n  • Adipiscing elit, sed do eiusmod tempor incidi. \n  • Ut labore et dolore magna aliqua.\n \n',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 120),
                                          child: Text(
                                            '\n\n\nCriação: 07/07/21',
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w300,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(242, 245, 250, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => NewNotePage(),
            ),
          );
        },
        child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            gradient: AppColors.blueGradient,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                offset: Offset(0.0, 1.0),
                blurRadius: 18,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.14),
                offset: Offset(0, 8),
                blurRadius: 10,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0, 3),
                blurRadius: 5,
                spreadRadius: -1,
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
