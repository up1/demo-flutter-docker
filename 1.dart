import 'dart:io';

void main() async {
  var server = await HttpServer.bind(
    "0.0.0.0",
    3000,
  );

  print('Listening on localhost:${server.port}');
  
  handleSignals();

  server.listen((request) {
    request.response.write('Hello, world!');
    request.response.close();
  });
}

void handleSignals() {
  ProcessSignal.sigint.watch().listen((signal) {
    exit(0);
  });
  ProcessSignal.sigterm.watch().listen((signal) {
    exit(0);
  });
}
