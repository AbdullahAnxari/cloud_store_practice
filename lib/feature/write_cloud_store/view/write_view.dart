import '../../../lib.dart';

class WriteCloudStore extends GetView<WriteController> {
  const WriteCloudStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }

  AppBar get _appBar => AppBar(
        title: const Text(
          "Write View",
        ),
      );

  Widget get _body => GetBuilder<WriteController>(builder: (_) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                //*string
                _customField(
                    labelText: 'Name', controller: controller.nameController),
                const SizedBox(height: 10),
                //*int
                _customField(
                    labelText: 'Age', controller: controller.ageController),
                const SizedBox(height: 10),
                //*bool
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Switch button',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: controller.boolValue,
                      onChanged: (value) =>
                          controller.changeBoolValue(value: value),
                    ),
                  ],
                ),
                //*Array
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _customField(
                          labelText: 'arrayString',
                          controller: controller.arrayIntController),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: _customField(
                          labelText: 'arrayInt',
                          controller: controller.arrayStringController),
                    ),
                  ],
                ),
                //*Nested Object
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _customField(
                          labelText: 'NestedString',
                          controller: controller.nestedStringController),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: _customField(
                          labelText: 'NestedInt',
                          controller: controller.nestedIntController),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                //*Timestamp
                _customField(
                  labelText: 'TimeStampField',
                  controller: controller.timestampController,
                ),
                const SizedBox(height: 20),
                //*Latitude && Longitude
                Row(
                  children: [
                    Expanded(
                      child: _customField(
                        labelText: 'Latitude',
                        controller: controller.latitudeController,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: _customField(
                        labelText: 'Longitude',
                        controller: controller.longitudeController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (controller.nameController.text.isNotEmpty &&
                          controller.ageController.text.isNotEmpty &&
                          controller.arrayIntController.text.isNotEmpty &&
                          controller.boolController.text.isNotEmpty &&
                          controller.nestedIntController.text.isNotEmpty &&
                          controller.nestedStringController.text.isNotEmpty &&
                          controller.timestampController.text.isNotEmpty &&
                          controller.latitudeController.text.isNotEmpty &&
                          controller.longitudeController.text.isNotEmpty) {
                        final newData = controller.write.copyWith(
                          //*String
                          stringField: controller.nameController.text,
                          //*Int
                          numberField: int.tryParse(
                            controller.ageController.text.toString(),
                          ),
                          //*bool
                          booleanField: bool.tryParse(
                              controller.boolController.text.toString()),
                          //*Array
                          arrayField: [
                            controller.nestedIntController.text.toString(),
                            controller.nestedStringController.text.toString()
                          ],
                          //*Nested
                          nestedObject: SingleNestedWriteModel(
                            name: controller.nestedStringController.text,
                            age: int.tryParse(
                              controller.nestedIntController.text,
                            ),
                          ),
                          //*Timestamp
                          timestampField: Timestamp.fromMillisecondsSinceEpoch(
                            int.parse(controller.timestampController.text),
                          ),
                          //*Latitude & Longitude
                          geopointField: GeoPoint(
                            double.parse(controller.latitudeController.text),
                            double.parse(controller.longitudeController.text),
                          ),
                        );
                        controller.setData(data: newData);
                      }
                    },
                    child: const Text('String field'),
                  ),
                ),
              ],
            ),
          ),
        );
      });

  Widget _customField({
    required String labelText,
    TextEditingController? controller,
  }) =>
      TextField(
        controller: controller,
        style: TextStyle(fontSize: 16.sp),
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding: EdgeInsets.all(12.0),
        ),
      );
}
