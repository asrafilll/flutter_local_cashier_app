import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_style.dart';

class NewProductFormComponent extends StatefulWidget {
  const NewProductFormComponent({super.key});

  @override
  State<NewProductFormComponent> createState() =>
      _NewProducFormtComponentState();
}

class _NewProducFormtComponentState extends State<NewProductFormComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Judul Produk',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            fillColor: kLightBackground,
            filled: true,
            hintText: 'Masukkan judul produk',
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: kDarkGreyColor,
              fontSize: 12,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Deskripsi Produk',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            fillColor: kLightBackground,
            filled: true,
            hintText: 'Masukkan deskripsi produk',
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: kDarkGreyColor,
              fontSize: 12,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Input Harga',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            fillColor: kLightBackground,
            filled: true,
            hintText: 'Masukkan harga produk',
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: kDarkGreyColor,
              fontSize: 12,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Input Kuantitas',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            fillColor: kLightBackground,
            filled: true,
            hintText: 'Masukkan kuantitas produk',
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: kDarkGreyColor,
              fontSize: 12,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Input Gambar',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            fillColor: kLightBackground,
            filled: true,
            hintText: 'Masukkan gambar produk',
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: kDarkGreyColor,
              fontSize: 12,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Image.asset('assets/input_product.png')
      ],
    );
  }
}
