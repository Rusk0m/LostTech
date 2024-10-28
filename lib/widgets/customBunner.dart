import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_app/theme/app_colors.dart';
import 'package:flutter_web_app/theme/app_text_style.dart';
import 'package:flutter_web_app/services/firestore_service.dart';

class CustomBanner extends StatefulWidget {
  final String documentId;

  const CustomBanner({Key? key, required this.documentId}) : super(key: key);

  @override
  _CustomBannerState createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  Map<String, dynamic>? productData;
  final FirestoreService _firestoreService = FirestoreService();

  @override
  void initState() {
    super.initState();
    loadProductData();
  }

  Future<void> loadProductData() async {
    final data = await _firestoreService.fetchBannerData(widget.documentId);
    setState(() {
      productData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(right: Radius.circular(15)),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Container(
                padding: const EdgeInsets.all(25),
                child: productData != null && productData!['imageUrl'] != null
                    ? Image.network(
                  productData!['imageUrl'], // Используем HTTP URL
                  fit: BoxFit.contain,
                )
                    : CircularProgressIndicator(), // Плейсхолдер, пока изображение загружается
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.contrastPageColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                  ),
                ),
                width: double.infinity,
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productData?['category'] ?? 'Category',
                        style: AppTextStyle.body,
                      ),
                      Text(
                        productData?['name'] ?? 'Product Name',
                        style: AppTextStyle.textTitle,
                      ),
                      Text(
                        '\$${productData?['price'] ?? '0.0'}',
                        style: AppTextStyle.body,
                      ),
                    ],
                  ),
                  trailing: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.shopping_cart,
                      color: AppColors.secondPageColor,
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
