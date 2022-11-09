// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings

extension GetResultCollection on Isar {
  IsarCollection<Result> get results => collection();
}

const ResultSchema = CollectionSchema(
  name: r'Result',
  schema:
      r'{"name":"Result","idName":"id","properties":[{"name":"additiveTags","type":"StringList"},{"name":"barcode","type":"String"},{"name":"energyKcal","type":"Double"},{"name":"energyKj","type":"Double"},{"name":"energyKjPoints","type":"Long"},{"name":"fat","type":"Double"},{"name":"favorite","type":"Bool"},{"name":"fiberG","type":"Double"},{"name":"fiberGPoints","type":"Long"},{"name":"fruiteVegeGPoints","type":"Long"},{"name":"fruitesVegetablesG","type":"Double"},{"name":"genericName","type":"String"},{"name":"imgUrl","type":"String"},{"name":"name","type":"String"},{"name":"pointsC","type":"Long"},{"name":"prodcutType","type":"Long"},{"name":"proteinsGPoints","type":"Long"},{"name":"protiensG","type":"Double"},{"name":"saltG","type":"Double"},{"name":"saltPoints","type":"Long"},{"name":"saturatedFatG","type":"Double"},{"name":"saturatedFatGPoints","type":"Long"},{"name":"sodium","type":"Double"},{"name":"sodiumMg","type":"Double"},{"name":"sodiumMgPoints","type":"Long"},{"name":"sugarG","type":"Double"},{"name":"sugarGPoints","type":"Long"}],"indexes":[],"links":[]}',
  idName: r'id',
  propertyIds: {
    r'additiveTags': 0,
    r'barcode': 1,
    r'energyKcal': 2,
    r'energyKj': 3,
    r'energyKjPoints': 4,
    r'fat': 5,
    r'favorite': 6,
    r'fiberG': 7,
    r'fiberGPoints': 8,
    r'fruiteVegeGPoints': 9,
    r'fruitesVegetablesG': 10,
    r'genericName': 11,
    r'imgUrl': 12,
    r'name': 13,
    r'pointsC': 14,
    r'prodcutType': 15,
    r'proteinsGPoints': 16,
    r'protiensG': 17,
    r'saltG': 18,
    r'saltPoints': 19,
    r'saturatedFatG': 20,
    r'saturatedFatGPoints': 21,
    r'sodium': 22,
    r'sodiumMg': 23,
    r'sodiumMgPoints': 24,
    r'sugarG': 25,
    r'sugarGPoints': 26
  },
  listProperties: {r'additiveTags'},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _resultGetId,
  setId: _resultSetId,
  getLinks: _resultGetLinks,
  attachLinks: _resultAttachLinks,
  serializeNative: _resultSerializeNative,
  deserializeNative: _resultDeserializeNative,
  deserializePropNative: _resultDeserializePropNative,
  serializeWeb: _resultSerializeWeb,
  deserializeWeb: _resultDeserializeWeb,
  deserializePropWeb: _resultDeserializePropWeb,
  version: 4,
);

int? _resultGetId(Result object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _resultSetId(Result object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _resultGetLinks(Result object) {
  return [];
}

const _resultProductTypeConverter = ProductTypeConverter();

void _resultSerializeNative(IsarCollection<Result> collection, IsarCObject cObj,
    Result object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var additiveTags$BytesCount = 3 + (object.additiveTags.length) * 3;
  final additiveTags$BytesList = <IsarUint8List>[];
  for (final str in object.additiveTags) {
    final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
    additiveTags$BytesList.add(bytes);
    additiveTags$BytesCount += bytes.length as int;
  }
  final barcode$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.barcode);
  final genericName$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.genericName);
  final imgUrl$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.imgUrl);
  final name$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.name);
  final prodcutType$Converted =
      _resultProductTypeConverter.toIsar(object.prodcutType);
  final size = (staticSize +
      additiveTags$BytesCount +
      3 +
      (barcode$Bytes.length) +
      3 +
      (genericName$Bytes.length) +
      3 +
      (imgUrl$Bytes.length) +
      3 +
      (name$Bytes.length)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeHeader();
  writer.writeByteLists(offsets[0], additiveTags$BytesList);
  writer.writeByteList(offsets[1], barcode$Bytes);
  writer.writeDouble(offsets[2], object.energyKcal);
  writer.writeDouble(offsets[3], object.energyKj);
  writer.writeLong(offsets[4], object.energyKjPoints);
  writer.writeDouble(offsets[5], object.fat);
  writer.writeBool(offsets[6], object.favorite);
  writer.writeDouble(offsets[7], object.fiberG);
  writer.writeLong(offsets[8], object.fiberGPoints);
  writer.writeLong(offsets[9], object.fruiteVegeGPoints);
  writer.writeDouble(offsets[10], object.fruitesVegetablesG);
  writer.writeByteList(offsets[11], genericName$Bytes);
  writer.writeByteList(offsets[12], imgUrl$Bytes);
  writer.writeByteList(offsets[13], name$Bytes);
  writer.writeLong(offsets[14], object.pointsC);
  writer.writeLong(offsets[15], prodcutType$Converted);
  writer.writeLong(offsets[16], object.proteinsGPoints);
  writer.writeDouble(offsets[17], object.protiensG);
  writer.writeDouble(offsets[18], object.saltG);
  writer.writeLong(offsets[19], object.saltPoints);
  writer.writeDouble(offsets[20], object.saturatedFatG);
  writer.writeLong(offsets[21], object.saturatedFatGPoints);
  writer.writeDouble(offsets[22], object.sodium);
  writer.writeDouble(offsets[23], object.sodiumMg);
  writer.writeLong(offsets[24], object.sodiumMgPoints);
  writer.writeDouble(offsets[25], object.sugarG);
  writer.writeLong(offsets[26], object.sugarGPoints);
}

Result _resultDeserializeNative(IsarCollection<Result> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Result();
  object.additiveTags = reader.readStringList(offsets[0]) ?? [];
  object.barcode = reader.readString(offsets[1]);
  object.energyKcal = reader.readDouble(offsets[2]);
  object.energyKj = reader.readDouble(offsets[3]);
  object.energyKjPoints = reader.readLong(offsets[4]);
  object.fat = reader.readDouble(offsets[5]);
  object.favorite = reader.readBool(offsets[6]);
  object.fiberG = reader.readDouble(offsets[7]);
  object.fiberGPoints = reader.readLong(offsets[8]);
  object.fruiteVegeGPoints = reader.readLong(offsets[9]);
  object.fruitesVegetablesG = reader.readDouble(offsets[10]);
  object.genericName = reader.readString(offsets[11]);
  object.id = id;
  object.imgUrl = reader.readString(offsets[12]);
  object.name = reader.readString(offsets[13]);
  object.pointsC = reader.readLong(offsets[14]);
  object.prodcutType =
      _resultProductTypeConverter.fromIsar(reader.readLong(offsets[15]));
  object.proteinsGPoints = reader.readLong(offsets[16]);
  object.protiensG = reader.readDouble(offsets[17]);
  object.saltG = reader.readDouble(offsets[18]);
  object.saltPoints = reader.readLong(offsets[19]);
  object.saturatedFatG = reader.readDouble(offsets[20]);
  object.saturatedFatGPoints = reader.readLong(offsets[21]);
  object.sodium = reader.readDouble(offsets[22]);
  object.sodiumMg = reader.readDouble(offsets[23]);
  object.sodiumMgPoints = reader.readLong(offsets[24]);
  object.sugarG = reader.readDouble(offsets[25]);
  object.sugarGPoints = reader.readLong(offsets[26]);
  return object;
}

P _resultDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (_resultProductTypeConverter.fromIsar(reader.readLong(offset)))
          as P;
    case 16:
      return (reader.readLong(offset)) as P;
    case 17:
      return (reader.readDouble(offset)) as P;
    case 18:
      return (reader.readDouble(offset)) as P;
    case 19:
      return (reader.readLong(offset)) as P;
    case 20:
      return (reader.readDouble(offset)) as P;
    case 21:
      return (reader.readLong(offset)) as P;
    case 22:
      return (reader.readDouble(offset)) as P;
    case 23:
      return (reader.readDouble(offset)) as P;
    case 24:
      return (reader.readLong(offset)) as P;
    case 25:
      return (reader.readDouble(offset)) as P;
    case 26:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Illegal propertyIndex');
  }
}

Object _resultSerializeWeb(IsarCollection<Result> collection, Result object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, r'additiveTags', object.additiveTags);
  IsarNative.jsObjectSet(jsObj, r'barcode', object.barcode);
  IsarNative.jsObjectSet(jsObj, r'energyKcal', object.energyKcal);
  IsarNative.jsObjectSet(jsObj, r'energyKj', object.energyKj);
  IsarNative.jsObjectSet(jsObj, r'energyKjPoints', object.energyKjPoints);
  IsarNative.jsObjectSet(jsObj, r'fat', object.fat);
  IsarNative.jsObjectSet(jsObj, r'favorite', object.favorite);
  IsarNative.jsObjectSet(jsObj, r'fiberG', object.fiberG);
  IsarNative.jsObjectSet(jsObj, r'fiberGPoints', object.fiberGPoints);
  IsarNative.jsObjectSet(jsObj, r'fruiteVegeGPoints', object.fruiteVegeGPoints);
  IsarNative.jsObjectSet(
      jsObj, r'fruitesVegetablesG', object.fruitesVegetablesG);
  IsarNative.jsObjectSet(jsObj, r'genericName', object.genericName);
  IsarNative.jsObjectSet(jsObj, r'id', object.id);
  IsarNative.jsObjectSet(jsObj, r'imgUrl', object.imgUrl);
  IsarNative.jsObjectSet(jsObj, r'name', object.name);
  IsarNative.jsObjectSet(jsObj, r'pointsC', object.pointsC);
  IsarNative.jsObjectSet(jsObj, r'prodcutType',
      _resultProductTypeConverter.toIsar(object.prodcutType));
  IsarNative.jsObjectSet(jsObj, r'proteinsGPoints', object.proteinsGPoints);
  IsarNative.jsObjectSet(jsObj, r'protiensG', object.protiensG);
  IsarNative.jsObjectSet(jsObj, r'saltG', object.saltG);
  IsarNative.jsObjectSet(jsObj, r'saltPoints', object.saltPoints);
  IsarNative.jsObjectSet(jsObj, r'saturatedFatG', object.saturatedFatG);
  IsarNative.jsObjectSet(
      jsObj, r'saturatedFatGPoints', object.saturatedFatGPoints);
  IsarNative.jsObjectSet(jsObj, r'sodium', object.sodium);
  IsarNative.jsObjectSet(jsObj, r'sodiumMg', object.sodiumMg);
  IsarNative.jsObjectSet(jsObj, r'sodiumMgPoints', object.sodiumMgPoints);
  IsarNative.jsObjectSet(jsObj, r'sugarG', object.sugarG);
  IsarNative.jsObjectSet(jsObj, r'sugarGPoints', object.sugarGPoints);
  return jsObj;
}

Result _resultDeserializeWeb(IsarCollection<Result> collection, Object jsObj) {
  final object = Result();
  object.additiveTags =
      (IsarNative.jsObjectGet(jsObj, r'additiveTags') as List?)
              ?.map((e) => e ?? '')
              .toList()
              .cast<String>() ??
          [];
  object.barcode = IsarNative.jsObjectGet(jsObj, r'barcode') ?? '';
  object.energyKcal =
      IsarNative.jsObjectGet(jsObj, r'energyKcal') ?? double.negativeInfinity;
  object.energyKj =
      IsarNative.jsObjectGet(jsObj, r'energyKj') ?? double.negativeInfinity;
  object.energyKjPoints = IsarNative.jsObjectGet(jsObj, r'energyKjPoints') ??
      (double.negativeInfinity as int);
  object.fat = IsarNative.jsObjectGet(jsObj, r'fat') ?? double.negativeInfinity;
  object.favorite = IsarNative.jsObjectGet(jsObj, r'favorite') ?? false;
  object.fiberG =
      IsarNative.jsObjectGet(jsObj, r'fiberG') ?? double.negativeInfinity;
  object.fiberGPoints = IsarNative.jsObjectGet(jsObj, r'fiberGPoints') ??
      (double.negativeInfinity as int);
  object.fruiteVegeGPoints =
      IsarNative.jsObjectGet(jsObj, r'fruiteVegeGPoints') ??
          (double.negativeInfinity as int);
  object.fruitesVegetablesG =
      IsarNative.jsObjectGet(jsObj, r'fruitesVegetablesG') ??
          double.negativeInfinity;
  object.genericName = IsarNative.jsObjectGet(jsObj, r'genericName') ?? '';
  object.id = IsarNative.jsObjectGet(jsObj, r'id');
  object.imgUrl = IsarNative.jsObjectGet(jsObj, r'imgUrl') ?? '';
  object.name = IsarNative.jsObjectGet(jsObj, r'name') ?? '';
  object.pointsC = IsarNative.jsObjectGet(jsObj, r'pointsC') ??
      (double.negativeInfinity as int);
  object.prodcutType = _resultProductTypeConverter.fromIsar(
      IsarNative.jsObjectGet(jsObj, r'prodcutType') ??
          (double.negativeInfinity as int));
  object.proteinsGPoints = IsarNative.jsObjectGet(jsObj, r'proteinsGPoints') ??
      (double.negativeInfinity as int);
  object.protiensG =
      IsarNative.jsObjectGet(jsObj, r'protiensG') ?? double.negativeInfinity;
  object.saltG =
      IsarNative.jsObjectGet(jsObj, r'saltG') ?? double.negativeInfinity;
  object.saltPoints = IsarNative.jsObjectGet(jsObj, r'saltPoints') ??
      (double.negativeInfinity as int);
  object.saturatedFatG = IsarNative.jsObjectGet(jsObj, r'saturatedFatG') ??
      double.negativeInfinity;
  object.saturatedFatGPoints =
      IsarNative.jsObjectGet(jsObj, r'saturatedFatGPoints') ??
          (double.negativeInfinity as int);
  object.sodium =
      IsarNative.jsObjectGet(jsObj, r'sodium') ?? double.negativeInfinity;
  object.sodiumMg =
      IsarNative.jsObjectGet(jsObj, r'sodiumMg') ?? double.negativeInfinity;
  object.sodiumMgPoints = IsarNative.jsObjectGet(jsObj, r'sodiumMgPoints') ??
      (double.negativeInfinity as int);
  object.sugarG =
      IsarNative.jsObjectGet(jsObj, r'sugarG') ?? double.negativeInfinity;
  object.sugarGPoints = IsarNative.jsObjectGet(jsObj, r'sugarGPoints') ??
      (double.negativeInfinity as int);
  return object;
}

P _resultDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case r'additiveTags':
      return ((IsarNative.jsObjectGet(jsObj, r'additiveTags') as List?)
              ?.map((e) => e ?? '')
              .toList()
              .cast<String>() ??
          []) as P;
    case r'barcode':
      return (IsarNative.jsObjectGet(jsObj, r'barcode') ?? '') as P;
    case r'energyKcal':
      return (IsarNative.jsObjectGet(jsObj, r'energyKcal') ??
          double.negativeInfinity) as P;
    case r'energyKj':
      return (IsarNative.jsObjectGet(jsObj, r'energyKj') ??
          double.negativeInfinity) as P;
    case r'energyKjPoints':
      return (IsarNative.jsObjectGet(jsObj, r'energyKjPoints') ??
          (double.negativeInfinity as int)) as P;
    case r'fat':
      return (IsarNative.jsObjectGet(jsObj, r'fat') ?? double.negativeInfinity)
          as P;
    case r'favorite':
      return (IsarNative.jsObjectGet(jsObj, r'favorite') ?? false) as P;
    case r'fiberG':
      return (IsarNative.jsObjectGet(jsObj, r'fiberG') ??
          double.negativeInfinity) as P;
    case r'fiberGPoints':
      return (IsarNative.jsObjectGet(jsObj, r'fiberGPoints') ??
          (double.negativeInfinity as int)) as P;
    case r'fruiteVegeGPoints':
      return (IsarNative.jsObjectGet(jsObj, r'fruiteVegeGPoints') ??
          (double.negativeInfinity as int)) as P;
    case r'fruitesVegetablesG':
      return (IsarNative.jsObjectGet(jsObj, r'fruitesVegetablesG') ??
          double.negativeInfinity) as P;
    case r'genericName':
      return (IsarNative.jsObjectGet(jsObj, r'genericName') ?? '') as P;
    case r'id':
      return (IsarNative.jsObjectGet(jsObj, r'id')) as P;
    case r'imgUrl':
      return (IsarNative.jsObjectGet(jsObj, r'imgUrl') ?? '') as P;
    case r'name':
      return (IsarNative.jsObjectGet(jsObj, r'name') ?? '') as P;
    case r'pointsC':
      return (IsarNative.jsObjectGet(jsObj, r'pointsC') ??
          (double.negativeInfinity as int)) as P;
    case r'prodcutType':
      return (_resultProductTypeConverter.fromIsar(
          IsarNative.jsObjectGet(jsObj, r'prodcutType') ??
              (double.negativeInfinity as int))) as P;
    case r'proteinsGPoints':
      return (IsarNative.jsObjectGet(jsObj, r'proteinsGPoints') ??
          (double.negativeInfinity as int)) as P;
    case r'protiensG':
      return (IsarNative.jsObjectGet(jsObj, r'protiensG') ??
          double.negativeInfinity) as P;
    case r'saltG':
      return (IsarNative.jsObjectGet(jsObj, r'saltG') ??
          double.negativeInfinity) as P;
    case r'saltPoints':
      return (IsarNative.jsObjectGet(jsObj, r'saltPoints') ??
          (double.negativeInfinity as int)) as P;
    case r'saturatedFatG':
      return (IsarNative.jsObjectGet(jsObj, r'saturatedFatG') ??
          double.negativeInfinity) as P;
    case r'saturatedFatGPoints':
      return (IsarNative.jsObjectGet(jsObj, r'saturatedFatGPoints') ??
          (double.negativeInfinity as int)) as P;
    case r'sodium':
      return (IsarNative.jsObjectGet(jsObj, r'sodium') ??
          double.negativeInfinity) as P;
    case r'sodiumMg':
      return (IsarNative.jsObjectGet(jsObj, r'sodiumMg') ??
          double.negativeInfinity) as P;
    case r'sodiumMgPoints':
      return (IsarNative.jsObjectGet(jsObj, r'sodiumMgPoints') ??
          (double.negativeInfinity as int)) as P;
    case r'sugarG':
      return (IsarNative.jsObjectGet(jsObj, r'sugarG') ??
          double.negativeInfinity) as P;
    case r'sugarGPoints':
      return (IsarNative.jsObjectGet(jsObj, r'sugarGPoints') ??
          (double.negativeInfinity as int)) as P;
    default:
      throw IsarError('Illegal propertyName');
  }
}

void _resultAttachLinks(IsarCollection<dynamic> col, int id, Result object) {}

extension ResultQueryWhereSort on QueryBuilder<Result, Result, QWhere> {
  QueryBuilder<Result, Result, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ResultQueryWhere on QueryBuilder<Result, Result, QWhereClause> {
  QueryBuilder<Result, Result, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterWhereClause> idNotEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Result, Result, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Result, Result, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Result, Result, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ResultQueryFilter on QueryBuilder<Result, Result, QFilterCondition> {
  QueryBuilder<Result, Result, QAfterFilterCondition>
      additiveTagsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'additiveTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      additiveTagsElementGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'additiveTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      additiveTagsElementLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'additiveTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      additiveTagsElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'additiveTags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      additiveTagsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'additiveTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      additiveTagsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'additiveTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      additiveTagsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'additiveTags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      additiveTagsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'additiveTags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> barcodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> barcodeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> barcodeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> barcodeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'barcode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> barcodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> barcodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> barcodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> barcodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'barcode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> energyKcalGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'energyKcal',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> energyKcalLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'energyKcal',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> energyKcalBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'energyKcal',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> energyKjGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'energyKj',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> energyKjLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'energyKj',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> energyKjBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'energyKj',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> energyKjPointsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'energyKjPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> energyKjPointsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'energyKjPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> energyKjPointsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'energyKjPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> energyKjPointsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'energyKjPoints',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fatGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fat',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fatLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'fat',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fatBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fat',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> favoriteEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'favorite',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fiberGGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fiberG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fiberGLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'fiberG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fiberGBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fiberG',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fiberGPointsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fiberGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fiberGPointsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fiberGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fiberGPointsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fiberGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fiberGPointsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fiberGPoints',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fruiteVegeGPointsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fruiteVegeGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      fruiteVegeGPointsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fruiteVegeGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fruiteVegeGPointsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fruiteVegeGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fruiteVegeGPointsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fruiteVegeGPoints',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      fruitesVegetablesGGreaterThan(double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fruitesVegetablesG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      fruitesVegetablesGLessThan(double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'fruitesVegetablesG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> fruitesVegetablesGBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fruitesVegetablesG',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> genericNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genericName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> genericNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'genericName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> genericNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'genericName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> genericNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'genericName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> genericNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'genericName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> genericNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'genericName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> genericNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'genericName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> genericNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'genericName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> imgUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> imgUrlGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> imgUrlLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> imgUrlBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imgUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> imgUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> imgUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> imgUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imgUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> imgUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imgUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> pointsCEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pointsC',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> pointsCGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pointsC',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> pointsCLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pointsC',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> pointsCBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pointsC',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> prodcutTypeEqualTo(
      ProductType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodcutType',
        value: _resultProductTypeConverter.toIsar(value),
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> prodcutTypeGreaterThan(
    ProductType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prodcutType',
        value: _resultProductTypeConverter.toIsar(value),
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> prodcutTypeLessThan(
    ProductType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prodcutType',
        value: _resultProductTypeConverter.toIsar(value),
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> prodcutTypeBetween(
    ProductType lower,
    ProductType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prodcutType',
        lower: _resultProductTypeConverter.toIsar(lower),
        includeLower: includeLower,
        upper: _resultProductTypeConverter.toIsar(upper),
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> proteinsGPointsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'proteinsGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      proteinsGPointsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'proteinsGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> proteinsGPointsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'proteinsGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> proteinsGPointsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'proteinsGPoints',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> protiensGGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'protiensG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> protiensGLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'protiensG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> protiensGBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'protiensG',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> saltGGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'saltG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> saltGLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'saltG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> saltGBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saltG',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> saltPointsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saltPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> saltPointsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'saltPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> saltPointsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'saltPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> saltPointsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saltPoints',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> saturatedFatGGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'saturatedFatG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> saturatedFatGLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'saturatedFatG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> saturatedFatGBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saturatedFatG',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      saturatedFatGPointsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saturatedFatGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      saturatedFatGPointsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'saturatedFatGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      saturatedFatGPointsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'saturatedFatGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition>
      saturatedFatGPointsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saturatedFatGPoints',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sodiumGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sodium',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sodiumLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'sodium',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sodiumBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sodium',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sodiumMgGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sodiumMg',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sodiumMgLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'sodiumMg',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sodiumMgBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sodiumMg',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sodiumMgPointsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sodiumMgPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sodiumMgPointsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sodiumMgPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sodiumMgPointsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sodiumMgPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sodiumMgPointsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sodiumMgPoints',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sugarGGreaterThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sugarG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sugarGLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        property: r'sugarG',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sugarGBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sugarG',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sugarGPointsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sugarGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sugarGPointsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sugarGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sugarGPointsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sugarGPoints',
        value: value,
      ));
    });
  }

  QueryBuilder<Result, Result, QAfterFilterCondition> sugarGPointsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sugarGPoints',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ResultQueryLinks on QueryBuilder<Result, Result, QFilterCondition> {}

extension ResultQueryWhereSortBy on QueryBuilder<Result, Result, QSortBy> {
  QueryBuilder<Result, Result, QAfterSortBy> sortByBarcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'barcode', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByBarcodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'barcode', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByEnergyKcal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKcal', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByEnergyKcalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKcal', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByEnergyKj() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKj', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByEnergyKjDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKj', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByEnergyKjPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKjPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByEnergyKjPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKjPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fat', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fat', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFiberG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fiberG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFiberGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fiberG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFiberGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fiberGPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFiberGPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fiberGPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFruiteVegeGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fruiteVegeGPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFruiteVegeGPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fruiteVegeGPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFruitesVegetablesG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fruitesVegetablesG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByFruitesVegetablesGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fruitesVegetablesG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByGenericName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genericName', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByGenericNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genericName', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByImgUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgUrl', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByImgUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgUrl', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByPointsC() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pointsC', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByPointsCDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pointsC', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByProdcutType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodcutType', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByProdcutTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodcutType', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByProteinsGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proteinsGPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByProteinsGPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proteinsGPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByProtiensG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protiensG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortByProtiensGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protiensG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySaltG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySaltGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySaltPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySaltPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySaturatedFatG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturatedFatG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySaturatedFatGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturatedFatG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySaturatedFatGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturatedFatGPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySaturatedFatGPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturatedFatGPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySodium() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodium', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySodiumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodium', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySodiumMg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodiumMg', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySodiumMgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodiumMg', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySodiumMgPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodiumMgPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySodiumMgPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodiumMgPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySugarG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sugarG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySugarGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sugarG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySugarGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sugarGPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> sortBySugarGPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sugarGPoints', Sort.desc);
    });
  }
}

extension ResultQueryWhereSortThenBy
    on QueryBuilder<Result, Result, QSortThenBy> {
  QueryBuilder<Result, Result, QAfterSortBy> thenByBarcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'barcode', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByBarcodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'barcode', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByEnergyKcal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKcal', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByEnergyKcalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKcal', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByEnergyKj() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKj', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByEnergyKjDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKj', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByEnergyKjPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKjPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByEnergyKjPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energyKjPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fat', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fat', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favorite', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFiberG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fiberG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFiberGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fiberG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFiberGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fiberGPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFiberGPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fiberGPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFruiteVegeGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fruiteVegeGPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFruiteVegeGPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fruiteVegeGPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFruitesVegetablesG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fruitesVegetablesG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByFruitesVegetablesGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fruitesVegetablesG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByGenericName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genericName', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByGenericNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genericName', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByImgUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgUrl', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByImgUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgUrl', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByPointsC() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pointsC', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByPointsCDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pointsC', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByProdcutType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodcutType', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByProdcutTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodcutType', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByProteinsGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proteinsGPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByProteinsGPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'proteinsGPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByProtiensG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protiensG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenByProtiensGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protiensG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySaltG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySaltGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySaltPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySaltPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saltPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySaturatedFatG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturatedFatG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySaturatedFatGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturatedFatG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySaturatedFatGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturatedFatGPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySaturatedFatGPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturatedFatGPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySodium() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodium', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySodiumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodium', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySodiumMg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodiumMg', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySodiumMgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodiumMg', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySodiumMgPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodiumMgPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySodiumMgPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sodiumMgPoints', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySugarG() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sugarG', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySugarGDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sugarG', Sort.desc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySugarGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sugarGPoints', Sort.asc);
    });
  }

  QueryBuilder<Result, Result, QAfterSortBy> thenBySugarGPointsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sugarGPoints', Sort.desc);
    });
  }
}

extension ResultQueryWhereDistinct on QueryBuilder<Result, Result, QDistinct> {
  QueryBuilder<Result, Result, QDistinct> distinctByAdditiveTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'additiveTags');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByBarcode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'barcode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByEnergyKcal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'energyKcal');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByEnergyKj() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'energyKj');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByEnergyKjPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'energyKjPoints');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByFat() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fat');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'favorite');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByFiberG() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fiberG');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByFiberGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fiberGPoints');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByFruiteVegeGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fruiteVegeGPoints');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByFruitesVegetablesG() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fruitesVegetablesG');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByGenericName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'genericName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByImgUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imgUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByPointsC() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pointsC');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByProdcutType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodcutType');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByProteinsGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'proteinsGPoints');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctByProtiensG() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'protiensG');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctBySaltG() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'saltG');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctBySaltPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'saltPoints');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctBySaturatedFatG() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'saturatedFatG');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctBySaturatedFatGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'saturatedFatGPoints');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctBySodium() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sodium');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctBySodiumMg() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sodiumMg');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctBySodiumMgPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sodiumMgPoints');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctBySugarG() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sugarG');
    });
  }

  QueryBuilder<Result, Result, QDistinct> distinctBySugarGPoints() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sugarGPoints');
    });
  }
}

extension ResultQueryProperty on QueryBuilder<Result, Result, QQueryProperty> {
  QueryBuilder<Result, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Result, List<String>, QQueryOperations> additiveTagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'additiveTags');
    });
  }

  QueryBuilder<Result, String, QQueryOperations> barcodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'barcode');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> energyKcalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'energyKcal');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> energyKjProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'energyKj');
    });
  }

  QueryBuilder<Result, int, QQueryOperations> energyKjPointsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'energyKjPoints');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> fatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fat');
    });
  }

  QueryBuilder<Result, bool, QQueryOperations> favoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'favorite');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> fiberGProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fiberG');
    });
  }

  QueryBuilder<Result, int, QQueryOperations> fiberGPointsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fiberGPoints');
    });
  }

  QueryBuilder<Result, int, QQueryOperations> fruiteVegeGPointsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fruiteVegeGPoints');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> fruitesVegetablesGProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fruitesVegetablesG');
    });
  }

  QueryBuilder<Result, String, QQueryOperations> genericNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genericName');
    });
  }

  QueryBuilder<Result, String, QQueryOperations> imgUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imgUrl');
    });
  }

  QueryBuilder<Result, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Result, int, QQueryOperations> pointsCProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pointsC');
    });
  }

  QueryBuilder<Result, ProductType, QQueryOperations> prodcutTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodcutType');
    });
  }

  QueryBuilder<Result, int, QQueryOperations> proteinsGPointsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'proteinsGPoints');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> protiensGProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'protiensG');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> saltGProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'saltG');
    });
  }

  QueryBuilder<Result, int, QQueryOperations> saltPointsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'saltPoints');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> saturatedFatGProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'saturatedFatG');
    });
  }

  QueryBuilder<Result, int, QQueryOperations> saturatedFatGPointsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'saturatedFatGPoints');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> sodiumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sodium');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> sodiumMgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sodiumMg');
    });
  }

  QueryBuilder<Result, int, QQueryOperations> sodiumMgPointsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sodiumMgPoints');
    });
  }

  QueryBuilder<Result, double, QQueryOperations> sugarGProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sugarG');
    });
  }

  QueryBuilder<Result, int, QQueryOperations> sugarGPointsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sugarGPoints');
    });
  }
}
