import 'package:flutter/material.dart';


class MySelfCard extends StatelessWidget
{
  
  final String englishName;
  final String chineseName;
  final String mail;
  final String address;
  final String picPath;
  
  const MySelfCard({super.key, 
    required this.englishName, required this.chineseName, required this.mail, required this.address, required this.picPath});

  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 70,),
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: BoxBorder.all(color: Colors.white, width: 5)
                  ),
                  child: ClipOval(
                    child: Image.asset(picPath,
                    fit: BoxFit.cover,)),
                ),
                SizedBox(height: 10,),
                Text(englishName, style: TextStyle(fontSize: 18),),
                SizedBox(height: 5,),
                Text(chineseName, style: TextStyle(fontSize: 18),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mail),
                    SizedBox(width: 10,),
                    Text(mail, style: TextStyle(fontSize: 14))
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_city),
                    SizedBox(width: 10,),
                    Text(address, style: TextStyle(fontSize: 14))
                  ],
                ),
                
              
              ],);
    
  }
  
}