import 'package:bloc_api/logic/homebloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API flutter bloc"),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<HomeblocBloc, HomeblocState>(
          builder: (context, state) {
            if (state.isapifetching) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Text(
              state.result ?? "NO DATA",
              style: const TextStyle(
                fontSize: 20,
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            context.read<HomeblocBloc>().add(FetchApiEvent());
          },
          label: const Text("Fetch api")),
    );
  }
}
