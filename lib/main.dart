import 'package:flutter/material.dart';

void main() => runApp(EcommerceApp());

class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce Platform',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProductGridScreen(),
    );
  }
}

class ProductGridScreen extends StatelessWidget {
  final List<String> productImages = [
    'https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/844923/pexels-photo-844923.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2526105/pexels-photo-2526105.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSExIWEBIXFxITGRYWFhcWFhkTFhUXFhUWFRgYHSggGBolGxUVIzEhJSkrLi4uFx8zODMtNyguLisBCgoKDg0OGxAQGzUmHyYtLS4rLTUyLTEwNy0vLS0tMi0rLS0tLzU1ListLS0tLS0tLS0rLS0tKy0tLS0tKy0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAABQcEBgIDCAH/xABIEAABAwIDBAcDCQQHCQEAAAABAAIDBBESITEFBkFRBxMiYXGBkTKhsSNCQ1JicsHR8BRTouEzY3OSstLxFRckNESCwsPTFv/EABgBAQADAQAAAAAAAAAAAAAAAAABAgME/8QALREBAQABAwMDAgMJAAAAAAAAAAECAxEhEhMxBFFhQaEygbEUIjNSU3GRksH/2gAMAwEAAhEDEQA/ALxREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEXwlV7tnpFIcRTMaWD58gN3Hm0Aiw8fQK2OFy8KZ6mOE5WGiqOHpQnD+0I3DiMJGXcb5Kytgbaiq4hLGe5zTq13EH8+KnLTuPlGGrjn4SSIio0EREBERAREQEREBERAREQEREBERAREQEREHXPM1jS97gxoFy5xAAHMk6LVKzpEomGwxyD6zWgN8sRBPoufSaXfsLg3i5t/wDtu8D1aFRm0KnG3LIgZLbRwxy33Yeozz09rPFegtgb2U1YcMbiH64HgBxHEixIKnV5Q2Ptl8T2yNcWvaQQRqCOS9Hbl7zMroQ7IStsHtHPg5v2T7tFGpp7czwaWr1cZeWwPaCCDocl593ko5KSofA/QE4DwczVp8bEZL0DLIGgucQ1oBJJNgANSSqq3o2lHW1DTGy7W2Y1xGbzc2cAdNcuPwUadyl4/NfVxwyx2y8/RUe16nDIBe1xdbV0c75GlnFyTG6zXt5t5jvGo8xxV319PRspzFO2MUzW4SJQMFrZkk8c9efeqb23uHsxrOupNq2AcAQ4ftDQ5xOBuKEYmcu0CtO7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',
    'https://images.pexels.com/photos/133579/pexels-photo-133579.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1149074/pexels-photo-1149074.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: productImages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => ProductActionScreen(
                  productIndex: index,
                  productImage: productImages[index],
                ),
              ));
            },
            child: Image.network(productImages[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}

class ProductActionScreen extends StatelessWidget {
  final int productIndex;
  final String productImage;

  const ProductActionScreen({required this.productIndex, required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Actions')),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(productImage, height: 200, fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 230,
            left: 20,
            child: Text(
              'Select an Option',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 40,
            top: 280,
            child: CircleAvatar(
              radius: 40,
              child: IconButton(
                icon: Icon(Icons.description),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) => ProductDescriptionScreen(
                      productIndex: productIndex,
                      productImage: productImage,
                    ),
                  ));
                },
              ),
            ),
          ),
          Positioned(
            left: 150,
            top: 280,
            child: CircleAvatar(
              radius: 40,
              child: Icon(Icons.reviews),
            ),
          ),
          Positioned(
            left: 260,
            top: 280,
            child: CircleAvatar(
              radius: 40,
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDescriptionScreen extends StatelessWidget {
  final int productIndex;
  final String productImage;

  const ProductDescriptionScreen({required this.productIndex, required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Description')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(productImage, height: 300, fit: BoxFit.cover),
            ),
            SizedBox(height: 16),
            Text(
              'DETAILED DESCRIPTION${productIndex + 1}. ' * 10,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
