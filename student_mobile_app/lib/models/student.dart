class Student {
  final int? id;
  final String studentId;
  final String fullName;
  final String email;
  final String course;
  final String phone;

  const Student({
    this.id,
    required this.studentId,
    required this.fullName,
    required this.email,
    required this.course,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'student_id': studentId,
      'full_name': fullName,
      'email': email,
      'course': course,
      'phone': phone,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'] as int?,
      studentId: map['student_id'] as String,
      fullName: map['full_name'] as String,
      email: map['email'] as String,
      course: map['course'] as String,
      phone: map['phone'] as String,
    );
  }

  Student copyWith({
    int? id,
    String? studentId,
    String? fullName,
    String? email,
    String? course,
    String? phone,
  }) {
    return Student(
      id: id ?? this.id,
      studentId: studentId ?? this.studentId,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      course: course ?? this.course,
      phone: phone ?? this.phone,
    );
  }
}
