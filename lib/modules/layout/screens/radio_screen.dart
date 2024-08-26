import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../themedata/themedata.dart';
import '../manager/settings_provider.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingsProvider>(context);
    return
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/radio_image.png')),
            SizedBox(height: 10,),
            Text('اذاعة القرآن الكريم',style: Theme.of(context).textTheme.displaySmall,),
            SizedBox(height: 25,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,size: 40,),color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:MyThemedata.LightColor,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,size: 45,),color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:MyThemedata.LightColor,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,size: 40,),color: provider.themeMode==ThemeMode.dark?MyThemedata.yellowColor:MyThemedata.LightColor,),
                ],
              ),
            )
          ],
        ),
      );
  }
}