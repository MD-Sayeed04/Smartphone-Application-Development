void main() {
  List<String> friends = ["Alice", "Bob", "Anna", "Charlie", "Adam", "David", "Andrew"];
  var aNames = friends.where((name) => name.toLowerCase().startsWith('a'));
  
  for (var name in aNames) {
    print(name);
  }
}
