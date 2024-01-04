main(){
  // var map_name = {
  //   'Name' : 'value1',
  //   'Year' : 2,
  //   'Avg' : 45,
  //   'Coruse' : 'Flutter',
  //   'Company' : 'Miracle',
  // };
  // map_name['Name'] = 'Flutter';
  var mapName = Map();
  mapName['Name'] = "Flutter";
  mapName['Year'] = "2";
  mapName['Avg'] = "45";
  mapName['Coruse'] = "Flutter";
  mapName['Company'] = "Miracle";
  mapName['office'] = "true";

  print(mapName.isNotEmpty);
  print(mapName.isEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey('Name'));
  print(mapName.containsValue(false));
  print(mapName.remove('office'));

  print(mapName);

}