class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar;

  ChatModel({this.message, this.name, this.avatar, this.time});
}

 List<ChatModel> chats = [
   ChatModel(
     name: "Eben",
     message: "Hey there",
     time: "15:30",
     avatar: "images/AVSEQ01.DAT_002314400.jpg"
   ),

   ChatModel(
       name: "Majorie",
       message: "Eben how are u doing",
       time: "12:30",
       avatar: "images/AVSEQ01.DAT_002314400.jpg"
   ),

   ChatModel(
       name: "Ely",
       message: "Hey ",
       time: "12:30",
       avatar: "images/AVSEQ01.DAT_002314400.jpg"
   ),

   ChatModel(
       name: "Vera",
       message: "Kwadwo how are you doing ",
       time: "11:30",
       avatar: "images/AVSEQ01.DAT_002314400.jpg"
   )
 ];

