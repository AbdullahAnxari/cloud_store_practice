import 'package:read_write/lib.dart';

class SingleWriteView extends GetView<SingleWriteController> {
  const SingleWriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }

  AppBar get _appBar => AppBar(
        title: const Text('Single Write View'),
      );

  Widget get _body => GetBuilder<SingleWriteController>(
        builder: (_) {
          return SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Column(
                children: [
                  //*String Field
                  _customField(
                    labelText: 'StringField',
                    controller: controller.singleStringController,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (controller.singleStringController.text.isNotEmpty) {
                          controller.setSingleString(
                              stringField:
                                  controller.singleStringController.text);
                        }
                      },
                      child: const Text('Single String'),
                    ),
                  ),
                  const SizedBox(height: 10),

                  //*Int Name
                  _customField(
                    labelText: 'NumberField',
                    controller: controller.singleIntController,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (controller.singleIntController.text.isNotEmpty) {
                          controller.setSingleInt(
                              numberField: int.parse(
                                  controller.singleIntController.text));
                        }
                      },
                      child: const Text('Single String'),
                    ),
                  ),
                  const SizedBox(height: 10),

                  //*Bool
                  const Text(
                    'Bool value',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: Switch(
                          value: controller.boolValue,
                          onChanged: (value) {
                            controller.changeBoolValue(value: value);
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (controller
                                  .singleBoolController.text.isNotEmpty) {
                                controller.setSingleBool(
                                    boolvalue: bool.parse(
                                        controller.singleBoolController.text));
                              }
                            },
                            child: const Text('Single String'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  //*Array Field
                  Row(
                    children: [
                      Expanded(
                        child: _customField(
                          labelText: 'ArrayString',
                          controller: controller.singleArrayStringController,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _customField(
                          labelText: 'ArrayInt',
                          controller: controller.singelArrayIntController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (controller
                                .singelArrayIntController.text.isNotEmpty &&
                            controller
                                .singelArrayIntController.text.isNotEmpty) {
                          controller.setSingleArrayField(arrayField: [
                            controller.singleArrayStringController.text,
                            controller.singelArrayIntController.text,
                          ]);
                        }
                      },
                      child: const Text('ArrayField'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //*Nested
                  Row(
                    children: [
                      Expanded(
                        child: _customField(
                          labelText: 'Nested String',
                          controller: controller.singleNestedStringController,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _customField(
                          labelText: 'Nested Int',
                          controller: controller.singleNestedIntController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (controller
                                .singleNestedIntController.text.isNotEmpty &&
                            controller
                                .singleNestedStringController.text.isNotEmpty) {
                          controller.setSingleNestedField(
                            stringField:
                                controller.singleNestedStringController.text,
                            intField: int.parse(
                              controller.singleNestedIntController.text,
                            ),
                          );
                        }
                      },
                      child: const Text('NestedField'),
                    ),
                  ),

                  const SizedBox(height: 10),
                  //*GeoField
                  Row(
                    children: [
                      Expanded(
                        child: _customField(
                          labelText: 'Latitude',
                          controller: controller.singleLatitudeController,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _customField(
                          labelText: 'Logitude',
                          controller: controller.singleLongitudeController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (controller
                                .singleLatitudeController.text.isNotEmpty &&
                            controller
                                .singleLongitudeController.text.isNotEmpty) {
                          controller.setSingleGeoField(
                              latitude: double.parse(
                                  controller.singleLatitudeController.text),
                              longitude: double.parse(
                                controller.singleLongitudeController.text,
                              ));
                        }
                      },
                      child: const Text('GeoField'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );

  Widget _customField({
    required String labelText,
    TextEditingController? controller,
  }) =>
      TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding: const EdgeInsets.all(12.0),
        ),
      );

  Widget _customButton({
    required VoidCallback? onPressed,
    required String buttonText,
  }) =>
      TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 3.0,
        ),
        child: const Text("Create"),
      );
}
