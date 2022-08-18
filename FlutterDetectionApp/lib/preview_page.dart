import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:untitled1/proto/ImageProcessing.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'dart:convert';
import 'package:untitled1/home_page.dart';
import 'package:flutter/services.dart';

class PreviewPage extends StatefulWidget {
  const PreviewPage({Key? key, required this.picture, required this.base64String}) : super(key: key);

  final XFile picture;
  final Uint8List base64String;

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}
class _PreviewPageState extends State<PreviewPage> {
  bool res = false;
  // Uint8List result =  Uint8List.fromList([]);
  String result = '';
  // String detectedBase64Image = '';
  // String detectedBase64Image = '';
  // String header = "data:image/png;base64,";

  ImageProcessingClient client = ImageProcessingClient(
      ClientChannel('192.168.1.21', port: 50051,
          options:ChannelOptions(credentials: ChannelCredentials.insecure())));

  void _callGrpcService() async {
    // result =  Uint8List.fromList([]);
    result = '';
    var response = await client.predict(PredictionRequest()..imageArray=widget.base64String..fileExtension=".png"..fileName="asd");
    setState(() {
      // print(response.detectedImage.runtimeType);
      result = response.detectedImage;
      // print(response.detectedImage);
      // detectedBase64Image = base64Encode(result);
      // print(detectedBase64Image);
      // imageData = result.toPngBytes();
      // detectedBase64Image = base64.encode(imageData)
      // print(result);
      res = true;
    });
  }
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _callGrpcService());
  }
  Future _goHomepage() async {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()), (route) => false,
    );
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    // bool res = false;
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   // _callGrpcService();
    //   print("asd");
    // });
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          Flexible(
            child: Stack(
              children: [
                res == false ?
                  Image.file(File(widget.picture.path), fit: BoxFit.cover, width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height)
                  // : Text('$result'),
                  : Image.memory(base64Decode(result), fit: BoxFit.cover, width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height),
                res == false ? Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(strokeWidth: 3),
                        SizedBox(height: 20),
                        Text(
                          'Lütfen Bekleyiniz...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )) : Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: _goHomepage,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                            width: MediaQuery.of(context).size.width * 0.47,
                            // height: MediaQuery.of(context).size.height * 0.10,
                            padding: EdgeInsets.all((MediaQuery.of(context).size.height * 0.10) / 4),
                            child: Text(
                              "Ana Menüye Dön",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        )
                      ],
                    ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
