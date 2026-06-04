import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vachanapetty/features/data/models/book_item.dart';
import 'package:vachanapetty/features/presentation/bloc/quotes_bloc.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/chip_button.dart';

class SectionHead extends StatelessWidget {
  const SectionHead({super.key});

  static const books = BookItem.books;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuotesBloc, QuotesState>(
      builder: (context, state) {
        return Wrap(
          spacing: 8,
          runSpacing: 8,
          children: List.generate(
            books.length,
            (index) => ChipButton(
              label: books[index].name,
              isActive: state.selectedBookId == books[index].id,
              onTap: () {
                context.read<QuotesBloc>().add(
                      QuotesEvent.chooseBook(
                        bookId: books[index].id,
                      ),
                    );
              },
            ),
          ),
        );
      },
    );
  }
}
