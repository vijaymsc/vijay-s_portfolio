bool areFirstElementsSame(List<List<dynamic>> listOfLists) {
  if (listOfLists.isEmpty || listOfLists.any((sublist) => sublist.isEmpty)) {
    // If the main list or any of the sublists are empty, return false
    return false;
  }

  // Get the first element of the first sublist
  var firstElement = listOfLists.first.first;

  // Check if the first element of each sublist matches the first element of the first sublist
  return listOfLists.every((sublist) => sublist.first == firstElement);
}

void main() {
  List<List<dynamic>> myList = [
    [1, 'a', true],
    [1, 'b', false],
    [1, 'c', true]
  ];

  bool result = areFirstElementsSame(myList);
  print('Are first elements the same? $result'); // Output: Are first elements the same? true
}
