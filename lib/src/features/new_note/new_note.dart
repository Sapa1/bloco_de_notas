import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/text_styles.dart';
import 'package:flutter/material.dart';

class NewNotePage extends StatefulWidget {
  const NewNotePage({Key? key}) : super(key: key);

  @override
  _NewNotePageState createState() => _NewNotePageState();
}

class _NewNotePageState extends State<NewNotePage> {
  var save;
  late DropDownItemData _value;
  final List<DropDownItemData> list = [
    DropDownItemData(
      color: AppColors.rosa,
      value: 'rosa,',
    ),
    DropDownItemData(
      color: AppColors.verde,
      value: 'verde',
    ),
    DropDownItemData(
      color: AppColors.roxo,
      value: 'roxo,',
    ),
    DropDownItemData(
      color: AppColors.ciano,
      value: 'ciano',
    ),
    DropDownItemData(
      color: AppColors.amarelo,
      value: 'amarelo',
    ),
  ];

  @override
  void initState() {
    _value = list[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/app_bar_logo.png',
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Título',
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              letterSpacing: 0.15,
                              color: Colors.black.withOpacity(0.54),
                            ),
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              letterSpacing: 0.15,
                              color: Colors.black.withOpacity(0.54),
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      DropdownButton(
                        underline: Container(),
                        onChanged: (value) {
                          setState(() {
                            _value = value as DropDownItemData;
                          });
                        },
                        value: _value,
                        selectedItemBuilder: (BuildContext context) {
                          return list.map<Widget>((DropDownItemData item) {
                            return Center(
                              child: Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: _value.color,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            );
                          }).toList();
                        },
                        focusColor: Colors.transparent,
                        items: list
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Center(
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: e.color,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                  TextField(
                    maxLines: null,
                    minLines: null,
                    decoration: InputDecoration(
                      hintText: 'Digite algo',
                      hintStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.15,
                        color: Colors.black.withOpacity(0.54),
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: MediaQuery.of(context).viewInsets.bottom == 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24,
                  bottom: 24,
                ),
                child: SafeArea(
                  bottom: true,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.date_range,
                            color: Colors.black.withOpacity(0.54),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.attach_file_outlined,
                            color: Colors.black.withOpacity(0.54),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.black.withOpacity(0.54),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            color: Colors.black.withOpacity(0.54),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.black.withOpacity(0.54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 78.0, right: 27),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {},
                child: Text(
                  'SALVAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DropDownItemData {
  final Color color;
  final String value;

  DropDownItemData({required this.color, required this.value});
}
