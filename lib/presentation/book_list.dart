import 'package:auto_route/auto_route.dart';
import 'package:book_list/domain/bloc/book_list/book_list_bloc.dart';
import 'package:book_list/router/app_router.gr.dart';
import 'package:book_list/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookList extends HookWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<BookListBloc>().add(const BookListEvent.getBooKList());
      return () {};
    }, []);
    return Scaffold(body: BlocBuilder<BookListBloc, BookListState>(
      builder: (context, state) {
        if (state is Success) {
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppMetric.sectionSpacing,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: AppMetric.defaultHorizontalPadding),
                  child: AppText.headTitle(
                    'Book List',
                    color: AppColor.neutralBlack,
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: state.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          context.router.navigate(
                              BookDetailPage(productModel: state.data[index]));
                        },
                        dense: true,
                        title: Row(
                          children: [
                            Container(
                              width: 70.sp,
                              height: 150.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      AppMetric.borderRadius)),
                              child: Image.network(state.data[index].image),
                            ),
                            SizedBox(
                              width: AppMetric.sectionSpacing,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText.title(
                                    state.data[index].title,
                                    maxLines: 3,
                                  ),
                                  AppText.small(state.data[index].category),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  AppText.currency(
                                      '\$${state.data[index].price}'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Text('Empty');
        }
      },
    ));
  }
}
