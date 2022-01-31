part of core;

class OnboardedCollege {
  String? college;
  String? domain;
  OnboardedCollege({
    this.college,
    this.domain,
  });

  OnboardedCollege copyWith({
    String? college,
    String? domain,
  }) {
    return OnboardedCollege(
      college: college ?? this.college,
      domain: domain ?? this.domain,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'college': college,
      'domain': domain,
    };
  }

  factory OnboardedCollege.fromMap(Map<String, dynamic> map) {
    return OnboardedCollege(
      college: map['college'] as String,
      domain: map['domain'] as String,
    );
  }

  @override
  String toString() => 'OnboardedCollege(college: $college, domain: $domain)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OnboardedCollege &&
        other.college == college &&
        other.domain == domain;
  }

  @override
  int get hashCode => college.hashCode ^ domain.hashCode;
}
