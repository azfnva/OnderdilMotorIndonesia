// ignore_for_file: unused_import

/// Coverage helper — mengimpor semua file di lib/ yang aman untuk
/// diakibatkan (tidak memanggil Supabase atau kode khusus web saat diimport).
///
/// File-file ini akan terhitung dalam lcov.info saat
/// `flutter test --coverage` dijalankan, sehingga angka coverage di
/// SonarCloud lebih juhur dan akurat.
///
/// File yang diubah nama atau dihapus dari daftar ini dapat dikembalikan
/// setelah memastikan tidak menyebabkan error kompilasi.
import 'package:oem_sparepart_catalog/search_helper.dart';
import 'package:oem_sparepart_catalog/csv_utils.dart';
import 'package:oem_sparepart_catalog/app_theme.dart';
import 'package:oem_sparepart_catalog/bloc/bloc.dart';
import 'package:oem_sparepart_catalog/bloc/auth_bloc.dart';
import 'package:oem_sparepart_catalog/bloc/auth_event.dart';
import 'package:oem_sparepart_catalog/bloc/auth_state.dart';
import 'package:oem_sparepart_catalog/bloc/cart_bloc.dart';
import 'package:oem_sparepart_catalog/bloc/cart_event.dart';
import 'package:oem_sparepart_catalog/bloc/cart_state.dart';
import 'package:oem_sparepart_catalog/core/errors/failure.dart';
import 'package:oem_sparepart_catalog/domain/entities/cart_item_entity.dart';
import 'package:oem_sparepart_catalog/domain/entities/order_entity.dart';
import 'package:oem_sparepart_catalog/domain/entities/part_entity.dart';
import 'package:oem_sparepart_catalog/domain/entities/profile_entity.dart';
import 'package:oem_sparepart_catalog/domain/entities/user_entity.dart';
import 'package:oem_sparepart_catalog/domain/repositories/auth_repository.dart';
import 'package:oem_sparepart_catalog/domain/repositories/cart_repository.dart';
import 'package:oem_sparepart_catalog/domain/repositories/order_repository.dart';
import 'package:oem_sparepart_catalog/domain/repositories/part_repository.dart';
import 'package:oem_sparepart_catalog/domain/repositories/profile_repository.dart';
import 'package:oem_sparepart_catalog/domain/usecases/add_part_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/add_to_cart_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/change_password_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/checkout_cart_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/check_session_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/clear_cart_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/delete_part_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/get_orders_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/get_parts_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/get_profile_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/get_user_role_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/load_cart_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/login_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/logout_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/register_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/remove_from_cart_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/update_cart_item_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/update_order_status_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/update_part_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/update_profile_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/update_shipping_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/watch_orders_usecase.dart';
import 'package:oem_sparepart_catalog/domain/usecases/watch_parts_usecase.dart';

void main() {
  // File ini hanya bertujuan untuk import semua file di lib/ agar terhitung
  // dalam coverage. Tidak ada test yang dijalankan di sini.
}
