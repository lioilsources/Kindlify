// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String> slug = GeneratedColumn<String>(
    'slug',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sourceLanguageMeta = const VerificationMeta(
    'sourceLanguage',
  );
  @override
  late final GeneratedColumn<String> sourceLanguage = GeneratedColumn<String>(
    'source_language',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scriptMeta = const VerificationMeta('script');
  @override
  late final GeneratedColumn<String> script = GeneratedColumn<String>(
    'script',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pipelineVersionMeta = const VerificationMeta(
    'pipelineVersion',
  );
  @override
  late final GeneratedColumn<String> pipelineVersion = GeneratedColumn<String>(
    'pipeline_version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _generatedAtMeta = const VerificationMeta(
    'generatedAt',
  );
  @override
  late final GeneratedColumn<String> generatedAt = GeneratedColumn<String>(
    'generated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _downloadedAtMeta = const VerificationMeta(
    'downloadedAt',
  );
  @override
  late final GeneratedColumn<int> downloadedAt = GeneratedColumn<int>(
    'downloaded_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalNodesMeta = const VerificationMeta(
    'totalNodes',
  );
  @override
  late final GeneratedColumn<int> totalNodes = GeneratedColumn<int>(
    'total_nodes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    slug,
    title,
    sourceLanguage,
    script,
    pipelineVersion,
    generatedAt,
    downloadedAt,
    totalNodes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books';
  @override
  VerificationContext validateIntegrity(
    Insertable<Book> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('slug')) {
      context.handle(
        _slugMeta,
        slug.isAcceptableOrUnknown(data['slug']!, _slugMeta),
      );
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('source_language')) {
      context.handle(
        _sourceLanguageMeta,
        sourceLanguage.isAcceptableOrUnknown(
          data['source_language']!,
          _sourceLanguageMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_sourceLanguageMeta);
    }
    if (data.containsKey('script')) {
      context.handle(
        _scriptMeta,
        script.isAcceptableOrUnknown(data['script']!, _scriptMeta),
      );
    } else if (isInserting) {
      context.missing(_scriptMeta);
    }
    if (data.containsKey('pipeline_version')) {
      context.handle(
        _pipelineVersionMeta,
        pipelineVersion.isAcceptableOrUnknown(
          data['pipeline_version']!,
          _pipelineVersionMeta,
        ),
      );
    }
    if (data.containsKey('generated_at')) {
      context.handle(
        _generatedAtMeta,
        generatedAt.isAcceptableOrUnknown(
          data['generated_at']!,
          _generatedAtMeta,
        ),
      );
    }
    if (data.containsKey('downloaded_at')) {
      context.handle(
        _downloadedAtMeta,
        downloadedAt.isAcceptableOrUnknown(
          data['downloaded_at']!,
          _downloadedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_downloadedAtMeta);
    }
    if (data.containsKey('total_nodes')) {
      context.handle(
        _totalNodesMeta,
        totalNodes.isAcceptableOrUnknown(data['total_nodes']!, _totalNodesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {slug};
  @override
  Book map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Book(
      slug: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}slug'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      sourceLanguage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_language'],
      )!,
      script: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}script'],
      )!,
      pipelineVersion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pipeline_version'],
      )!,
      generatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}generated_at'],
      )!,
      downloadedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}downloaded_at'],
      )!,
      totalNodes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_nodes'],
      )!,
    );
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(attachedDatabase, alias);
  }
}

class Book extends DataClass implements Insertable<Book> {
  final String slug;
  final String title;
  final String sourceLanguage;
  final String script;
  final String pipelineVersion;
  final String generatedAt;
  final int downloadedAt;
  final int totalNodes;
  const Book({
    required this.slug,
    required this.title,
    required this.sourceLanguage,
    required this.script,
    required this.pipelineVersion,
    required this.generatedAt,
    required this.downloadedAt,
    required this.totalNodes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['slug'] = Variable<String>(slug);
    map['title'] = Variable<String>(title);
    map['source_language'] = Variable<String>(sourceLanguage);
    map['script'] = Variable<String>(script);
    map['pipeline_version'] = Variable<String>(pipelineVersion);
    map['generated_at'] = Variable<String>(generatedAt);
    map['downloaded_at'] = Variable<int>(downloadedAt);
    map['total_nodes'] = Variable<int>(totalNodes);
    return map;
  }

  BooksCompanion toCompanion(bool nullToAbsent) {
    return BooksCompanion(
      slug: Value(slug),
      title: Value(title),
      sourceLanguage: Value(sourceLanguage),
      script: Value(script),
      pipelineVersion: Value(pipelineVersion),
      generatedAt: Value(generatedAt),
      downloadedAt: Value(downloadedAt),
      totalNodes: Value(totalNodes),
    );
  }

  factory Book.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Book(
      slug: serializer.fromJson<String>(json['slug']),
      title: serializer.fromJson<String>(json['title']),
      sourceLanguage: serializer.fromJson<String>(json['sourceLanguage']),
      script: serializer.fromJson<String>(json['script']),
      pipelineVersion: serializer.fromJson<String>(json['pipelineVersion']),
      generatedAt: serializer.fromJson<String>(json['generatedAt']),
      downloadedAt: serializer.fromJson<int>(json['downloadedAt']),
      totalNodes: serializer.fromJson<int>(json['totalNodes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'slug': serializer.toJson<String>(slug),
      'title': serializer.toJson<String>(title),
      'sourceLanguage': serializer.toJson<String>(sourceLanguage),
      'script': serializer.toJson<String>(script),
      'pipelineVersion': serializer.toJson<String>(pipelineVersion),
      'generatedAt': serializer.toJson<String>(generatedAt),
      'downloadedAt': serializer.toJson<int>(downloadedAt),
      'totalNodes': serializer.toJson<int>(totalNodes),
    };
  }

  Book copyWith({
    String? slug,
    String? title,
    String? sourceLanguage,
    String? script,
    String? pipelineVersion,
    String? generatedAt,
    int? downloadedAt,
    int? totalNodes,
  }) => Book(
    slug: slug ?? this.slug,
    title: title ?? this.title,
    sourceLanguage: sourceLanguage ?? this.sourceLanguage,
    script: script ?? this.script,
    pipelineVersion: pipelineVersion ?? this.pipelineVersion,
    generatedAt: generatedAt ?? this.generatedAt,
    downloadedAt: downloadedAt ?? this.downloadedAt,
    totalNodes: totalNodes ?? this.totalNodes,
  );
  Book copyWithCompanion(BooksCompanion data) {
    return Book(
      slug: data.slug.present ? data.slug.value : this.slug,
      title: data.title.present ? data.title.value : this.title,
      sourceLanguage: data.sourceLanguage.present
          ? data.sourceLanguage.value
          : this.sourceLanguage,
      script: data.script.present ? data.script.value : this.script,
      pipelineVersion: data.pipelineVersion.present
          ? data.pipelineVersion.value
          : this.pipelineVersion,
      generatedAt: data.generatedAt.present
          ? data.generatedAt.value
          : this.generatedAt,
      downloadedAt: data.downloadedAt.present
          ? data.downloadedAt.value
          : this.downloadedAt,
      totalNodes: data.totalNodes.present
          ? data.totalNodes.value
          : this.totalNodes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('slug: $slug, ')
          ..write('title: $title, ')
          ..write('sourceLanguage: $sourceLanguage, ')
          ..write('script: $script, ')
          ..write('pipelineVersion: $pipelineVersion, ')
          ..write('generatedAt: $generatedAt, ')
          ..write('downloadedAt: $downloadedAt, ')
          ..write('totalNodes: $totalNodes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    slug,
    title,
    sourceLanguage,
    script,
    pipelineVersion,
    generatedAt,
    downloadedAt,
    totalNodes,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          other.slug == this.slug &&
          other.title == this.title &&
          other.sourceLanguage == this.sourceLanguage &&
          other.script == this.script &&
          other.pipelineVersion == this.pipelineVersion &&
          other.generatedAt == this.generatedAt &&
          other.downloadedAt == this.downloadedAt &&
          other.totalNodes == this.totalNodes);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<String> slug;
  final Value<String> title;
  final Value<String> sourceLanguage;
  final Value<String> script;
  final Value<String> pipelineVersion;
  final Value<String> generatedAt;
  final Value<int> downloadedAt;
  final Value<int> totalNodes;
  final Value<int> rowid;
  const BooksCompanion({
    this.slug = const Value.absent(),
    this.title = const Value.absent(),
    this.sourceLanguage = const Value.absent(),
    this.script = const Value.absent(),
    this.pipelineVersion = const Value.absent(),
    this.generatedAt = const Value.absent(),
    this.downloadedAt = const Value.absent(),
    this.totalNodes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BooksCompanion.insert({
    required String slug,
    required String title,
    required String sourceLanguage,
    required String script,
    this.pipelineVersion = const Value.absent(),
    this.generatedAt = const Value.absent(),
    required int downloadedAt,
    this.totalNodes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : slug = Value(slug),
       title = Value(title),
       sourceLanguage = Value(sourceLanguage),
       script = Value(script),
       downloadedAt = Value(downloadedAt);
  static Insertable<Book> custom({
    Expression<String>? slug,
    Expression<String>? title,
    Expression<String>? sourceLanguage,
    Expression<String>? script,
    Expression<String>? pipelineVersion,
    Expression<String>? generatedAt,
    Expression<int>? downloadedAt,
    Expression<int>? totalNodes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (slug != null) 'slug': slug,
      if (title != null) 'title': title,
      if (sourceLanguage != null) 'source_language': sourceLanguage,
      if (script != null) 'script': script,
      if (pipelineVersion != null) 'pipeline_version': pipelineVersion,
      if (generatedAt != null) 'generated_at': generatedAt,
      if (downloadedAt != null) 'downloaded_at': downloadedAt,
      if (totalNodes != null) 'total_nodes': totalNodes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BooksCompanion copyWith({
    Value<String>? slug,
    Value<String>? title,
    Value<String>? sourceLanguage,
    Value<String>? script,
    Value<String>? pipelineVersion,
    Value<String>? generatedAt,
    Value<int>? downloadedAt,
    Value<int>? totalNodes,
    Value<int>? rowid,
  }) {
    return BooksCompanion(
      slug: slug ?? this.slug,
      title: title ?? this.title,
      sourceLanguage: sourceLanguage ?? this.sourceLanguage,
      script: script ?? this.script,
      pipelineVersion: pipelineVersion ?? this.pipelineVersion,
      generatedAt: generatedAt ?? this.generatedAt,
      downloadedAt: downloadedAt ?? this.downloadedAt,
      totalNodes: totalNodes ?? this.totalNodes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (sourceLanguage.present) {
      map['source_language'] = Variable<String>(sourceLanguage.value);
    }
    if (script.present) {
      map['script'] = Variable<String>(script.value);
    }
    if (pipelineVersion.present) {
      map['pipeline_version'] = Variable<String>(pipelineVersion.value);
    }
    if (generatedAt.present) {
      map['generated_at'] = Variable<String>(generatedAt.value);
    }
    if (downloadedAt.present) {
      map['downloaded_at'] = Variable<int>(downloadedAt.value);
    }
    if (totalNodes.present) {
      map['total_nodes'] = Variable<int>(totalNodes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksCompanion(')
          ..write('slug: $slug, ')
          ..write('title: $title, ')
          ..write('sourceLanguage: $sourceLanguage, ')
          ..write('script: $script, ')
          ..write('pipelineVersion: $pipelineVersion, ')
          ..write('generatedAt: $generatedAt, ')
          ..write('downloadedAt: $downloadedAt, ')
          ..write('totalNodes: $totalNodes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NodesTable extends Nodes with TableInfo<$NodesTable, Node> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NodesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bookSlugMeta = const VerificationMeta(
    'bookSlug',
  );
  @override
  late final GeneratedColumn<String> bookSlug = GeneratedColumn<String>(
    'book_slug',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES books (slug)',
    ),
  );
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
    'kind',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
    'label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _parentIdMeta = const VerificationMeta(
    'parentId',
  );
  @override
  late final GeneratedColumn<String> parentId = GeneratedColumn<String>(
    'parent_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _byteStartMeta = const VerificationMeta(
    'byteStart',
  );
  @override
  late final GeneratedColumn<int> byteStart = GeneratedColumn<int>(
    'byte_start',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _byteEndMeta = const VerificationMeta(
    'byteEnd',
  );
  @override
  late final GeneratedColumn<int> byteEnd = GeneratedColumn<int>(
    'byte_end',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _depthMeta = const VerificationMeta('depth');
  @override
  late final GeneratedColumn<int> depth = GeneratedColumn<int>(
    'depth',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    bookSlug,
    kind,
    label,
    parentId,
    byteStart,
    byteEnd,
    depth,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'nodes';
  @override
  VerificationContext validateIntegrity(
    Insertable<Node> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('book_slug')) {
      context.handle(
        _bookSlugMeta,
        bookSlug.isAcceptableOrUnknown(data['book_slug']!, _bookSlugMeta),
      );
    } else if (isInserting) {
      context.missing(_bookSlugMeta);
    }
    if (data.containsKey('kind')) {
      context.handle(
        _kindMeta,
        kind.isAcceptableOrUnknown(data['kind']!, _kindMeta),
      );
    } else if (isInserting) {
      context.missing(_kindMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
        _labelMeta,
        label.isAcceptableOrUnknown(data['label']!, _labelMeta),
      );
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('parent_id')) {
      context.handle(
        _parentIdMeta,
        parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta),
      );
    }
    if (data.containsKey('byte_start')) {
      context.handle(
        _byteStartMeta,
        byteStart.isAcceptableOrUnknown(data['byte_start']!, _byteStartMeta),
      );
    }
    if (data.containsKey('byte_end')) {
      context.handle(
        _byteEndMeta,
        byteEnd.isAcceptableOrUnknown(data['byte_end']!, _byteEndMeta),
      );
    }
    if (data.containsKey('depth')) {
      context.handle(
        _depthMeta,
        depth.isAcceptableOrUnknown(data['depth']!, _depthMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Node map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Node(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      bookSlug: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}book_slug'],
      )!,
      kind: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}kind'],
      )!,
      label: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label'],
      )!,
      parentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parent_id'],
      ),
      byteStart: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}byte_start'],
      )!,
      byteEnd: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}byte_end'],
      )!,
      depth: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}depth'],
      )!,
    );
  }

  @override
  $NodesTable createAlias(String alias) {
    return $NodesTable(attachedDatabase, alias);
  }
}

class Node extends DataClass implements Insertable<Node> {
  final String id;
  final String bookSlug;
  final String kind;
  final String label;
  final String? parentId;
  final int byteStart;
  final int byteEnd;
  final int depth;
  const Node({
    required this.id,
    required this.bookSlug,
    required this.kind,
    required this.label,
    this.parentId,
    required this.byteStart,
    required this.byteEnd,
    required this.depth,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['book_slug'] = Variable<String>(bookSlug);
    map['kind'] = Variable<String>(kind);
    map['label'] = Variable<String>(label);
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<String>(parentId);
    }
    map['byte_start'] = Variable<int>(byteStart);
    map['byte_end'] = Variable<int>(byteEnd);
    map['depth'] = Variable<int>(depth);
    return map;
  }

  NodesCompanion toCompanion(bool nullToAbsent) {
    return NodesCompanion(
      id: Value(id),
      bookSlug: Value(bookSlug),
      kind: Value(kind),
      label: Value(label),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
      byteStart: Value(byteStart),
      byteEnd: Value(byteEnd),
      depth: Value(depth),
    );
  }

  factory Node.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Node(
      id: serializer.fromJson<String>(json['id']),
      bookSlug: serializer.fromJson<String>(json['bookSlug']),
      kind: serializer.fromJson<String>(json['kind']),
      label: serializer.fromJson<String>(json['label']),
      parentId: serializer.fromJson<String?>(json['parentId']),
      byteStart: serializer.fromJson<int>(json['byteStart']),
      byteEnd: serializer.fromJson<int>(json['byteEnd']),
      depth: serializer.fromJson<int>(json['depth']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'bookSlug': serializer.toJson<String>(bookSlug),
      'kind': serializer.toJson<String>(kind),
      'label': serializer.toJson<String>(label),
      'parentId': serializer.toJson<String?>(parentId),
      'byteStart': serializer.toJson<int>(byteStart),
      'byteEnd': serializer.toJson<int>(byteEnd),
      'depth': serializer.toJson<int>(depth),
    };
  }

  Node copyWith({
    String? id,
    String? bookSlug,
    String? kind,
    String? label,
    Value<String?> parentId = const Value.absent(),
    int? byteStart,
    int? byteEnd,
    int? depth,
  }) => Node(
    id: id ?? this.id,
    bookSlug: bookSlug ?? this.bookSlug,
    kind: kind ?? this.kind,
    label: label ?? this.label,
    parentId: parentId.present ? parentId.value : this.parentId,
    byteStart: byteStart ?? this.byteStart,
    byteEnd: byteEnd ?? this.byteEnd,
    depth: depth ?? this.depth,
  );
  Node copyWithCompanion(NodesCompanion data) {
    return Node(
      id: data.id.present ? data.id.value : this.id,
      bookSlug: data.bookSlug.present ? data.bookSlug.value : this.bookSlug,
      kind: data.kind.present ? data.kind.value : this.kind,
      label: data.label.present ? data.label.value : this.label,
      parentId: data.parentId.present ? data.parentId.value : this.parentId,
      byteStart: data.byteStart.present ? data.byteStart.value : this.byteStart,
      byteEnd: data.byteEnd.present ? data.byteEnd.value : this.byteEnd,
      depth: data.depth.present ? data.depth.value : this.depth,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Node(')
          ..write('id: $id, ')
          ..write('bookSlug: $bookSlug, ')
          ..write('kind: $kind, ')
          ..write('label: $label, ')
          ..write('parentId: $parentId, ')
          ..write('byteStart: $byteStart, ')
          ..write('byteEnd: $byteEnd, ')
          ..write('depth: $depth')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    bookSlug,
    kind,
    label,
    parentId,
    byteStart,
    byteEnd,
    depth,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Node &&
          other.id == this.id &&
          other.bookSlug == this.bookSlug &&
          other.kind == this.kind &&
          other.label == this.label &&
          other.parentId == this.parentId &&
          other.byteStart == this.byteStart &&
          other.byteEnd == this.byteEnd &&
          other.depth == this.depth);
}

class NodesCompanion extends UpdateCompanion<Node> {
  final Value<String> id;
  final Value<String> bookSlug;
  final Value<String> kind;
  final Value<String> label;
  final Value<String?> parentId;
  final Value<int> byteStart;
  final Value<int> byteEnd;
  final Value<int> depth;
  final Value<int> rowid;
  const NodesCompanion({
    this.id = const Value.absent(),
    this.bookSlug = const Value.absent(),
    this.kind = const Value.absent(),
    this.label = const Value.absent(),
    this.parentId = const Value.absent(),
    this.byteStart = const Value.absent(),
    this.byteEnd = const Value.absent(),
    this.depth = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NodesCompanion.insert({
    required String id,
    required String bookSlug,
    required String kind,
    required String label,
    this.parentId = const Value.absent(),
    this.byteStart = const Value.absent(),
    this.byteEnd = const Value.absent(),
    this.depth = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       bookSlug = Value(bookSlug),
       kind = Value(kind),
       label = Value(label);
  static Insertable<Node> custom({
    Expression<String>? id,
    Expression<String>? bookSlug,
    Expression<String>? kind,
    Expression<String>? label,
    Expression<String>? parentId,
    Expression<int>? byteStart,
    Expression<int>? byteEnd,
    Expression<int>? depth,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bookSlug != null) 'book_slug': bookSlug,
      if (kind != null) 'kind': kind,
      if (label != null) 'label': label,
      if (parentId != null) 'parent_id': parentId,
      if (byteStart != null) 'byte_start': byteStart,
      if (byteEnd != null) 'byte_end': byteEnd,
      if (depth != null) 'depth': depth,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NodesCompanion copyWith({
    Value<String>? id,
    Value<String>? bookSlug,
    Value<String>? kind,
    Value<String>? label,
    Value<String?>? parentId,
    Value<int>? byteStart,
    Value<int>? byteEnd,
    Value<int>? depth,
    Value<int>? rowid,
  }) {
    return NodesCompanion(
      id: id ?? this.id,
      bookSlug: bookSlug ?? this.bookSlug,
      kind: kind ?? this.kind,
      label: label ?? this.label,
      parentId: parentId ?? this.parentId,
      byteStart: byteStart ?? this.byteStart,
      byteEnd: byteEnd ?? this.byteEnd,
      depth: depth ?? this.depth,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (bookSlug.present) {
      map['book_slug'] = Variable<String>(bookSlug.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (byteStart.present) {
      map['byte_start'] = Variable<int>(byteStart.value);
    }
    if (byteEnd.present) {
      map['byte_end'] = Variable<int>(byteEnd.value);
    }
    if (depth.present) {
      map['depth'] = Variable<int>(depth.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NodesCompanion(')
          ..write('id: $id, ')
          ..write('bookSlug: $bookSlug, ')
          ..write('kind: $kind, ')
          ..write('label: $label, ')
          ..write('parentId: $parentId, ')
          ..write('byteStart: $byteStart, ')
          ..write('byteEnd: $byteEnd, ')
          ..write('depth: $depth, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TermsTable extends Terms with TableInfo<$TermsTable, Term> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TermsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _rowIdMeta = const VerificationMeta('rowId');
  @override
  late final GeneratedColumn<int> rowId = GeneratedColumn<int>(
    'row_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nodeIdMeta = const VerificationMeta('nodeId');
  @override
  late final GeneratedColumn<String> nodeId = GeneratedColumn<String>(
    'node_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES nodes (id)',
    ),
  );
  static const VerificationMeta _bookSlugMeta = const VerificationMeta(
    'bookSlug',
  );
  @override
  late final GeneratedColumn<String> bookSlug = GeneratedColumn<String>(
    'book_slug',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _termMeta = const VerificationMeta('term');
  @override
  late final GeneratedColumn<String> term = GeneratedColumn<String>(
    'term',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<double> score = GeneratedColumn<double>(
    'score',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _countMeta = const VerificationMeta('count');
  @override
  late final GeneratedColumn<int> count = GeneratedColumn<int>(
    'count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
    'kind',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    rowId,
    nodeId,
    bookSlug,
    term,
    score,
    count,
    kind,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'terms';
  @override
  VerificationContext validateIntegrity(
    Insertable<Term> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('row_id')) {
      context.handle(
        _rowIdMeta,
        rowId.isAcceptableOrUnknown(data['row_id']!, _rowIdMeta),
      );
    }
    if (data.containsKey('node_id')) {
      context.handle(
        _nodeIdMeta,
        nodeId.isAcceptableOrUnknown(data['node_id']!, _nodeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_nodeIdMeta);
    }
    if (data.containsKey('book_slug')) {
      context.handle(
        _bookSlugMeta,
        bookSlug.isAcceptableOrUnknown(data['book_slug']!, _bookSlugMeta),
      );
    } else if (isInserting) {
      context.missing(_bookSlugMeta);
    }
    if (data.containsKey('term')) {
      context.handle(
        _termMeta,
        term.isAcceptableOrUnknown(data['term']!, _termMeta),
      );
    } else if (isInserting) {
      context.missing(_termMeta);
    }
    if (data.containsKey('score')) {
      context.handle(
        _scoreMeta,
        score.isAcceptableOrUnknown(data['score']!, _scoreMeta),
      );
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    if (data.containsKey('count')) {
      context.handle(
        _countMeta,
        count.isAcceptableOrUnknown(data['count']!, _countMeta),
      );
    } else if (isInserting) {
      context.missing(_countMeta);
    }
    if (data.containsKey('kind')) {
      context.handle(
        _kindMeta,
        kind.isAcceptableOrUnknown(data['kind']!, _kindMeta),
      );
    } else if (isInserting) {
      context.missing(_kindMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {rowId};
  @override
  Term map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Term(
      rowId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}row_id'],
      )!,
      nodeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}node_id'],
      )!,
      bookSlug: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}book_slug'],
      )!,
      term: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}term'],
      )!,
      score: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}score'],
      )!,
      count: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}count'],
      )!,
      kind: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}kind'],
      )!,
    );
  }

  @override
  $TermsTable createAlias(String alias) {
    return $TermsTable(attachedDatabase, alias);
  }
}

class Term extends DataClass implements Insertable<Term> {
  final int rowId;
  final String nodeId;
  final String bookSlug;
  final String term;
  final double score;
  final int count;
  final String kind;
  const Term({
    required this.rowId,
    required this.nodeId,
    required this.bookSlug,
    required this.term,
    required this.score,
    required this.count,
    required this.kind,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['row_id'] = Variable<int>(rowId);
    map['node_id'] = Variable<String>(nodeId);
    map['book_slug'] = Variable<String>(bookSlug);
    map['term'] = Variable<String>(term);
    map['score'] = Variable<double>(score);
    map['count'] = Variable<int>(count);
    map['kind'] = Variable<String>(kind);
    return map;
  }

  TermsCompanion toCompanion(bool nullToAbsent) {
    return TermsCompanion(
      rowId: Value(rowId),
      nodeId: Value(nodeId),
      bookSlug: Value(bookSlug),
      term: Value(term),
      score: Value(score),
      count: Value(count),
      kind: Value(kind),
    );
  }

  factory Term.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Term(
      rowId: serializer.fromJson<int>(json['rowId']),
      nodeId: serializer.fromJson<String>(json['nodeId']),
      bookSlug: serializer.fromJson<String>(json['bookSlug']),
      term: serializer.fromJson<String>(json['term']),
      score: serializer.fromJson<double>(json['score']),
      count: serializer.fromJson<int>(json['count']),
      kind: serializer.fromJson<String>(json['kind']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'rowId': serializer.toJson<int>(rowId),
      'nodeId': serializer.toJson<String>(nodeId),
      'bookSlug': serializer.toJson<String>(bookSlug),
      'term': serializer.toJson<String>(term),
      'score': serializer.toJson<double>(score),
      'count': serializer.toJson<int>(count),
      'kind': serializer.toJson<String>(kind),
    };
  }

  Term copyWith({
    int? rowId,
    String? nodeId,
    String? bookSlug,
    String? term,
    double? score,
    int? count,
    String? kind,
  }) => Term(
    rowId: rowId ?? this.rowId,
    nodeId: nodeId ?? this.nodeId,
    bookSlug: bookSlug ?? this.bookSlug,
    term: term ?? this.term,
    score: score ?? this.score,
    count: count ?? this.count,
    kind: kind ?? this.kind,
  );
  Term copyWithCompanion(TermsCompanion data) {
    return Term(
      rowId: data.rowId.present ? data.rowId.value : this.rowId,
      nodeId: data.nodeId.present ? data.nodeId.value : this.nodeId,
      bookSlug: data.bookSlug.present ? data.bookSlug.value : this.bookSlug,
      term: data.term.present ? data.term.value : this.term,
      score: data.score.present ? data.score.value : this.score,
      count: data.count.present ? data.count.value : this.count,
      kind: data.kind.present ? data.kind.value : this.kind,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Term(')
          ..write('rowId: $rowId, ')
          ..write('nodeId: $nodeId, ')
          ..write('bookSlug: $bookSlug, ')
          ..write('term: $term, ')
          ..write('score: $score, ')
          ..write('count: $count, ')
          ..write('kind: $kind')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(rowId, nodeId, bookSlug, term, score, count, kind);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Term &&
          other.rowId == this.rowId &&
          other.nodeId == this.nodeId &&
          other.bookSlug == this.bookSlug &&
          other.term == this.term &&
          other.score == this.score &&
          other.count == this.count &&
          other.kind == this.kind);
}

class TermsCompanion extends UpdateCompanion<Term> {
  final Value<int> rowId;
  final Value<String> nodeId;
  final Value<String> bookSlug;
  final Value<String> term;
  final Value<double> score;
  final Value<int> count;
  final Value<String> kind;
  const TermsCompanion({
    this.rowId = const Value.absent(),
    this.nodeId = const Value.absent(),
    this.bookSlug = const Value.absent(),
    this.term = const Value.absent(),
    this.score = const Value.absent(),
    this.count = const Value.absent(),
    this.kind = const Value.absent(),
  });
  TermsCompanion.insert({
    this.rowId = const Value.absent(),
    required String nodeId,
    required String bookSlug,
    required String term,
    required double score,
    required int count,
    required String kind,
  }) : nodeId = Value(nodeId),
       bookSlug = Value(bookSlug),
       term = Value(term),
       score = Value(score),
       count = Value(count),
       kind = Value(kind);
  static Insertable<Term> custom({
    Expression<int>? rowId,
    Expression<String>? nodeId,
    Expression<String>? bookSlug,
    Expression<String>? term,
    Expression<double>? score,
    Expression<int>? count,
    Expression<String>? kind,
  }) {
    return RawValuesInsertable({
      if (rowId != null) 'row_id': rowId,
      if (nodeId != null) 'node_id': nodeId,
      if (bookSlug != null) 'book_slug': bookSlug,
      if (term != null) 'term': term,
      if (score != null) 'score': score,
      if (count != null) 'count': count,
      if (kind != null) 'kind': kind,
    });
  }

  TermsCompanion copyWith({
    Value<int>? rowId,
    Value<String>? nodeId,
    Value<String>? bookSlug,
    Value<String>? term,
    Value<double>? score,
    Value<int>? count,
    Value<String>? kind,
  }) {
    return TermsCompanion(
      rowId: rowId ?? this.rowId,
      nodeId: nodeId ?? this.nodeId,
      bookSlug: bookSlug ?? this.bookSlug,
      term: term ?? this.term,
      score: score ?? this.score,
      count: count ?? this.count,
      kind: kind ?? this.kind,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (rowId.present) {
      map['row_id'] = Variable<int>(rowId.value);
    }
    if (nodeId.present) {
      map['node_id'] = Variable<String>(nodeId.value);
    }
    if (bookSlug.present) {
      map['book_slug'] = Variable<String>(bookSlug.value);
    }
    if (term.present) {
      map['term'] = Variable<String>(term.value);
    }
    if (score.present) {
      map['score'] = Variable<double>(score.value);
    }
    if (count.present) {
      map['count'] = Variable<int>(count.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TermsCompanion(')
          ..write('rowId: $rowId, ')
          ..write('nodeId: $nodeId, ')
          ..write('bookSlug: $bookSlug, ')
          ..write('term: $term, ')
          ..write('score: $score, ')
          ..write('count: $count, ')
          ..write('kind: $kind')
          ..write(')'))
        .toString();
  }
}

class $SummariesTable extends Summaries
    with TableInfo<$SummariesTable, Summary> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SummariesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nodeIdMeta = const VerificationMeta('nodeId');
  @override
  late final GeneratedColumn<String> nodeId = GeneratedColumn<String>(
    'node_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES nodes (id)',
    ),
  );
  static const VerificationMeta _localeMeta = const VerificationMeta('locale');
  @override
  late final GeneratedColumn<String> locale = GeneratedColumn<String>(
    'locale',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _contentMeta = const VerificationMeta(
    'content',
  );
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
    'content',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [nodeId, locale, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'summaries';
  @override
  VerificationContext validateIntegrity(
    Insertable<Summary> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('node_id')) {
      context.handle(
        _nodeIdMeta,
        nodeId.isAcceptableOrUnknown(data['node_id']!, _nodeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_nodeIdMeta);
    }
    if (data.containsKey('locale')) {
      context.handle(
        _localeMeta,
        locale.isAcceptableOrUnknown(data['locale']!, _localeMeta),
      );
    } else if (isInserting) {
      context.missing(_localeMeta);
    }
    if (data.containsKey('content')) {
      context.handle(
        _contentMeta,
        content.isAcceptableOrUnknown(data['content']!, _contentMeta),
      );
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {nodeId, locale};
  @override
  Summary map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Summary(
      nodeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}node_id'],
      )!,
      locale: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}locale'],
      )!,
      content: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}content'],
      )!,
    );
  }

  @override
  $SummariesTable createAlias(String alias) {
    return $SummariesTable(attachedDatabase, alias);
  }
}

class Summary extends DataClass implements Insertable<Summary> {
  final String nodeId;
  final String locale;
  final String content;
  const Summary({
    required this.nodeId,
    required this.locale,
    required this.content,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['node_id'] = Variable<String>(nodeId);
    map['locale'] = Variable<String>(locale);
    map['content'] = Variable<String>(content);
    return map;
  }

  SummariesCompanion toCompanion(bool nullToAbsent) {
    return SummariesCompanion(
      nodeId: Value(nodeId),
      locale: Value(locale),
      content: Value(content),
    );
  }

  factory Summary.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Summary(
      nodeId: serializer.fromJson<String>(json['nodeId']),
      locale: serializer.fromJson<String>(json['locale']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'nodeId': serializer.toJson<String>(nodeId),
      'locale': serializer.toJson<String>(locale),
      'content': serializer.toJson<String>(content),
    };
  }

  Summary copyWith({String? nodeId, String? locale, String? content}) =>
      Summary(
        nodeId: nodeId ?? this.nodeId,
        locale: locale ?? this.locale,
        content: content ?? this.content,
      );
  Summary copyWithCompanion(SummariesCompanion data) {
    return Summary(
      nodeId: data.nodeId.present ? data.nodeId.value : this.nodeId,
      locale: data.locale.present ? data.locale.value : this.locale,
      content: data.content.present ? data.content.value : this.content,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Summary(')
          ..write('nodeId: $nodeId, ')
          ..write('locale: $locale, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(nodeId, locale, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Summary &&
          other.nodeId == this.nodeId &&
          other.locale == this.locale &&
          other.content == this.content);
}

class SummariesCompanion extends UpdateCompanion<Summary> {
  final Value<String> nodeId;
  final Value<String> locale;
  final Value<String> content;
  final Value<int> rowid;
  const SummariesCompanion({
    this.nodeId = const Value.absent(),
    this.locale = const Value.absent(),
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SummariesCompanion.insert({
    required String nodeId,
    required String locale,
    required String content,
    this.rowid = const Value.absent(),
  }) : nodeId = Value(nodeId),
       locale = Value(locale),
       content = Value(content);
  static Insertable<Summary> custom({
    Expression<String>? nodeId,
    Expression<String>? locale,
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (nodeId != null) 'node_id': nodeId,
      if (locale != null) 'locale': locale,
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SummariesCompanion copyWith({
    Value<String>? nodeId,
    Value<String>? locale,
    Value<String>? content,
    Value<int>? rowid,
  }) {
    return SummariesCompanion(
      nodeId: nodeId ?? this.nodeId,
      locale: locale ?? this.locale,
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (nodeId.present) {
      map['node_id'] = Variable<String>(nodeId.value);
    }
    if (locale.present) {
      map['locale'] = Variable<String>(locale.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SummariesCompanion(')
          ..write('nodeId: $nodeId, ')
          ..write('locale: $locale, ')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BooksTable books = $BooksTable(this);
  late final $NodesTable nodes = $NodesTable(this);
  late final $TermsTable terms = $TermsTable(this);
  late final $SummariesTable summaries = $SummariesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    books,
    nodes,
    terms,
    summaries,
  ];
}

typedef $$BooksTableCreateCompanionBuilder =
    BooksCompanion Function({
      required String slug,
      required String title,
      required String sourceLanguage,
      required String script,
      Value<String> pipelineVersion,
      Value<String> generatedAt,
      required int downloadedAt,
      Value<int> totalNodes,
      Value<int> rowid,
    });
typedef $$BooksTableUpdateCompanionBuilder =
    BooksCompanion Function({
      Value<String> slug,
      Value<String> title,
      Value<String> sourceLanguage,
      Value<String> script,
      Value<String> pipelineVersion,
      Value<String> generatedAt,
      Value<int> downloadedAt,
      Value<int> totalNodes,
      Value<int> rowid,
    });

final class $$BooksTableReferences
    extends BaseReferences<_$AppDatabase, $BooksTable, Book> {
  $$BooksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$NodesTable, List<Node>> _nodesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.nodes,
    aliasName: $_aliasNameGenerator(db.books.slug, db.nodes.bookSlug),
  );

  $$NodesTableProcessedTableManager get nodesRefs {
    final manager = $$NodesTableTableManager(
      $_db,
      $_db.nodes,
    ).filter((f) => f.bookSlug.slug.sqlEquals($_itemColumn<String>('slug')!));

    final cache = $_typedResult.readTableOrNull(_nodesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$BooksTableFilterComposer extends Composer<_$AppDatabase, $BooksTable> {
  $$BooksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceLanguage => $composableBuilder(
    column: $table.sourceLanguage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get script => $composableBuilder(
    column: $table.script,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pipelineVersion => $composableBuilder(
    column: $table.pipelineVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get generatedAt => $composableBuilder(
    column: $table.generatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get downloadedAt => $composableBuilder(
    column: $table.downloadedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalNodes => $composableBuilder(
    column: $table.totalNodes,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> nodesRefs(
    Expression<bool> Function($$NodesTableFilterComposer f) f,
  ) {
    final $$NodesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.slug,
      referencedTable: $db.nodes,
      getReferencedColumn: (t) => t.bookSlug,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NodesTableFilterComposer(
            $db: $db,
            $table: $db.nodes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$BooksTableOrderingComposer
    extends Composer<_$AppDatabase, $BooksTable> {
  $$BooksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get slug => $composableBuilder(
    column: $table.slug,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceLanguage => $composableBuilder(
    column: $table.sourceLanguage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get script => $composableBuilder(
    column: $table.script,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pipelineVersion => $composableBuilder(
    column: $table.pipelineVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get generatedAt => $composableBuilder(
    column: $table.generatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get downloadedAt => $composableBuilder(
    column: $table.downloadedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalNodes => $composableBuilder(
    column: $table.totalNodes,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BooksTableAnnotationComposer
    extends Composer<_$AppDatabase, $BooksTable> {
  $$BooksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get slug =>
      $composableBuilder(column: $table.slug, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get sourceLanguage => $composableBuilder(
    column: $table.sourceLanguage,
    builder: (column) => column,
  );

  GeneratedColumn<String> get script =>
      $composableBuilder(column: $table.script, builder: (column) => column);

  GeneratedColumn<String> get pipelineVersion => $composableBuilder(
    column: $table.pipelineVersion,
    builder: (column) => column,
  );

  GeneratedColumn<String> get generatedAt => $composableBuilder(
    column: $table.generatedAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get downloadedAt => $composableBuilder(
    column: $table.downloadedAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalNodes => $composableBuilder(
    column: $table.totalNodes,
    builder: (column) => column,
  );

  Expression<T> nodesRefs<T extends Object>(
    Expression<T> Function($$NodesTableAnnotationComposer a) f,
  ) {
    final $$NodesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.slug,
      referencedTable: $db.nodes,
      getReferencedColumn: (t) => t.bookSlug,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NodesTableAnnotationComposer(
            $db: $db,
            $table: $db.nodes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$BooksTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BooksTable,
          Book,
          $$BooksTableFilterComposer,
          $$BooksTableOrderingComposer,
          $$BooksTableAnnotationComposer,
          $$BooksTableCreateCompanionBuilder,
          $$BooksTableUpdateCompanionBuilder,
          (Book, $$BooksTableReferences),
          Book,
          PrefetchHooks Function({bool nodesRefs})
        > {
  $$BooksTableTableManager(_$AppDatabase db, $BooksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BooksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BooksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BooksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> slug = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> sourceLanguage = const Value.absent(),
                Value<String> script = const Value.absent(),
                Value<String> pipelineVersion = const Value.absent(),
                Value<String> generatedAt = const Value.absent(),
                Value<int> downloadedAt = const Value.absent(),
                Value<int> totalNodes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BooksCompanion(
                slug: slug,
                title: title,
                sourceLanguage: sourceLanguage,
                script: script,
                pipelineVersion: pipelineVersion,
                generatedAt: generatedAt,
                downloadedAt: downloadedAt,
                totalNodes: totalNodes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String slug,
                required String title,
                required String sourceLanguage,
                required String script,
                Value<String> pipelineVersion = const Value.absent(),
                Value<String> generatedAt = const Value.absent(),
                required int downloadedAt,
                Value<int> totalNodes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BooksCompanion.insert(
                slug: slug,
                title: title,
                sourceLanguage: sourceLanguage,
                script: script,
                pipelineVersion: pipelineVersion,
                generatedAt: generatedAt,
                downloadedAt: downloadedAt,
                totalNodes: totalNodes,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$BooksTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({nodesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (nodesRefs) db.nodes],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (nodesRefs)
                    await $_getPrefetchedData<Book, $BooksTable, Node>(
                      currentTable: table,
                      referencedTable: $$BooksTableReferences._nodesRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $$BooksTableReferences(db, table, p0).nodesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.bookSlug == item.slug),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$BooksTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BooksTable,
      Book,
      $$BooksTableFilterComposer,
      $$BooksTableOrderingComposer,
      $$BooksTableAnnotationComposer,
      $$BooksTableCreateCompanionBuilder,
      $$BooksTableUpdateCompanionBuilder,
      (Book, $$BooksTableReferences),
      Book,
      PrefetchHooks Function({bool nodesRefs})
    >;
typedef $$NodesTableCreateCompanionBuilder =
    NodesCompanion Function({
      required String id,
      required String bookSlug,
      required String kind,
      required String label,
      Value<String?> parentId,
      Value<int> byteStart,
      Value<int> byteEnd,
      Value<int> depth,
      Value<int> rowid,
    });
typedef $$NodesTableUpdateCompanionBuilder =
    NodesCompanion Function({
      Value<String> id,
      Value<String> bookSlug,
      Value<String> kind,
      Value<String> label,
      Value<String?> parentId,
      Value<int> byteStart,
      Value<int> byteEnd,
      Value<int> depth,
      Value<int> rowid,
    });

final class $$NodesTableReferences
    extends BaseReferences<_$AppDatabase, $NodesTable, Node> {
  $$NodesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $BooksTable _bookSlugTable(_$AppDatabase db) => db.books.createAlias(
    $_aliasNameGenerator(db.nodes.bookSlug, db.books.slug),
  );

  $$BooksTableProcessedTableManager get bookSlug {
    final $_column = $_itemColumn<String>('book_slug')!;

    final manager = $$BooksTableTableManager(
      $_db,
      $_db.books,
    ).filter((f) => f.slug.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_bookSlugTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$TermsTable, List<Term>> _termsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.terms,
    aliasName: $_aliasNameGenerator(db.nodes.id, db.terms.nodeId),
  );

  $$TermsTableProcessedTableManager get termsRefs {
    final manager = $$TermsTableTableManager(
      $_db,
      $_db.terms,
    ).filter((f) => f.nodeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_termsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SummariesTable, List<Summary>>
  _summariesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.summaries,
    aliasName: $_aliasNameGenerator(db.nodes.id, db.summaries.nodeId),
  );

  $$SummariesTableProcessedTableManager get summariesRefs {
    final manager = $$SummariesTableTableManager(
      $_db,
      $_db.summaries,
    ).filter((f) => f.nodeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_summariesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$NodesTableFilterComposer extends Composer<_$AppDatabase, $NodesTable> {
  $$NodesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get parentId => $composableBuilder(
    column: $table.parentId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get byteStart => $composableBuilder(
    column: $table.byteStart,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get byteEnd => $composableBuilder(
    column: $table.byteEnd,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get depth => $composableBuilder(
    column: $table.depth,
    builder: (column) => ColumnFilters(column),
  );

  $$BooksTableFilterComposer get bookSlug {
    final $$BooksTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.bookSlug,
      referencedTable: $db.books,
      getReferencedColumn: (t) => t.slug,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BooksTableFilterComposer(
            $db: $db,
            $table: $db.books,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> termsRefs(
    Expression<bool> Function($$TermsTableFilterComposer f) f,
  ) {
    final $$TermsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.terms,
      getReferencedColumn: (t) => t.nodeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TermsTableFilterComposer(
            $db: $db,
            $table: $db.terms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> summariesRefs(
    Expression<bool> Function($$SummariesTableFilterComposer f) f,
  ) {
    final $$SummariesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.summaries,
      getReferencedColumn: (t) => t.nodeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SummariesTableFilterComposer(
            $db: $db,
            $table: $db.summaries,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$NodesTableOrderingComposer
    extends Composer<_$AppDatabase, $NodesTable> {
  $$NodesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get parentId => $composableBuilder(
    column: $table.parentId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get byteStart => $composableBuilder(
    column: $table.byteStart,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get byteEnd => $composableBuilder(
    column: $table.byteEnd,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get depth => $composableBuilder(
    column: $table.depth,
    builder: (column) => ColumnOrderings(column),
  );

  $$BooksTableOrderingComposer get bookSlug {
    final $$BooksTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.bookSlug,
      referencedTable: $db.books,
      getReferencedColumn: (t) => t.slug,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BooksTableOrderingComposer(
            $db: $db,
            $table: $db.books,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NodesTableAnnotationComposer
    extends Composer<_$AppDatabase, $NodesTable> {
  $$NodesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<String> get parentId =>
      $composableBuilder(column: $table.parentId, builder: (column) => column);

  GeneratedColumn<int> get byteStart =>
      $composableBuilder(column: $table.byteStart, builder: (column) => column);

  GeneratedColumn<int> get byteEnd =>
      $composableBuilder(column: $table.byteEnd, builder: (column) => column);

  GeneratedColumn<int> get depth =>
      $composableBuilder(column: $table.depth, builder: (column) => column);

  $$BooksTableAnnotationComposer get bookSlug {
    final $$BooksTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.bookSlug,
      referencedTable: $db.books,
      getReferencedColumn: (t) => t.slug,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BooksTableAnnotationComposer(
            $db: $db,
            $table: $db.books,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> termsRefs<T extends Object>(
    Expression<T> Function($$TermsTableAnnotationComposer a) f,
  ) {
    final $$TermsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.terms,
      getReferencedColumn: (t) => t.nodeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TermsTableAnnotationComposer(
            $db: $db,
            $table: $db.terms,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> summariesRefs<T extends Object>(
    Expression<T> Function($$SummariesTableAnnotationComposer a) f,
  ) {
    final $$SummariesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.summaries,
      getReferencedColumn: (t) => t.nodeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SummariesTableAnnotationComposer(
            $db: $db,
            $table: $db.summaries,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$NodesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NodesTable,
          Node,
          $$NodesTableFilterComposer,
          $$NodesTableOrderingComposer,
          $$NodesTableAnnotationComposer,
          $$NodesTableCreateCompanionBuilder,
          $$NodesTableUpdateCompanionBuilder,
          (Node, $$NodesTableReferences),
          Node,
          PrefetchHooks Function({
            bool bookSlug,
            bool termsRefs,
            bool summariesRefs,
          })
        > {
  $$NodesTableTableManager(_$AppDatabase db, $NodesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NodesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NodesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NodesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> bookSlug = const Value.absent(),
                Value<String> kind = const Value.absent(),
                Value<String> label = const Value.absent(),
                Value<String?> parentId = const Value.absent(),
                Value<int> byteStart = const Value.absent(),
                Value<int> byteEnd = const Value.absent(),
                Value<int> depth = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NodesCompanion(
                id: id,
                bookSlug: bookSlug,
                kind: kind,
                label: label,
                parentId: parentId,
                byteStart: byteStart,
                byteEnd: byteEnd,
                depth: depth,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String bookSlug,
                required String kind,
                required String label,
                Value<String?> parentId = const Value.absent(),
                Value<int> byteStart = const Value.absent(),
                Value<int> byteEnd = const Value.absent(),
                Value<int> depth = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NodesCompanion.insert(
                id: id,
                bookSlug: bookSlug,
                kind: kind,
                label: label,
                parentId: parentId,
                byteStart: byteStart,
                byteEnd: byteEnd,
                depth: depth,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$NodesTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({bookSlug = false, termsRefs = false, summariesRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (termsRefs) db.terms,
                    if (summariesRefs) db.summaries,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (bookSlug) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.bookSlug,
                                    referencedTable: $$NodesTableReferences
                                        ._bookSlugTable(db),
                                    referencedColumn: $$NodesTableReferences
                                        ._bookSlugTable(db)
                                        .slug,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (termsRefs)
                        await $_getPrefetchedData<Node, $NodesTable, Term>(
                          currentTable: table,
                          referencedTable: $$NodesTableReferences
                              ._termsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$NodesTableReferences(db, table, p0).termsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.nodeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (summariesRefs)
                        await $_getPrefetchedData<Node, $NodesTable, Summary>(
                          currentTable: table,
                          referencedTable: $$NodesTableReferences
                              ._summariesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$NodesTableReferences(
                                db,
                                table,
                                p0,
                              ).summariesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.nodeId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$NodesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NodesTable,
      Node,
      $$NodesTableFilterComposer,
      $$NodesTableOrderingComposer,
      $$NodesTableAnnotationComposer,
      $$NodesTableCreateCompanionBuilder,
      $$NodesTableUpdateCompanionBuilder,
      (Node, $$NodesTableReferences),
      Node,
      PrefetchHooks Function({
        bool bookSlug,
        bool termsRefs,
        bool summariesRefs,
      })
    >;
typedef $$TermsTableCreateCompanionBuilder =
    TermsCompanion Function({
      Value<int> rowId,
      required String nodeId,
      required String bookSlug,
      required String term,
      required double score,
      required int count,
      required String kind,
    });
typedef $$TermsTableUpdateCompanionBuilder =
    TermsCompanion Function({
      Value<int> rowId,
      Value<String> nodeId,
      Value<String> bookSlug,
      Value<String> term,
      Value<double> score,
      Value<int> count,
      Value<String> kind,
    });

final class $$TermsTableReferences
    extends BaseReferences<_$AppDatabase, $TermsTable, Term> {
  $$TermsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $NodesTable _nodeIdTable(_$AppDatabase db) =>
      db.nodes.createAlias($_aliasNameGenerator(db.terms.nodeId, db.nodes.id));

  $$NodesTableProcessedTableManager get nodeId {
    final $_column = $_itemColumn<String>('node_id')!;

    final manager = $$NodesTableTableManager(
      $_db,
      $_db.nodes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_nodeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TermsTableFilterComposer extends Composer<_$AppDatabase, $TermsTable> {
  $$TermsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get rowId => $composableBuilder(
    column: $table.rowId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bookSlug => $composableBuilder(
    column: $table.bookSlug,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get term => $composableBuilder(
    column: $table.term,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get count => $composableBuilder(
    column: $table.count,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnFilters(column),
  );

  $$NodesTableFilterComposer get nodeId {
    final $$NodesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.nodeId,
      referencedTable: $db.nodes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NodesTableFilterComposer(
            $db: $db,
            $table: $db.nodes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TermsTableOrderingComposer
    extends Composer<_$AppDatabase, $TermsTable> {
  $$TermsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get rowId => $composableBuilder(
    column: $table.rowId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bookSlug => $composableBuilder(
    column: $table.bookSlug,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get term => $composableBuilder(
    column: $table.term,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get count => $composableBuilder(
    column: $table.count,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get kind => $composableBuilder(
    column: $table.kind,
    builder: (column) => ColumnOrderings(column),
  );

  $$NodesTableOrderingComposer get nodeId {
    final $$NodesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.nodeId,
      referencedTable: $db.nodes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NodesTableOrderingComposer(
            $db: $db,
            $table: $db.nodes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TermsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TermsTable> {
  $$TermsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get rowId =>
      $composableBuilder(column: $table.rowId, builder: (column) => column);

  GeneratedColumn<String> get bookSlug =>
      $composableBuilder(column: $table.bookSlug, builder: (column) => column);

  GeneratedColumn<String> get term =>
      $composableBuilder(column: $table.term, builder: (column) => column);

  GeneratedColumn<double> get score =>
      $composableBuilder(column: $table.score, builder: (column) => column);

  GeneratedColumn<int> get count =>
      $composableBuilder(column: $table.count, builder: (column) => column);

  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  $$NodesTableAnnotationComposer get nodeId {
    final $$NodesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.nodeId,
      referencedTable: $db.nodes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NodesTableAnnotationComposer(
            $db: $db,
            $table: $db.nodes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TermsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TermsTable,
          Term,
          $$TermsTableFilterComposer,
          $$TermsTableOrderingComposer,
          $$TermsTableAnnotationComposer,
          $$TermsTableCreateCompanionBuilder,
          $$TermsTableUpdateCompanionBuilder,
          (Term, $$TermsTableReferences),
          Term,
          PrefetchHooks Function({bool nodeId})
        > {
  $$TermsTableTableManager(_$AppDatabase db, $TermsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TermsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TermsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TermsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> rowId = const Value.absent(),
                Value<String> nodeId = const Value.absent(),
                Value<String> bookSlug = const Value.absent(),
                Value<String> term = const Value.absent(),
                Value<double> score = const Value.absent(),
                Value<int> count = const Value.absent(),
                Value<String> kind = const Value.absent(),
              }) => TermsCompanion(
                rowId: rowId,
                nodeId: nodeId,
                bookSlug: bookSlug,
                term: term,
                score: score,
                count: count,
                kind: kind,
              ),
          createCompanionCallback:
              ({
                Value<int> rowId = const Value.absent(),
                required String nodeId,
                required String bookSlug,
                required String term,
                required double score,
                required int count,
                required String kind,
              }) => TermsCompanion.insert(
                rowId: rowId,
                nodeId: nodeId,
                bookSlug: bookSlug,
                term: term,
                score: score,
                count: count,
                kind: kind,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$TermsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({nodeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (nodeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.nodeId,
                                referencedTable: $$TermsTableReferences
                                    ._nodeIdTable(db),
                                referencedColumn: $$TermsTableReferences
                                    ._nodeIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TermsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TermsTable,
      Term,
      $$TermsTableFilterComposer,
      $$TermsTableOrderingComposer,
      $$TermsTableAnnotationComposer,
      $$TermsTableCreateCompanionBuilder,
      $$TermsTableUpdateCompanionBuilder,
      (Term, $$TermsTableReferences),
      Term,
      PrefetchHooks Function({bool nodeId})
    >;
typedef $$SummariesTableCreateCompanionBuilder =
    SummariesCompanion Function({
      required String nodeId,
      required String locale,
      required String content,
      Value<int> rowid,
    });
typedef $$SummariesTableUpdateCompanionBuilder =
    SummariesCompanion Function({
      Value<String> nodeId,
      Value<String> locale,
      Value<String> content,
      Value<int> rowid,
    });

final class $$SummariesTableReferences
    extends BaseReferences<_$AppDatabase, $SummariesTable, Summary> {
  $$SummariesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $NodesTable _nodeIdTable(_$AppDatabase db) => db.nodes.createAlias(
    $_aliasNameGenerator(db.summaries.nodeId, db.nodes.id),
  );

  $$NodesTableProcessedTableManager get nodeId {
    final $_column = $_itemColumn<String>('node_id')!;

    final manager = $$NodesTableTableManager(
      $_db,
      $_db.nodes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_nodeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SummariesTableFilterComposer
    extends Composer<_$AppDatabase, $SummariesTable> {
  $$SummariesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get locale => $composableBuilder(
    column: $table.locale,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnFilters(column),
  );

  $$NodesTableFilterComposer get nodeId {
    final $$NodesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.nodeId,
      referencedTable: $db.nodes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NodesTableFilterComposer(
            $db: $db,
            $table: $db.nodes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SummariesTableOrderingComposer
    extends Composer<_$AppDatabase, $SummariesTable> {
  $$SummariesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get locale => $composableBuilder(
    column: $table.locale,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnOrderings(column),
  );

  $$NodesTableOrderingComposer get nodeId {
    final $$NodesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.nodeId,
      referencedTable: $db.nodes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NodesTableOrderingComposer(
            $db: $db,
            $table: $db.nodes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SummariesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SummariesTable> {
  $$SummariesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get locale =>
      $composableBuilder(column: $table.locale, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  $$NodesTableAnnotationComposer get nodeId {
    final $$NodesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.nodeId,
      referencedTable: $db.nodes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NodesTableAnnotationComposer(
            $db: $db,
            $table: $db.nodes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SummariesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SummariesTable,
          Summary,
          $$SummariesTableFilterComposer,
          $$SummariesTableOrderingComposer,
          $$SummariesTableAnnotationComposer,
          $$SummariesTableCreateCompanionBuilder,
          $$SummariesTableUpdateCompanionBuilder,
          (Summary, $$SummariesTableReferences),
          Summary,
          PrefetchHooks Function({bool nodeId})
        > {
  $$SummariesTableTableManager(_$AppDatabase db, $SummariesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SummariesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SummariesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SummariesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> nodeId = const Value.absent(),
                Value<String> locale = const Value.absent(),
                Value<String> content = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SummariesCompanion(
                nodeId: nodeId,
                locale: locale,
                content: content,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String nodeId,
                required String locale,
                required String content,
                Value<int> rowid = const Value.absent(),
              }) => SummariesCompanion.insert(
                nodeId: nodeId,
                locale: locale,
                content: content,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SummariesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({nodeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (nodeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.nodeId,
                                referencedTable: $$SummariesTableReferences
                                    ._nodeIdTable(db),
                                referencedColumn: $$SummariesTableReferences
                                    ._nodeIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SummariesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SummariesTable,
      Summary,
      $$SummariesTableFilterComposer,
      $$SummariesTableOrderingComposer,
      $$SummariesTableAnnotationComposer,
      $$SummariesTableCreateCompanionBuilder,
      $$SummariesTableUpdateCompanionBuilder,
      (Summary, $$SummariesTableReferences),
      Summary,
      PrefetchHooks Function({bool nodeId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BooksTableTableManager get books =>
      $$BooksTableTableManager(_db, _db.books);
  $$NodesTableTableManager get nodes =>
      $$NodesTableTableManager(_db, _db.nodes);
  $$TermsTableTableManager get terms =>
      $$TermsTableTableManager(_db, _db.terms);
  $$SummariesTableTableManager get summaries =>
      $$SummariesTableTableManager(_db, _db.summaries);
}
