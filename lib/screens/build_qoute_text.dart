import 'package:flutetr_localization/state/cubit/apptheme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../generated/l10n.dart';

class build_qoute extends StatelessWidget {
  const build_qoute({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final text = S.of(context);

    List randomqoute = [
      text.q1,
      text.q2,
      text.q3,
      text.q4,
      text.q5,
      text.q6,
      text.q7,
      text.q8,
      text.q9,
      text.q10,
    ];
    return BlocBuilder<AppthemeCubit, AppthemeState>(
      builder: (context, state) {
        AppthemeCubit cubit = BlocProvider.of<AppthemeCubit>(context);
        return Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  randomqoute.length,
                  (index) => SizedBox(
                    width: MediaQuery.of(context).size.width,
                    // height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        randomqoute[index],
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
                onPressed: () => cubit.changelanguage(),
                icon: const Icon(
                  Icons.change_circle_outlined,
                  size: 50,
                )),
            const Spacer(
              flex: 2,
            ),
          ],
        );
      },
    );
  }
}
