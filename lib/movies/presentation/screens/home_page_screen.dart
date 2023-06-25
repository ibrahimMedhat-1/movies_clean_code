import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_clean_code/movies/presentation/controller/home_page_bloc/home_page_bloc.dart';
import 'package:movies_clean_code/movies/presentation/controller/home_page_bloc/home_page_event.dart';
import 'package:movies_clean_code/movies/presentation/controller/home_page_bloc/home_page_state.dart';

import '../../../core/services/services_locator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomePageBloc(sl())..add(GetNowPlayingMoviesEvent()),
        child: BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) => const Scaffold(),
        ));
  }
}
