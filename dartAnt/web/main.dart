import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  // 取得用于显示dart是否连接成功的div
  final div = querySelector("#hint") as DivElement;
  div.text = "dart connected.";

  // 从js上下文中获取chart类
  var chart = context['chart'];
  var data = JsObject.jsify([
    {'item': 'Java', 'count': 40, 'percent': 0.2},
    {'item': 'C++', 'count': 23, 'percent': 0.1},
    {'item': 'Python', 'count': 56, 'percent': 0.3},
    {'item': '肠粉', 'count': 70, 'percent': 0.4},
  ]);

  // 调用chart的source与render函数向其传入新的数据并使其重新渲染
  chart.callMethod('source', [data]);
  chart.callMethod('render', []);

  print('data updated');
}
