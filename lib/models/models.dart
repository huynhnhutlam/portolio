class LocalizedData<T> {
  final Map<String, T> values;

  const LocalizedData(this.values);

  T get(String langCode) {
    if (values.containsKey(langCode)) {
      return values[langCode] as T;
    }
    // Fallback to English, or first available
    if (values.containsKey('en')) {
      return values['en'] as T;
    }
    if (values.isEmpty) {
      throw StateError('LocalizedData has no values.');
    }
    return values.values.first;
  }
}

class Skill {
  final String name;
  final LocalizedData<String> category;

  Skill({required this.name, required this.category});
}

class Project {
  final LocalizedData<String> title;
  final LocalizedData<String> description;
  final String imageUrl;
  final List<String> technologies;
  final String link;
  final String githubLink;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.technologies,
    required this.link,
    required this.githubLink,
  });
}

class Experience {
  final String company;
  final LocalizedData<String> role;
  final LocalizedData<String> duration;
  final LocalizedData<String> description;
  final LocalizedData<List<String>> achievements;

  Experience({
    required this.company,
    required this.role,
    required this.duration,
    required this.description,
    required this.achievements,
  });
}

class Service {
  final LocalizedData<String> title;
  final LocalizedData<String> description;
  final String iconAsset;

  Service({
    required this.title,
    required this.description,
    required this.iconAsset,
  });
}

class Stat {
  final String value;
  final LocalizedData<String> label;

  Stat({required this.value, required this.label});
}

class Certificate {
  final LocalizedData<String> title;
  final LocalizedData<String> organization;
  final String date;
  final String link;

  Certificate({
    required this.title,
    required this.organization,
    required this.date,
    required this.link,
  });
}
