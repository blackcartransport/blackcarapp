import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GoogleAutocompleteCall {
  static Future<ApiCallResponse> call({
    String? placeId = 'placeId',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Google Autocomplete',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/details/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'place Id': placeId,
      },
      returnBody: true,
    );
  }
}
