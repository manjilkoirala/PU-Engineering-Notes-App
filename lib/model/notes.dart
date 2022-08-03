// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Notes {
  String subjecttitle;
  String path;

  Notes({
    required this.subjecttitle,
    required this.path,
  });
}

class Computer {
  static final computer1st = [
    Notes(subjecttitle: 'Engineering Math-1', path: ''),
    Notes(subjecttitle: 'Pysics', path: ''),
    Notes(subjecttitle: 'EDCT', path: ''),
    Notes(subjecttitle: 'Communicative English', path: ''),
    Notes(subjecttitle: 'Computer Programming', path: ''),
  ];

  static final computer2nd = [
    Notes(subjecttitle: 'Engineering Math-II', path: ''),
    Notes(subjecttitle: 'Chemistry', path: ''),
    Notes(subjecttitle: 'Applied Mechanics', path: ''),
    Notes(subjecttitle: 'Electrical  Engineering', path: ''),
    Notes(subjecttitle: 'Object Oriented Programming', path: ''),
    Notes(subjecttitle: 'Digital Logic', path: ''),
  ];

  static final computer3rd = [
    Notes(subjecttitle: 'Engineering Math-III', path: ''),
    Notes(subjecttitle: 'Information System Design', path: ''),
    Notes(subjecttitle: 'Electronic Devices & Circuit', path: ''),
    Notes(subjecttitle: 'Data Structure and Algorithm', path: ''),
    Notes(subjecttitle: 'Computer Organization and Design', path: ''),
  ];
  static final computer4th = [
    Notes(subjecttitle: 'Microprocessor', path: ''),
    Notes(subjecttitle: 'Database Management System', path: ''),
    Notes(subjecttitle: 'Free and Open Source Programs', path: ''),
    Notes(subjecttitle: 'Discrete Mathematics', path: ''),
    Notes(subjecttitle: 'Communication System', path: ''),
    Notes(subjecttitle: 'Applied Sociology', path: ''),
  ];
  static final computer5th = [
    Notes(subjecttitle: 'Numerical Method', path: ''),
    Notes(subjecttitle: 'Algorithm Analysis and Design', path: ''),
    Notes(subjecttitle: 'Computer Graphics', path: ''),
    Notes(subjecttitle: 'Operating System', path: ''),
    Notes(subjecttitle: 'Research Methodology', path: ''),
  ];
  static final computer6th = [
    Notes(subjecttitle: 'Project and Organization Management', path: ''),
    Notes(subjecttitle: 'Theory of Computation', path: ''),
    Notes(subjecttitle: 'Multimedia Technology', path: ''),
    Notes(subjecttitle: 'Computer Network', path: ''),
    Notes(subjecttitle: 'Probability and Statistics', path: ''),
    Notes(subjecttitle: 'Engineering Economics', path: ''),
  ];
  static final computer7th = [
    Notes(subjecttitle: 'Entrepreneurship', path: ''),
    Notes(subjecttitle: 'Artificial Intelligence', path: ''),
    Notes(subjecttitle: 'Software Engineering', path: ''),
    Notes(subjecttitle: 'Simulation and Modeling', path: ''),
  ];
  static final computer8th = [
    Notes(subjecttitle: 'Data mining and Data warehousing', path: ''),
    Notes(subjecttitle: 'Cryptography', path: ''),
    Notes(subjecttitle: 'Advance Computer Architecture', path: ''),
  ];
}

class Syllabus {
  static final computer = [
    Notes(
        subjecttitle: 'First Semester Computer',
        path: 'assest/files/syllabus/computer/1syllabus.pdf'),
    Notes(
        subjecttitle: 'Second Semester Computer',
        path: 'assest/files/syllabus/computer/2syllabus.pdf'),
    Notes(
        subjecttitle: 'Third Semester Computer',
        path: 'assest/files/syllabus/computer/3syllabus.pdf'),
    Notes(
        subjecttitle: 'Fourth Semester Computer',
        path: 'assest/files/syllabus/computer/4syllabus.pdf'),
    Notes(
        subjecttitle: 'Fifth Semester Computer',
        path: 'assest/files/syllabus/computer/5syllabus.pdf'),
    Notes(
        subjecttitle: 'Sixth Semester Computer',
        path: 'assest/files/syllabus/computer/6syllabus.pdf'),
    Notes(
        subjecttitle: 'Seventh Semester Computer',
        path: 'assest/files/syllabus/computer/7syllabus.pdf'),
    Notes(
        subjecttitle: 'Eight Semester Computer',
        path: 'assest/files/syllabus/computer/8syllabus.pdf')
  ];
}
