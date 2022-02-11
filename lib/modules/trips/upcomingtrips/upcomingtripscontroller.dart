import 'package:get/get.dart';

import '../../../models/trip_model/tripslistmodel.dart';

class UpComingTripsController extends GetxController{
  List<Map<String,dynamic>> tempTripData=[
    {
      'tripsTitle':'Mumbai Trip',
      'startDate':'10 March 2021',
      'endDate':'12 March 2021',
      'data':{
        'tripdetail':{
          'destination':'Mumbai',
          'tripName':'Mumbai Trip',
          'travelCategory':'Business',
          'costCenter':'Cost Center(CS)',
          'employeeName':'John Smith',
          'employeeEmail':'john@gmail.com',
          'mobileNumber':'9878345261',
          'tripPeriod':'10 Mar 21 - 12 Mar 21',
          'tripType':'Not Applicable',
          'project':'Ortharize',
          'traveller':'1',
          'status':'Saved',
          'projectExpenses':'800',
          'travelCost':'800',
        },
        'cars':null,
        'airways':null,
        'trainDetails':null,
        'hotelDetails':null,
      },
    },
    {
      'tripsTitle':'Goa Trip',
      'startDate':'5 April 2021',
      'endDate':'8 April 2021',
      'data':{
        'tripdetail':null,
        'cars':null,
        'airways':null,
        'trainDetails':null,
        'hotelDetails':null,
      },
    },
    {
      'tripsTitle':'Bangalore Trip',
      'startDate':'20 April 2021',
      'endDate':'23 April 2021',
      'data':{
        'tripdetail':null,
        'cars':null,
        'airways':null,
        'trainDetails':null,
        'hotelDetails':null,
      },
    },

  ];
  List<TripsListModel> allTripsList=[];
  @override
  void onInit() {

    for(int i =0;i<tempTripData.length;i++) {
      allTripsList.add(TripsListModel.fromJson(tempTripData[i]));
    }
    super.onInit();
  }

}