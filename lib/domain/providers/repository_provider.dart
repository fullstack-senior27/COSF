import 'package:cosmetropolis/data/remote/beautician/beautician_repo.dart';
import 'package:cosmetropolis/data/remote/beautician/beautician_repo_impl.dart';
import 'package:cosmetropolis/data/remote/booking/booking_repo.dart';
import 'package:cosmetropolis/data/remote/booking/booking_repo_impl.dart';
import 'package:cosmetropolis/data/remote/growth/growth_repo.dart';
import 'package:cosmetropolis/data/remote/growth/growth_repo_impl.dart';
import 'package:cosmetropolis/data/remote/newsList/news_list_repo.dart';
import 'package:cosmetropolis/data/remote/newsList/news_list_repo_impl.dart';
import 'package:cosmetropolis/data/remote/public/public_repo.dart';
import 'package:cosmetropolis/data/remote/public/public_repo_impl.dart';
import 'package:cosmetropolis/data/remote/user/user_repo.dart';
import 'package:cosmetropolis/data/remote/user/user_repo_impl.dart';
import 'package:cosmetropolis/domain/providers/api_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final newsRepositoryProvider = Provider<BaseNewsListRepo>(
  (ref) => NewsListRepoImpl(
    ref.read(apiClientProvider),
  ),
);

final userRepositoryProvider = Provider<UserRepo>(
  (ref) => UserRepoImpl(
    ref.read(apiClientProvider),
  ),
);

final publicRepositoryProvider = Provider<PublicRepo>(
  (ref) => PublicRepoImpl(
    ref.read(apiClientProvider),
  ),
);

final beauticianRepositoryProvider = Provider<BeauticianRepo>(
  (ref) => BeauticianRepoImpl(
    ref.read(apiClientProvider),
  ),
);

final bookingRepositoryProvider = Provider<BookingRepo>(
  (ref) => BookingRepoImpl(
    ref.read(apiClientProvider),
  ),
);

final growthRepositoryProvider = Provider<GrowthRepo>(
  (ref) => GrowthRepoImpl(
    ref.read(apiClientProvider),
  ),
);
