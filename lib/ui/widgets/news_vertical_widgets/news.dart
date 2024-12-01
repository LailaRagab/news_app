import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4ksoKRSYsFj22NMqCs3QkKPxLy7WBzRHg9w&s" ,
          fit: BoxFit.fill,
          width: double.infinity,),
        ) ,
        const Text("America's Evolving Role on the Global Stage" ,
          style: TextStyle(fontSize: 25,
          overflow:TextOverflow.ellipsis),),
        const Text("As economic, political, and cultural dynamics shift worldwide, the United States continues to adapt,"
            " balancing its leadership responsibilities with domestic challenges and global collaboration efforts.",
          style: TextStyle(fontSize: 14,
          overflow: TextOverflow.ellipsis,
          color: Colors.grey),)
      ],
    );
  }
}
