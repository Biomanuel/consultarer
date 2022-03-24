import 'package:consultarer/screen/home_view_model.dart';
import 'package:consultarer/util/color.dart';
import 'package:consultarer/util/dimen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:consultarer/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
class PostDialogue extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;
  const PostDialogue({
    required this.request,
    required this.completer,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80.0,horizontal: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.6,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.roundedBorder),
          ),
          child: ViewModelBuilder<HomeViewModel>.reactive(
            viewModelBuilder: ()=> HomeViewModel(),
            builder: (context, model, _) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Share your ideas, opinions, input etc...',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        minLines: 5,
                        maxLines: 22,
                        controller: model.postController,
                        enableSuggestions: true,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.camera,)),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.video,)),
                              ),
                            ],
                          ),
                        ),
                        ConsultButton(
                            title: 'Publish',
                            onPressed: (){},
                            buttonColor: ConsultColor.redButtonColor,
                            titleStyle: buttonStyle,
                        ),
                      ],
                    )
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
