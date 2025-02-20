import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserLocationDetectionView extends StatefulWidget {
  const UserLocationDetectionView({super.key});

  @override
  UserLocationDetectionViewState createState() => UserLocationDetectionViewState();
}

class UserLocationDetectionViewState extends State<UserLocationDetectionView> {
  GoogleMapController? _mapController;
  LatLng _initialPosition = LatLng(30.0444, 31.2357); // القاهرة كموقع افتراضي
  Marker? _userMarker;
  String? _currentAddress;

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  // طلب صلاحية الموقع والحصول على موقع المستخدم
  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // التأكد من تشغيل خدمة الموقع
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('يرجى تفعيل خدمة الموقع.')),
      );
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('تم رفض صلاحية الموقع.')),
        );
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('الصلاحية مرفوضة بشكل دائم، الرجاء تعديل الإعدادات.')),
      );
      return;
    }

    // الحصول على موقع المستخدم الحالي
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    _initialPosition = LatLng(position.latitude, position.longitude);

    // تحديث الخريطة مع موقع المستخدم
    _userMarker = Marker(
      markerId: MarkerId('userLocation'),
      position: _initialPosition,
      infoWindow: InfoWindow(title: "موقعك الحالي"),
    );

    // تحويل الإحداثيات إلى عنوان (اختياري)
    _getAddressFromLatLng(position);

    if (_mapController != null) {
      _mapController!.animateCamera(
        CameraUpdate.newLatLngZoom(_initialPosition, 14),
      );
    }
    setState(() {});
  }

  // تحويل الإحداثيات إلى عنوان
  Future<void> _getAddressFromLatLng(Position position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        setState(() {
          _currentAddress = "${place.street}, ${place.locality}, ${place.country}";
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Location on Google Maps'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 14,
            ),
            myLocationEnabled: true,
            markers: _userMarker != null ? {_userMarker!} : {},
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
            },
          ),
          if (_currentAddress != null)
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.white70,
                child: Text(
                  "العنوان: $_currentAddress",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _determinePosition,
        child: Icon(Icons.my_location),
      ),
    );
  }
}