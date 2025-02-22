import 'package:flutter/foundation.dart';
import '../models/time_entry.dart';

class TimeEntryProvider extends ChangeNotifier {
  List<TimeEntry> _entries = [];

  List<TimeEntry> get entries => _entries;

  void addEntry(TimeEntry entry) {
    _entries.add(entry);
    notifyListeners(); // Notify UI to update
  }

  void deleteEntry(int index) {
    if (index >= 0 && index < _entries.length) {
      _entries.removeAt(index);
      notifyListeners();
    }
  }
}
