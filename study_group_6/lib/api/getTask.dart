class PostTask {
  final String name;
  final String url;

  PostTask({
    required this.name,
    required this.url,
  });

  factory PostTask.fromJson(Map<String, dynamic> json) {
    return PostTask(name: json['name'], url: json['url']);
  }
}
