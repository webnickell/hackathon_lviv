import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon_lviv/domain/bloc/progress/progress_bloc.dart';
import 'package:hackathon_lviv/widgets/components/week_line.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  static const routeName = '/progress';

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  void initState() {
    super.initState();
    final progressBloc = context.read<ProgressBloc>();
    progressBloc.add(const ProgressEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Forest'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: BlocBuilder<ProgressBloc, ProgressState>(
          builder: (context, state) => state.maybeMap(
            orElse: () => const Center(child: CircularProgressIndicator()),
            data: (data) => ListView.builder(
              itemCount: data.data.length,
              itemBuilder: (ctx, i) => WeekLine(week: data.data[i]),
            ),
          ),
        ),
      ),
    );
  }
}
