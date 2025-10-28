import '../database.dart';

class ReviewsTable extends SupabaseTable<ReviewsRow> {
  @override
  String get tableName => 'reviews';

  @override
  ReviewsRow createRow(Map<String, dynamic> data) => ReviewsRow(data);
}

class ReviewsRow extends SupabaseDataRow {
  ReviewsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReviewsTable();

  String get reviewId => getField<String>('review_id')!;
  set reviewId(String value) => setField<String>('review_id', value);

  int? get variantId => getField<int>('variant_id');
  set variantId(int? value) => setField<int>('variant_id', value);

  int? get customerId => getField<int>('customer_id');
  set customerId(int? value) => setField<int>('customer_id', value);

  int? get rating => getField<int>('rating');
  set rating(int? value) => setField<int>('rating', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get sentiment => getField<String>('sentiment');
  set sentiment(String? value) => setField<String>('sentiment', value);

  double? get sentimentScore => getField<double>('sentiment_score');
  set sentimentScore(double? value) =>
      setField<double>('sentiment_score', value);

  String? get summary => getField<String>('summary');
  set summary(String? value) => setField<String>('summary', value);
}
