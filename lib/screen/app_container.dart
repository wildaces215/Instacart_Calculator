import 'package:flutter/material.dart';
import 'package:instacart_pay/state/state.dart';
import 'package:provider/provider.dart';


class AppContainer  extends  StatelessWidget{
 AppContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('App Container'),
      ),
      body: Padding(padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ProviderClass>(
            builder: (context,provider,child)=>TextField(
              decoration: InputDecoration(labelText: 'First Total'),
              keyboardType: TextInputType.number,
              onChanged: (value){
                provider.setFirstTotal(value);
              },
            ),
          )
          ,
          SizedBox(height: 16.0,),
          Consumer<ProviderClass>(
            builder: (context,provider,child)=>TextField(
              decoration: InputDecoration(labelText: 'Second Total'),
              keyboardType: TextInputType.number,
              onChanged: (value){
               provider.setSecondTotal(value);
              },
            ),
          ),
          SizedBox(height: 16.0,),
          Consumer<ProviderClass>(
            builder: (context,provider,child)=>TextField(
              decoration: InputDecoration(labelText: 'Service Fee'),
              keyboardType: TextInputType.number,
              onChanged: (value){
                provider.setServiceFee(value);
              },
            ),
          ),
          SizedBox(height: 16.0,),
          Consumer<ProviderClass>(
            builder: (context,provider,child)=>TextField(
              decoration: InputDecoration(labelText: 'Delivery Fee'),
              keyboardType: TextInputType.number,
              onChanged: (value){
                provider.setDeliveryFee(value);
              },
            ),
          ),
          SizedBox(height: 16.0,),
          Consumer<ProviderClass>(
            builder: (context,provider,child)=>TextField(
              decoration: InputDecoration(labelText: 'Delivery Tip'),
              keyboardType: TextInputType.number,
              onChanged: (value){
                provider.setDeliverTip(value);
              },
            ),
          ),
          Consumer<ProviderClass>(
            builder: (context, provider, child){
              return Text('Total: ${provider.getTotal()}');
            },
          ),
        ],
      ),
      
      )
    );
  }
}