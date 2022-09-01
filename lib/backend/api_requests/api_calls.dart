import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class AutocompleteCall {
  static Future<ApiCallResponse> call({
    String? input = '',
    String? key = 'AIzaSyDixMDYZcWASlogGIsAB9s8f941cgI_9DM',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Autocomplete',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/autocomplete/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'input': input,
        'key': key,
      },
      returnBody: true,
    );
  }

  static dynamic placeDescription(dynamic response) => getJsonField(
        response,
        r'''$..description''',
      );
}
