/// Notice all the blue underlines, it has all the lint rules which 
/// need to follow. 
void main(){
  final convertStringToList = filterList(text: 'I am classic dart');
  print(convertStringToList);
}


List<String> filterList({String? text}){
  final list = text?.split(',');
  final newList = <String>[];
  list?.forEach((element) {
    if(element.length > 3){
      newList.add(element);
    }
  });
  return newList;
}
