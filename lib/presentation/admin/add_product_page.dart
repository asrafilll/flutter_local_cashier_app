import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/component/custom_button.dart';
import 'package:personal_cashier_app/presentation/admin/component/new_product_form_component.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 60,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.chevron_left,
                      )),
                  const Text(
                    'Tambah Produk',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(),
                ],
              ),
              const SizedBox(height: 35),
              const NewProductFormComponent(),
              const SizedBox(height: 69),
              CustomButton(
                width: double.infinity,
                title: 'Simpan',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
