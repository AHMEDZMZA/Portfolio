import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../features/portfolio/data/models/portfolio_models.dart';

Future<void> seedDatabase() async {
  log('Starting database seeding...');
  final firestore = FirebaseFirestore.instance;

  // Collection references
  final portfolioCol = firestore.collection('portfolio');
  final profileDoc = portfolioCol.doc('profile');
  final dataDoc = portfolioCol.doc('data');
  final skillsCol = dataDoc.collection('skills');
  final projectsCol = dataDoc.collection('projects');
  final certificatesCol = dataDoc.collection('certificates');
  final experiencesCol = dataDoc.collection('experiences');

  try {
    // 1. Seed Profile
    final profile = ProfileModel(
      name: 'Ahmed Kamal Zamzam',
      title: 'Junior Flutter Developer | Mobile Application Developer',
      subtitle: 'Computer Science Graduate passionate about building modern mobile applications with Flutter.',
      bio: 'I am a 2026 graduate with a Bachelor\'s degree in Computer Science and Information Technology. I specialize in Flutter mobile application development and enjoy building modern, scalable, and user-friendly applications. Throughout my academic journey, I worked on several projects using Flutter, Firebase, SQLite, REST APIs, Clean Architecture, and Git. I am passionate about continuous learning, writing clean and maintainable code, and solving real-world problems through technology. I am currently seeking opportunities as a Mobile Application Developer where I can contribute, learn, and grow professionally.',
      photoUrl: 'assets/images/profile.jpg',
      email: 'ahmedzamzam3112004@gmail.com',
      phone: '+20 155 454 8893',
      github: 'https://github.com/AHMEDZMZA',
      linkedin: 'https://www.linkedin.com/in/ahmed-zamzam-986b912a5',
      cvUrl: '', // Placeholder as requested
      badges: const [
        'Flutter',
        'Dart',
        'Firebase',
        'SQLite',
        'REST APIs',
        'Clean Architecture',
        'Git',
        'GitHub',
        'Mobile Development',
        'Problem Solver',
        'Team Player',
        'Software Engineering',
        'UI Development',
      ],
    );
    await profileDoc.set(profile.toFirestore());
    log('Profile seeded successfully.');

    // Helper function to clear a collection
    Future<void> clearCollection(CollectionReference ref) async {
      final snapshots = await ref.get();
      for (final doc in snapshots.docs) {
        await doc.reference.delete();
      }
    }

    // 2. Clear & Seed Skills
    log('Clearing old skills...');
    await clearCollection(skillsCol);
    final skills = [
      const SkillModel(id: '', name: 'Flutter'),
      const SkillModel(id: '', name: 'Dart'),
      const SkillModel(id: '', name: 'Firebase'),
      const SkillModel(id: '', name: 'Bloc'),
      const SkillModel(id: '', name: 'Git'),
      const SkillModel(id: '', name: 'GitHub'),
      const SkillModel(id: '', name: 'REST APIs'),
      const SkillModel(id: '', name: 'Clean Architecture'),
      const SkillModel(id: '', name: 'OOP'),
      const SkillModel(id: '', name: 'Postman'),
      const SkillModel(id: '', name: 'Figma'),
    ];
    for (final skill in skills) {
      await skillsCol.add(skill.toFirestore());
    }
    log('Skills seeded successfully.');

    // 3. Clear & Seed Projects
    log('Clearing old projects...');
    await clearCollection(projectsCol);
    final projects = [
      const ProjectModel(
        id: '',
        title: 'GraduatChildMonitor',
        description: 'A graduation project designed to support children with Autism Spectrum Disorder (ASD). The application helps parents monitor their children\'s daily activities, track developmental progress, access educational resources, and communicate with specialists through a modern and user-friendly mobile interface. The project follows Clean Architecture principles to ensure scalability and maintainability.',
        imageUrl: 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&w=800&q=80',
        tags: ['Flutter', 'Dart', 'Firebase', 'Bloc', 'Clean Architecture', 'REST API', 'SQLite'],
        githubUrl: 'https://github.com/AHMEDZMZA/GraduatChildMonitor',
      ),
      const ProjectModel(
        id: '',
        title: 'HungryApp',
        description: 'A modern food ordering application featuring an intuitive user interface for browsing meals, viewing detailed menus, managing favorites, and placing orders. The app focuses on delivering a smooth and responsive user experience while following best Flutter development practices.',
        imageUrl: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=800&q=80',
        tags: ['Flutter', 'Dart', 'Firebase', 'REST API', 'Bloc'],
        githubUrl: 'https://github.com/AHMEDZMZA/HungryApp',
      ),
      const ProjectModel(
        id: '',
        title: 'BooklyApp',
        description: 'A Flutter application for discovering and exploring books through an online API. Users can browse featured books, search for titles, and view detailed information with a clean and responsive interface.',
        imageUrl: 'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?auto=format&fit=crop&w=800&q=80',
        tags: ['Flutter', 'Dart', 'REST API', 'Bloc', 'Clean Architecture'],
        githubUrl: 'https://github.com/AHMEDZMZA/BooklyApp',
      ),
      const ProjectModel(
        id: '',
        title: 'WeatherApp',
        description: 'A weather forecasting application that provides real-time weather conditions and forecasts using a weather API. The app delivers a clean UI with accurate weather information, including temperature, humidity, and wind speed.',
        imageUrl: 'https://images.unsplash.com/photo-1504608524841-42fe6f032b4b?auto=format&fit=crop&w=800&q=80',
        tags: ['Flutter', 'Dart', 'REST API', 'Bloc'],
        githubUrl: 'https://github.com/AHMEDZMZA/WeatherApp',
      ),
      const ProjectModel(
        id: '',
        title: 'News-App',
        description: 'A Flutter news application that fetches the latest headlines from online news sources using REST APIs. Users can browse articles across multiple categories, read detailed news, and enjoy a responsive and modern user interface.',
        imageUrl: 'assets/images/news_app.png',
        tags: ['Flutter', 'Dart', 'REST API', 'Bloc', 'Clean Architecture'],
        githubUrl: 'https://github.com/AHMEDZMZA/News-App',
      ),
    ];
    for (final project in projects) {
      await projectsCol.add(project.toFirestore());
    }
    log('Projects seeded successfully.');

    // 4. Clear & Seed Certificates
    log('Clearing old certificates...');
    await clearCollection(certificatesCol);
    final certificates = [
      const CertificateModel(
        id: '',
        title: 'Sprints x Microsoft Summer Camp – Mobile Development',
        issuer: 'Sprints & Microsoft',
        date: '2025',
        credentialUrl: 'https://drive.google.com/file/d/1RpnVlRK0jjJcZrhXF8A6o79hsoBIqL--',
      ),
      const CertificateModel(
        id: '',
        title: 'Mobile App Development – Digital Egypt Youth Program',
        issuer: 'NTI (National Telecommunication Institute) / Creativa',
        date: '2025',
        credentialUrl: 'https://drive.google.com/file/d/1Goz5vI8q0dv2fWV398YkjICjJI0Y_EZi',
      ),
      const CertificateModel(
        id: '',
        title: 'Web Designer',
        issuer: 'ITIDA & NTI',
        date: '2024',
        credentialUrl: 'https://drive.google.com/file/d/1CIm6fosScX3YleskI0PQNqSlW-Vpz9HG',
      ),
      const CertificateModel(
        id: '',
        title: 'Software Development – Mobile App Developer (Digital Egypt Pioneers Program)',
        issuer: 'Ministry of Communications and Information Technology (MCIT) / DEPI',
        date: '2024',
        credentialUrl: 'https://drive.google.com/file/d/19O0ZDaejotYZvw3JjGnLprjpf5PdiFwl',
      ),
      const CertificateModel(
        id: '',
        title: 'Flutter',
        issuer: 'EraaSoft Academy',
        date: '2026',
        credentialUrl: 'https://drive.google.com/file/d/1Dzx-8cYtanJ9Wufy5zDQvSzl9-L-yCY7',
      ),
    ];
    for (final cert in certificates) {
      await certificatesCol.add(cert.toFirestore());
    }
    log('Certificates seeded successfully.');

    // 5. Clear experiences (since none are provided in the document)
    log('Clearing old experiences...');
    await clearCollection(experiencesCol);
    log('Experiences cleared successfully.');

    log('Database seeding completed successfully!');
  } catch (e) {
    log('Error seeding database: $e');
  }
}
