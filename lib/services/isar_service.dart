import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:scanly/models/result.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<void> saveProduct(Result result) async {
    log("Save Product called.");
    final isar = await db;
    final exists = await isar.results.get(result.id);
    if (exists != null) {
      log("Product already exists.");
      return;
    }
    isar.writeTxnSync<int>(() => isar.results.putSync(result));
  }

  Future<List<Result>> getAllResults() async {
    throw UnimplementedError();
  }

  Stream<List<Result>> listenToResults() async* {
    final isar = await db;
    yield* isar.results.where().watch(initialReturn: true);
  }

  Stream<List<Result>> listenToFavorites() async* {
    final isar = await db;
    yield* isar.results
        .filter()
        .favoriteEqualTo(true)
        .watch(initialReturn: true);
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  Future<Result> favoriteToggle(Result result) async {
    log("Mark AS Favorite toggle");
    final isar = await db;
    result.favorite = !result.favorite;
    isar.writeTxnSync<int>(() => isar.results.putSync(result));
    return result;
  }

  Future<void> deleteResult(int id) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.results.deleteSync(id));
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [ResultSchema],
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
