import '../../../lib.dart';

class ReadCloudStore extends GetView<ReadController> {
  const ReadCloudStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _body,
    );
  }

  AppBar get _appBar => AppBar(
        title: Text(
          "Read Data",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      );

  Widget get _body => GetBuilder<ReadController>(builder: (_) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                //*
                _customField(
                  heading: 'StringField',
                  value: controller.read.stringField ?? "N/A",
                ),
                const SizedBox(height: 10),
                //*
                _customField(
                  heading: 'Int Field',
                  value: controller.read.numberField != null
                      ? controller.read.numberField.toString()
                      : "N/A",
                ),
                const SizedBox(height: 10),
                //*
                _customField(
                  heading: 'bool',
                  value: controller.read.booleanField != null
                      ? controller.read.booleanField.toString()
                      : "N/A",
                ),
                const SizedBox(height: 10),
                //*
                _customField(
                  heading: 'Array Field',
                  value: controller.read.arrayField != null
                      ? controller.read.arrayField.toString()
                      : "N/A",
                ),
                const SizedBox(height: 10),
                //*
                _customField(
                  heading: 'Nested INT',
                  value: controller.read.nestedObject != null
                      ? controller.read.nestedObject!.nestedNumber.toString()
                      : "N/A",
                ),
                const SizedBox(height: 10),
                //*
                _customField(
                  heading: 'Nested String',
                  value: controller.read.nestedObject != null
                      ? controller.read.nestedObject!.nestedString.toString()
                      : "N/A",
                ),
                const SizedBox(height: 10),
                //*
                _customField(
                  heading: 'Latitude',
                  value: controller.read.geopointField != null
                      ? controller.read.geopointField!.latitude.toString()
                      : "N/A",
                ),
                const SizedBox(height: 10),
                //*
                _customField(
                  heading: 'Logitude',
                  value: controller.read.geopointField != null
                      ? controller.read.geopointField!.longitude.toString()
                      : "N/A",
                ),
                const SizedBox(height: 10),
                //*
                _customField(
                  heading: 'Timestamp',
                  value: controller.read.timestampField != null
                      ? controller.read.timestampField!.toDate().toString()
                      : "N/A",
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: controller.fetchData,
                    child: const Text('Fetch'),
                  ),
                ),
              ],
            ),
          ),
        );
      });


  Widget _customField({
    required String value,
    required String heading,
  }) =>
      TextField(
        textAlign: TextAlign.center,
        readOnly: true,
        decoration: InputDecoration(
          icon: const Icon(
            Icons.wysiwyg_rounded,
            size: 48,
          ),
          hintText: value,
          labelText: heading,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          border: const OutlineInputBorder(),
        ),
      );
}
