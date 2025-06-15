

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit_class.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: BlocBuilder<MyCubit, MyState>(
          builder: (context, c) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 200,
                  height: 150,
                  color: c.color,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                    ],
                  ),

                ),  Text("Name: ${c.name}"),
                Text("Number: ${c.number}"),

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<MyCubit>().changeData();
                  },
                  child: const Text("Change State"),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  context.read<MyCubit>().reset();
                  
                }, child: const Text("Reset state"))
              ],
            );
          },
        ),
      ),
    );
  }
}

