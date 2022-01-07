// ignore_for_file: non_constant_identifier_names, unused_element, dead_code

import 'dart:convert';
import 'package:app3/screens/services/_data.dart';


dynamic get_item(String type,int id,String field){
switch(type){
  case "fruits":{
    return json.decode(fruitList)[id][field];

  }
  break;
  case "vegetables":{
    return json.decode(vegetablesList)[id][field];

  }
  break;
  case "nuts":{
    return json.decode(nutsList)[id][field];

  }
  break;
  case "spices":{
    return json.decode(spicesList)[id][field];

  }
  break; 

}
}
int get_length(String type){
switch(type){
  case "fruits":{
    return json.decode(fruitList).length;

  }
  break;
  case "vegetables":{
    return json.decode(vegetablesList).length;

  }
  break;
  case "nuts":{
    return json.decode(nutsList).length;

  }
  break;
  case "spices":{
    return json.decode(spicesList).length;

  }
  break;
  default: {
    return 0;
  }

}

}



