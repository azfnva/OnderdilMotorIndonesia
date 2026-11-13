// ignore_for_file: unused_import

/// Coverage helper — mengimpor semua file di lib/ agar file-file tersebut
/// terhitung dalam lcov.info saat menjalankan `flutter test --coverage`.
///
/// Tanpa file ini, file di lib/ yang tidak pernah diimport oleh test apapun
/// tidak akan muncul sama sekali dalam laporan coverage (bukan 0%, melainkan
/// diabaikan sepenuhnya), sehingga angka coverage di SonarCloud tidak jujur.
///
/// Setelah menambahkan file ini, angka coverage di SonarCloud akan turun ke
/// nilai yang sebenarnya (lebih akurat untuk laporan mata kuliah).
import 'package:oem_sparepart_catalog/main.dart';
import 'package:oem_sparepart_catalog/splash_screen.dart';
import 'package:oem_sparepart_catalog/auth_pages.dart';
import 'package:oem_sparepart_catalog/cart_screen.dart';
import 'package:oem_sparepart_catalog/cart_helper.dart';
import 'package:oem_sparepart_catalog/csv_utils.dart';
import 'package:oem_sparepart_catalog/search_helper.dart';
import 'package:oem_sparepart_catalog/app_theme.dart';
import 'package:oem_sparepart_catalog/injection_container.dart';
import 'package:oem_sparepart_catalog/order_history_screen.dart';
import 'package:oem_sparepart_catalog/admin_page.dart';
import 'package:oem_sparepart_catalog/admin_orders_screen.dart';
import 'package:oem_sparepart_catalog/payment_upload_screen.dart';
import 'package:oem_sparepart_catalog/profile_helper.dart';
import 'package:oem_sparepart_catalog/sales_report_screen.dart';
import 'package:oem_sparepart_catalog/bloc/bloc.dart';
import 'package:oem_sparepart_catalog/bloc/auth_bloc.dart';
import 'package:oem_sparepart_catalog/bloc/auth_event.dart';
import 'package:oem_sparepart_catalog/bloc/auth_state.dart';
import 'package:oem_sparepart_catalog/bloc/cart_bloc.dart';
import 'package:oem_sparepart_catalog/bloc/cart_event.dart';
import 'package:oem_sparepart_catalog/bloc/cart_state.dart';
import 'package:oem_sparepart_catalog/core/errors/failure.dart';
import 'package:oem_sparepart_catalog/data/datasources/auth_remote_datasource.dart';
import 'package:oem_sparepart_catalog/data/datasources/cart_remote_datasource.dart';
import 'package:oem_sparepart_catalog/data/datasources/order_remote_datasource.dart';
import 'package:oem_sparepart_catalog/data/datasources/part_remote_datasource.dart';
import 'package:oem_sparepart_catalog/data/datasources/profile_remote_datasource.dart';
import 'package:oem_sparepart_catalog/data/models/auth_user_model.dart';
import 'package:oem_sparepart_catalog/data/models/cart_item_model.dart';
import 'package:oem_sparepart_catalog/data/models/order_model.dart';
import 'package:oem_sparepart_catalog/data/models/part_model.dart';
import 'package:oem_sparepart_catalog/data/models/profile_model.dart';
import 'package:oem_sparepart_catalog/data/repositories/auth_repository_impl.dart';
import 'package:oem_sparepart_catalog/data/repositories/cart_repository_impl.dart';
import 'package:oem_sparepart_catalog/data/repositories/order_repository_impl.dart';
import 'package:oem_sparepart_catalog/data/repositories/part_repository_impl.dart';
import 'package:oem_sparepart_catalog/data/repositories/profile_repository_impl.dart';
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
import 'package:oem_sparepart_catalog/screens/profile_personal_screen.dart';
import 'package:oem_sparepart_catalog/screens/profile_security_screen.dart';
import 'package:oem_sparepart_catalog/screens/profile_shipping_screen.dart';

void main() {
  // File ini hanya bertujuan untuk import semua file di lib/ agar terhitung
  // dalam coverage. Tidak ada test yang dijalankan di sini.
}
