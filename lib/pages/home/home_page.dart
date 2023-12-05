import 'package:flutter/material.dart';
import 'package:malina/config/config.dart';
import 'package:malina/pages/scanner/scanner.dart';
import 'package:malina/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                // Search input
                DecoratedBox(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color(0x195E6672),
                      blurRadius: 20,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    ),
                  ]),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    textAlignVertical: TextAlignVertical.center,
                    style: theme.textTheme.bodyMedium,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.white,
                      hintText: "Искать в Malina",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      constraints: const BoxConstraints(
                        maxHeight: 60,
                        minHeight: 60,
                      ),
                      contentPadding: const EdgeInsets.all(0),
                      prefixIcon: const Icon(Icons.search),
                      alignLabelWithHint: true,
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScannerPage(),
                      ),
                    );
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 12, 12, 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/phone_scann.png",
                            width: 36,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              'Сканируй QR-код и заказывай прямо в заведении',
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const GalleryItemWidget(
                  image: AssetImage("assets/images/gallery1.png"),
                  title: "Еда",
                  description: "Из кафе и\nресторанов",
                  bgColor: Colors.transparent,
                ),
                const SizedBox(height: 20),
                const GalleryItemWidget(
                  image: AssetImage("assets/images/gallery2.png"),
                  title: "Бьюти",
                  description: "Салоны красоты\nи товары",
                  bgColor: Color(0xFFFFDEDE),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Скоро в Malina',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),

                SizedBox(
                  height: 85,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => SizedBox(
                      width: 85,
                      height: 85,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFD4E5FF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Текст $index"),
                            const SizedBox(height: 6),
                          ],
                        ),
                      ),
                    ),
                    itemCount: 6,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
