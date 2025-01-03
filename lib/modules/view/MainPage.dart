import 'package:flutter/material.dart';
import 'package:cotsgojek/design_system/widget/navbar/buttom_nav.dart';
import 'package:cotsgojek/design_system/styles/color.dart';
import 'package:cotsgojek/design_system/styles/typograph.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorCollection.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: ColorCollection.neutral200,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: ColorCollection.neutral600),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Find services, food, or places",
                          hintStyle: AppTypography.paragraph2
                              .copyWith(color: ColorCollection.neutral500),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            CircleAvatar(
              radius: 20,
              backgroundColor: ColorCollection.neutral200,
              child: const Icon(
                Icons.person,
                color: ColorCollection.greenGojek,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Gopay Section
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: ColorCollection.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rp 43.434",
                          style: AppTypography.h2.copyWith(
                            color: ColorCollection.white,
                          ),
                        ),
                        Text(
                          "12 XP to your next treasure",
                          style: AppTypography.paragraph2.copyWith(
                            color: ColorCollection.neutral500,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.qr_code, color: ColorCollection.white),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    _GopayIcon(icon: Icons.add, label: "Top Up"),
                    _GopayIcon(icon: Icons.payment, label: "Pay"),
                    _GopayIcon(icon: Icons.explore, label: "Explore"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Services Section
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              _ServiceIcon(icon: Icons.motorcycle, label: "GoRide"),
              _ServiceIcon(icon: Icons.local_taxi, label: "GoCar"),
              _ServiceIcon(icon: Icons.local_dining, label: "GoFood"),
              _ServiceIcon(icon: Icons.delivery_dining, label: "GoSend"),
              _ServiceIcon(icon: Icons.shopping_cart, label: "GoMart"),
              _ServiceIcon(icon: Icons.monetization_on, label: "GoPulsa"),
              _ServiceIcon(icon: Icons.loyalty, label: "GoClub"),
              _ServiceIcon(icon: Icons.more_horiz, label: "More"),
            ],
          ),

          const SizedBox(height: 20),

          // Promos Section
          Text(
            "Promotions",
            style: AppTypography.h3.copyWith(color: ColorCollection.darkGreen),
          ),
          const SizedBox(height: 10),
          _PromoCard(
            imageUrl: 'lib/assets/promo1.png',
            title: "Makin Seru",
            description: "Aktifkan & Sambungkan GoPay di Tokopedia",
          ),
          _PromoCard(
            imageUrl: 'lib/assets/promo2.png',
            title: "Bayar Apa Aja",
            description: "Cashback hingga Rp100.000",
          ),
          _PromoCard(
            imageUrl: 'lib/assets/promo3.png',
            title: "GoPay Explore",
            description: "Nikmati berbagai promo menarik",
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class _GopayIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _GopayIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: ColorCollection.white, size: 30),
        const SizedBox(height: 5),
        Text(
          label,
          style: AppTypography.h6.copyWith(color: ColorCollection.white),
        ),
      ],
    );
  }
}

class _ServiceIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ServiceIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: ColorCollection.neutral200,
          child: Icon(icon, color: ColorCollection.greenGojek),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: AppTypography.h7.copyWith(color: ColorCollection.neutral800),
        ),
      ],
    );
  }
}

class _PromoCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const _PromoCard({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.horizontal(left: Radius.circular(8)),
            child: Image.asset(
              imageUrl,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.h4.copyWith(
                    color: ColorCollection.darkGreen,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: AppTypography.subhead2.copyWith(
                    color: ColorCollection.neutral700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
