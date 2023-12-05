import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina/config/config.dart';
import 'package:malina/pages/pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  bool isShowCartPages = false;
  bool isFoodCart = false;
  int _currentIndex = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: _currentIndex,
      keepPage: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          children: [
            const HomePage(),
            const Scaffold(body: Center(child: Text("Избранное"))),
            const Scaffold(body: Center(child: Text("Профиль"))),
            isFoodCart ? const CartFoodPage() : const CartProductPage(),
          ],
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: isShowCartPages
          ? Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SizedBox(
                  width: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _onTabTapped(3);
                            isFoodCart = true;
                            isShowCartPages = false;
                          });
                        },
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                              color: AppColors.grey2,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/svg/food.svg"),
                                const Text("Еда",
                                    style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _onTabTapped(3);
                            isShowCartPages = false;
                            isFoodCart = false;
                          });
                        },
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                              color: AppColors.grey2,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/svg/product.svg"),
                                const Text("Товары",
                                    style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : null,
      bottomNavigationBar: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 30,
              offset: Offset(15, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildTabItem(0, 'Лента', 'assets/svg/feed.svg'),
                const SizedBox(width: 8),
                buildTabItem(1, 'Избранное', 'assets/svg/favorite.svg'),
                const SizedBox(width: 8),
                buildCenterTabItem('assets/svg/scan.svg'),
                const SizedBox(width: 8),
                buildTabItem(2, 'Профиль', 'assets/svg/profile.svg'),
                const SizedBox(width: 8),
                buildTabItem(3, 'Корзина', 'assets/svg/cart.svg'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTabItem(int index, String label, String iconPath) {
    return SizedBox(
      width: 60,
      height: 60,
      child: GestureDetector(
        onTap: () {
          if (index != 3) {
            _onTabTapped(index);
            setState(() => isShowCartPages = false);
          } else {
            setState(
              () => isShowCartPages = !isShowCartPages,
            );
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 28,
              height: 28,
              color: _currentIndex == index ? AppColors.primary : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: _currentIndex == index ? AppColors.primary : Colors.grey,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCenterTabItem(String iconPath) {
    return Expanded(
      child: Center(
        child: SizedBox(
          width: 60,
          height: 60,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScannerPage(),
                ),
              );
            },
            child: DecoratedBox(
              decoration: ShapeDecoration(
                color: const Color(0xFFF72055),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48.39),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x59AA0C33),
                    blurRadius: 14.73,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: SvgPicture.asset(
                iconPath,
                width: 28,
                height: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 10),
      curve: Curves.bounceIn,
    );
  }
}
