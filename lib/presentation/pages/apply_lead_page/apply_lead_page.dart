import 'package:broker_desk/constants.dart';
import 'package:broker_desk/core/configs/theme/app_colors.dart';
import 'package:broker_desk/presentation/widgets/app_button.dart';
import 'package:broker_desk/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class ApplyLeadPage extends StatefulWidget {
  const ApplyLeadPage({super.key});

  @override
  State<ApplyLeadPage> createState() => _ApplyLeadPageState();
}

class _ApplyLeadPageState extends State<ApplyLeadPage> {
  final products = [
    'Выберите продукт',
    'Рассрочка на 3 мес',
    'Рассрочка на 6 мес',
    'Рассрочка на 12 мес',
  ];
  String? value;
  @override
  void initState() {
    super.initState();
    value = products[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Drawer(),
        title: Text('Go to scoring'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              TextFieldWidget(labelText: 'Введите сумму'),
              Container(
                margin: EdgeInsets.all(defaultPadding),
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),

                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Продукт',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isExpanded: true,
                      value: value,
                      items: products.map(buildMenuProducts).toList(),
                      onChanged: (value) => setState(() => this.value = value),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(defaultPadding),
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1.0),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: value,
                    icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                    iconSize: 24,
                    isExpanded: true,
                    items: products.map(buildMenuProducts).toList(),
                    onChanged:
                        (value) => setState(() {
                          this.value = value;
                        }),
                  ),
                ),
              ),

              AppButton(labelText: 'Оформить заявку'),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem buildMenuProducts(String products) =>
      DropdownMenuItem(value: products, child: Text(products));
}
