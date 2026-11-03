import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oem_sparepart_catalog/bloc/bloc.dart';
import 'package:oem_sparepart_catalog/cart_screen.dart';
import 'package:oem_sparepart_catalog/main.dart' show cartBloc;

/// Usage: Given the empty cart screen is displayed
Future<void> theEmptyCartScreenIsDisplayed(WidgetTester tester) async {
  // Pastikan CartBloc memancarkan state keranjang kosong sebelum layar di-pump,
  // supaya StreamBuilder langsung menampilkan empty state.
  cartBloc.events.add(const CartLocalCleared());
  await tester.pump();

  await tester.pumpWidget(
    const MaterialApp(home: CartScreen()),
  );
  await tester.pumpAndSettle();
}
