import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/routing/app_navigator.dart';
import '../../config/di/di.dart';
import 'tab_3_bloc.dart';

class TabUcPage extends StatefulWidget {
  const TabUcPage({super.key});

  @override
  State<TabUcPage> createState() => _TabUcPageState();
}

class _TabUcPageState extends State<TabUcPage> {
  final navigator = inject<AppNavigator>();
  @override
  void initState() {
    print("tab3 init");

    super.initState();
  }

  @override
  void dispose() {
    print("tab3 dispose");

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<TabUcBloc>(),
      child: BlocConsumer<TabUcBloc, TabUcState>(
        listener: (context, state) {
          if (state.error != "") {}
        },
        builder: (context, state) {
          final bloc = context.read<TabUcBloc>();
          return const Scaffold(
            body: Stack(
              children: [MainScreen()],
            ),
          );
        },
      ),
    );
  }
}

class MovableTextInput extends StatelessWidget {
  final String? hintText;
  final VoidCallback? onDelete;
  final Offset position;
  final Function(Offset) onPositionChanged;

  const MovableTextInput(
      {super.key,
      this.hintText,
      this.onDelete,
      required this.onPositionChanged,
      required this.position});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: GestureDetector(
        onPanUpdate: (details) {
          onPositionChanged(Offset(
            position.dx + details.delta.dx,
            position.dy + details.delta.dy,
          ));
        },
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<MovableTextInputData> textInputs = [];
  final GlobalKey _trashKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ...textInputs.map((input) => MovableTextInput(
                key: input.key,
                hintText: input.hintText,
                position: input.position,
                onPositionChanged: (newPosition) {
                  setState(() {
                    input.position = newPosition;
                  });
                  if (_isOverlapping(newPosition)) {
                    _deleteTextInput(input);
                  }
                },
                onDelete: () => _deleteTextInput(input),
              )),
          Positioned(
            right: 20,
            bottom: 20,
            child: FloatingActionButton(
              onPressed: _addNewTextInput,
              child: const Icon(Icons.add),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            key: _trashKey,
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void _addNewTextInput() {
    setState(() {
      textInputs.add(MovableTextInputData(
        key: UniqueKey(),
        hintText: 'Yeni metin ${textInputs.length + 1}',
        position: Offset(
            0,
            100 *
                (textInputs.length + 1) %
                (MediaQuery.of(context).size.height - 200)),
      ));
    });
    print(textInputs.length);
  }

  void _deleteTextInput(MovableTextInputData input) {
    setState(() {
      textInputs.remove(input);
    });
  }

  bool _isOverlapping(Offset position) {
    final RenderBox trashRenderBox =
        _trashKey.currentContext!.findRenderObject() as RenderBox;
    final trashPosition = trashRenderBox.localToGlobal(Offset.zero);
    final trashSize = trashRenderBox.size;

    print("poz ${position.dx}");
    print("sil ${trashPosition.dx}");

    return position.dx > trashPosition.dx &&
        position.dx < trashPosition.dx + trashSize.width &&
        position.dy > trashPosition.dy &&
        position.dy < trashPosition.dy + trashSize.height;
  }
}

class MovableTextInputData {
  final Key key;
  final String hintText;
  Offset position;

  MovableTextInputData(
      {required this.key, required this.hintText, required this.position});
}
