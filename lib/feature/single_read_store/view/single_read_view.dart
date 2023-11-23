import 'package:read_write/lib.dart';

class SingelReadView extends GetView<SingleReadController> {
  const SingelReadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }

  //*
  AppBar get _appBar => AppBar(
        title: const Text(
          'SingleReadView',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      );

  //*
  Widget get _body => GetBuilder<SingleReadController>(
        initState: (state) async {
          await FireRepoSingleRead.getDocSnap();
        },
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //*
                  _customField(
                    heading: 'StringField',
                    value: controller.singleString != null
                        ? controller.singleString.toString()
                        : "N/A",
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: controller.getSingleString,
                      child: const Text('Fetch'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //*
                  _customField(
                    heading: 'IntField',
                    value: controller.singleInt != null
                        ? controller.singleInt.toString()
                        : "N/A",
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: controller.getSingleInt,
                      child: const Text('Fetch'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //*
                  _customField(
                    heading: 'BoolField',
                    value: controller.singleBool != null
                        ? controller.singleBool.toString()
                        : "N/A",
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: controller.getSingleBool,
                      child: const Text('Fetch'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //*
                  _customField(
                    heading: 'Time',
                    value: controller.singleTime != null
                        ? controller.singleTime!.toDate().toString()
                        : "N/A",
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: controller.getSingleTime,
                      child: const Text('Fetch'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //*
                  _customField(
                    heading: 'Nested String',
                    value: controller.singleNested != null
                        ? controller.singleNested!.nestedString
                        : "N/A",
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: controller.getSingleNested,
                      child: const Text('Fetch'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //*
                  _customField(
                    heading: 'Nested Int',
                    value: controller.singleNested != null
                        ? controller.singleNested!.nestedNumber
                        : "N/A",
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: controller.getSingleNested,
                      child: const Text('Fetch'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //*
                  _customField(
                    heading: 'Latitude',
                    value: controller.singleGeopoint != null
                        ? controller.singleGeopoint!.latitude.toString()
                        : "N/A",
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: controller.getSingleGeopoint,
                      child: const Text('Fetch'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //*
                  _customField(
                    heading: 'Logitude',
                    value: controller.singleGeopoint != null
                        ? controller.singleGeopoint!.longitude.toString()
                        : "N/A",
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: controller.getSingleGeopoint,
                      child: const Text('Fetch'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //*
                  const Text('Single Array'),
                  _customField(
                    heading: 'Array [0]',
                    value: controller.singleArray != null
                        ? controller.singleArray![0].toString()
                        : "N/A",
                  ),
                  const SizedBox(height: 10),
                  const Text('List of Array'),
                  ...List.generate(
                    controller.singleArray?.length ?? 0,
                    (index) => _customField(
                        heading: 'Array ${index.toString()}',
                        value: controller.singleArray![index]),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: controller.getSingleArray,
                      child: const Text('Fetch'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );

  Widget _customField({
    required String heading,
    required String value,
  }) =>
      TextField(
        textAlign: TextAlign.center,
        readOnly: true,
        decoration: InputDecoration(
          hintText: value,
          labelText: heading,
          labelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        ),
      );
}
