import 'dart:io';

void main() async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    3000,
  );

  print('Listening on localhost:${server.port}');

  server.listen((request) {
    request.response.write('Hello, world!');
    request.response.close();
  });
}