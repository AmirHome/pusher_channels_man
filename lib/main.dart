import 'package:pusher_channels/pusher_channels.dart';

main() async {
  final pusher = Pusher(key: 'ecd279b8357d739168ee');
  await pusher.connect();
  final channel = pusher.subscribe('my-channel');
  channel.bind('my-event', (event) {
    print('WOW event: $event');
  });
}