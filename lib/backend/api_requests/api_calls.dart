import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AutocompleteCall {
  static Future<ApiCallResponse> call({
    String? key = 'AIzaSyAQzJf3EaR8aDMe2j5NKsjtgxqVVE_CK-M',
    String? input = '',
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
