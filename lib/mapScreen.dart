import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mymap/cubit/cubit.dart';
import 'package:mymap/cubit/states.dart';
import 'components/components.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationCubit, LocationStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = LocationCubit.get(context);
        var searchController = TextEditingController();

        return Scaffold(
          body: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GoogleMap(
                  mapType: MapType.normal,
                  zoomControlsEnabled: false,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(30.033333, 31.233334),
                    zoom: 12.0,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    cubit.mapController = controller;
                  },
                  markers: cubit.markers,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, right: 20, left: 20),
                child: defaultFormField(
                  label: 'Search Places',
                  prefix: Icons.search,
                  type: TextInputType.text,
                  isPassword: false,
                  controller: searchController,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'search musn\' t be empty';
                    }
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.location_searching,
              color: Colors.white,
            ),
            onPressed: () async {
              cubit.getPosition();
              cubit.getLatAndLong();
            },
          ),
        );
      },
    );
  }
}
