import '../models/models.dart';

class MockData {
  static const String myName = 'Huynh Nhut Lam';
  static const String resumeLink =
      'https://docs.google.com/document/d/your_cv_link';
  static const String githubLink = 'https://github.com/huynhnhutlam';
  static const String linkedinLink = 'https://linkedin.com/in/yourusername';
  static const String contactEmail = 'huynhnhutlam111@gmail.com';

  static final List<Skill> skills = [
    Skill(
      name: 'Flutter',
      category: LocalizedData({'en': 'Mobile & Web', 'vi': 'Mobile & Web'}),
    ),
    Skill(
      name: 'Dart',
      category: LocalizedData({'en': 'Mobile & Web', 'vi': 'Mobile & Web'}),
    ),
    Skill(
      name: 'React Native',
      category: LocalizedData({'en': 'Mobile & Web', 'vi': 'Mobile & Web'}),
    ),
    Skill(
      name: 'Firebase',
      category: LocalizedData({'en': 'Backend', 'vi': 'Backend'}),
    ),
    Skill(
      name: 'Node.js',
      category: LocalizedData({'en': 'Backend', 'vi': 'Backend'}),
    ),
    Skill(
      name: 'Figma',
      category: LocalizedData({'en': 'Design', 'vi': 'Thiết kế'}),
    ),
    Skill(
      name: 'Git',
      category: LocalizedData({'en': 'Tools', 'vi': 'Công cụ'}),
    ),
    Skill(
      name: 'CI/CD',
      category: LocalizedData({'en': 'Tools', 'vi': 'Công cụ'}),
    ),
    Skill(
      name: 'Clean Architecture',
      category: LocalizedData({'en': 'Concepts', 'vi': 'Kiến trúc'}),
    ),
    Skill(
      name: 'State Management',
      category: LocalizedData({'en': 'Concepts', 'vi': 'Kiến trúc'}),
    ),
  ];

  static final List<Experience> experiences = [
    Experience(
      company: 'Tech Solutions Inc.',
      role: LocalizedData({
        'en': 'Senior Mobile Developer',
        'vi': 'Trưởng nhóm Mobile',
      }),
      duration: LocalizedData({
        'en': '2022 - Present',
        'vi': '2022 - Hiện tại',
      }),
      description: LocalizedData({
        'en':
            'Lead the mobile development team using Flutter to build fintech applications.',
        'vi':
            'Dẫn dắt đội ngũ phát triển mobile sử dụng Flutter để xây dựng các ứng dụng công nghệ tài chính.',
      }),
      achievements: LocalizedData({
        'en': [
          'Reduced app load time by 40%.',
          'Implemented a generic WebView bridge.',
          'Migrated legacy Android app to Flutter.',
        ],
        'vi': [
          'Giảm 40% thời gian tải ứng dụng.',
          'Lập trình cầu nối WebView tĩnh (generic WebView bridge).',
          'Chuyển đổi ứng dụng Android truyền thống sang Flutter.',
        ],
      }),
    ),
    Experience(
      company: 'Creative Agency',
      role: LocalizedData({
        'en': 'Frontend Developer',
        'vi': 'Lập trình viên Frontend',
      }),
      duration: LocalizedData({'en': '2020 - 2022', 'vi': '2020 - 2022'}),
      description: LocalizedData({
        'en': 'Developed modern web applications and managed user experiences.',
        'vi':
            'Phát triển các ứng dụng web hiện đại và tối ưu hóa trải nghiệm người dùng.',
      }),
      achievements: LocalizedData({
        'en': [
          'Built 10+ responsive websites.',
          'Led UI/UX redesign resulting in 25% higher conversion.',
        ],
        'vi': [
          'Xây dựng thành công hơn 10 trang web thích ứng.',
          'Thực hiện thiết kế lại UI/UX giúp tăng 25% tỉ lệ chuyển đổi.',
        ],
      }),
    ),
  ];

  static final List<Project> projects = [
    Project(
      title: LocalizedData({'en': 'E-commerce App', 'vi': 'E-commerce App'}),
      description: LocalizedData({
        'en':
            'A full-featured mobile shopping app built with Flutter and Firebase with elegant animations.',
        'vi':
            'Một ứng dụng di động mua sắm đầy đủ tính năng hoàn thiện bằng Flutter và Firebase với các hiệu ứng đẹp mắt.',
      }),
      imageUrl:
          'https://images.unsplash.com/photo-1512428559087-560fa5ceab42?auto=format&fit=crop&q=80&w=800',
      technologies: ['Flutter', 'Firebase', 'Provider'],
      link: 'https://example.com/project1',
      githubLink: 'https://github.com/path/to/project1',
    ),
    Project(
      title: LocalizedData({
        'en': 'Super App Framework',
        'vi': 'Super App Framework',
      }),
      description: LocalizedData({
        'en':
            'A robust webview JS bridge enabling mini-apps inside a native Flutter application.',
        'vi':
            'Cầu nối WebView JS mạnh mẽ cho phép chạy các mini-app bên trong một ứng dụng Flutter native.',
      }),
      imageUrl:
          'https://images.unsplash.com/photo-1555066931-4365d14bab8c?auto=format&fit=crop&q=80&w=800',
      technologies: ['Flutter', 'InAppWebView', 'JavaScript'],
      link: '',
      githubLink: 'https://github.com/path/to/project2',
    ),
    Project(
      title: LocalizedData({'en': 'Health AI Chat', 'vi': 'Health AI Chat'}),
      description: LocalizedData({
        'en':
            'An AI wrapper utilizing Gemma and specialized prompts for health-related queries.',
        'vi':
            'Công cụ AI ứng dụng Gemma và các kịch bản AI dùng chuyên biệt cho lĩnh vực y tế.',
      }),
      imageUrl:
          'https://images.unsplash.com/photo-1531746790731-6c087fecd65a?auto=format&fit=crop&q=80&w=800',
      technologies: ['Flutter', 'Dart', 'Gemini AI'],
      link: 'https://example.com/project3',
      githubLink: '',
    ),
  ];

  static final List<Service> services = [
    Service(
      title: LocalizedData({
        'en': 'Mobile App Development',
        'vi': 'Phát triển App Mobile',
      }),
      description: LocalizedData({
        'en':
            'High-performance cross-platform mobile apps for iOS and Android.',
        'vi': 'Ứng dụng mobile đa nền tảng hiệu năng cao cho iOS và Android.',
      }),
      iconAsset: '📱',
    ),
    Service(
      title: LocalizedData({
        'en': 'Web Application',
        'vi': 'Phát triển Web App',
      }),
      description: LocalizedData({
        'en': 'Responsive, modern, and SEO-friendly single page applications.',
        'vi': 'Các SPA tương tác cao, thiết kế hiện đại và tối ưu chuẩn SEO.',
      }),
      iconAsset: '💻',
    ),
    Service(
      title: LocalizedData({'en': 'UI/UX Design', 'vi': 'Thiết kế UI/UX'}),
      description: LocalizedData({
        'en': 'Clean, user-centric, and sophisticated product designs.',
        'vi':
            'Thiết kế sản phẩm rõ ràng, tinh tế và lấy người dùng làm trung tâm.',
      }),
      iconAsset: '🎨',
    ),
  ];

  static final List<Stat> stats = [
    Stat(
      value: '5+',
      label: LocalizedData({'en': 'Years Experience', 'vi': 'Năm kinh nghiệm'}),
    ),
    Stat(
      value: '20+',
      label: LocalizedData({
        'en': 'Projects Completed',
        'vi': 'Dự án hoàn thành',
      }),
    ),
    Stat(
      value: '15+',
      label: LocalizedData({'en': 'Happy Clients', 'vi': 'Khách hàng'}),
    ),
    Stat(
      value: '10+',
      label: LocalizedData({'en': 'Technologies', 'vi': 'Công nghệ'}),
    ),
  ];

  static final List<Certificate> certificates = [
    Certificate(
      title: LocalizedData({
        'en': 'Google Flutter Certification',
        'vi': 'Chứng chỉ Google Flutter',
      }),
      organization: LocalizedData({'en': 'Google', 'vi': 'Google'}),
      date: '2023',
      link: 'https://example.com/cert1',
    ),
    Certificate(
      title: LocalizedData({
        'en': 'Mobile App Specialist',
        'vi': 'Chuyên gia ứng dụng di động',
      }),
      organization: LocalizedData({'en': 'Udacity', 'vi': 'Udacity'}),
      date: '2022',
      link: 'https://example.com/cert2',
    ),
  ];
}
