class StateModel {
  final String title;
  final String value;

  StateModel({required this.title, required this.value});
}

List<StateModel> stateList = [
  StateModel(title: 'Runing', value: '100'),
  StateModel(title: 'Ongoing', value: '500'),
  StateModel(title: 'Patient', value: '700'),
];
