# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [eheya/v1/eheya_service.proto](#eheya_v1_eheya_service-proto)
    - [Property](#eheya-v1-Property)
    - [SearchRequest](#eheya-v1-SearchRequest)
    - [SearchResponse](#eheya-v1-SearchResponse)
  
    - [HousePlan](#eheya-v1-HousePlan)
    - [SortDirection](#eheya-v1-SortDirection)
    - [SortType](#eheya-v1-SortType)
  
    - [EheyaService](#eheya-v1-EheyaService)
  
- [hello/v1/hello.proto](#hello_v1_hello-proto)
    - [GetUserRequest](#hello-v1-GetUserRequest)
    - [GetUserResponse](#hello-v1-GetUserResponse)
    - [HelloRequest](#hello-v1-HelloRequest)
    - [HelloResponse](#hello-v1-HelloResponse)
    - [SayHelloRequest](#hello-v1-SayHelloRequest)
    - [SayHelloResponse](#hello-v1-SayHelloResponse)
  
    - [UserService](#hello-v1-UserService)
  
- [yahoo_auction/v1/yahoo_auction.proto](#yahoo_auction_v1_yahoo_auction-proto)
    - [AuctionInformation](#yahoo_auction-v1-AuctionInformation)
    - [GetAuctionRequest](#yahoo_auction-v1-GetAuctionRequest)
    - [GetAuctionResponse](#yahoo_auction-v1-GetAuctionResponse)
    - [GetCategoryItemsRequest](#yahoo_auction-v1-GetCategoryItemsRequest)
    - [GetCategoryItemsResponse](#yahoo_auction-v1-GetCategoryItemsResponse)
    - [GetCategoryItemsResponse.Item](#yahoo_auction-v1-GetCategoryItemsResponse-Item)
  
    - [AuctionStatus](#yahoo_auction-v1-AuctionStatus)
  
    - [YahooAuctionService](#yahoo_auction-v1-YahooAuctionService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="eheya_v1_eheya_service-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## eheya/v1/eheya_service.proto



<a name="eheya-v1-Property"></a>

### Property
物件


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | 物件ID |
| name | [string](#string) |  | 物件名 |
| building_age | [int32](#int32) |  | 築年数 |
| total_floors | [int32](#int32) |  | n階建て |
| nearest_station | [string](#string) |  | 最寄り駅 |
| address | [string](#string) |  | 住所 |
| floor | [int32](#int32) |  | 階層 |
| rent | [string](#string) |  | 家賃 |
| management_fee | [string](#string) |  | 管理費 |
| deposit | [string](#string) |  | 敷金 |
| key_money | [string](#string) |  | 礼金 |
| house_plan | [HousePlan](#eheya-v1-HousePlan) |  | 間取り |
| exclusive_area | [string](#string) |  | 専有面積 |
| updated_at | [string](#string) |  | 最終更新日時 |






<a name="eheya-v1-SearchRequest"></a>

### SearchRequest
Request message for Search


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| category_slug | [string](#string) |  | Path parameters (required)

e.g., &#34;dk-select&#34; |
| prefecture_slug | [string](#string) |  | e.g., &#34;osaka&#34; |
| city_id | [string](#string) |  | e.g., &#34;27115&#34; |
| house_plan | [HousePlan](#eheya-v1-HousePlan) | repeated | Query parameters |
| dk_select | [bool](#bool) |  |  |
| sort_type | [SortType](#eheya-v1-SortType) |  |  |
| sort_direct | [SortDirection](#eheya-v1-SortDirection) |  |  |
| price_min | [string](#string) |  | Detail filters (detail.*)

e.g., &#34;YEN_60000&#34; |
| price_max | [string](#string) |  | e.g., &#34;YEN_80000&#34; |
| include_manage_cost | [bool](#bool) |  |  |
| is_deposit_zero | [bool](#bool) |  |  |
| is_key_money_zero | [bool](#bool) |  |  |
| use_part_area_min | [string](#string) |  | e.g., &#34;SQUARE_METERS_30&#34; |
| use_part_area_max | [string](#string) |  | e.g., &#34;SQUARE_METERS_50&#34; |
| walk_from_station_minutes | [string](#string) |  | e.g., &#34;LESS_10_MINUTES&#34; |
| include_bus_minutes | [bool](#bool) |  |  |
| age | [string](#string) |  | e.g., &#34;LESS_10&#34;, &#34;NEW_BUILD&#34; |
| is_separated_bath_and_toilet | [bool](#bool) |  | Boolean flags (Preferences) |
| is_over_second_floor | [bool](#bool) |  |  |
| has_parking | [bool](#bool) |  |  |
| has_air_conditioner | [bool](#bool) |  |  |
| has_washing_machine_place | [bool](#bool) |  |  |
| is_free_wash_room | [bool](#bool) |  |  |
| is_pet_negotiable | [bool](#bool) |  |  |
| is_pet_friendly | [bool](#bool) |  |  |
| has_autolock | [bool](#bool) |  |  |
| has_over_double_cooking_stove | [bool](#bool) |  |  |
| has_monitor_autolock | [bool](#bool) |  |  |
| has_warm_water_washing_toilet_seat | [bool](#bool) |  |  |
| is_city_gas | [bool](#bool) |  |  |
| is_dk_select | [bool](#bool) |  | Duplicate of dk_select? Kept for completeness with detail.* |






<a name="eheya-v1-SearchResponse"></a>

### SearchResponse
Response message for Search (Placeholder)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| properties | [Property](#eheya-v1-Property) | repeated | 物件リスト |





 


<a name="eheya-v1-HousePlan"></a>

### HousePlan
HousePlan enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| HOUSE_PLAN_UNSPECIFIED | 0 |  |
| HOUSE_PLAN_ONE_R | 1 | 1R |
| HOUSE_PLAN_ONE_K | 2 | 1K |
| HOUSE_PLAN_ONE_DK | 3 | 1DK |
| HOUSE_PLAN_ONE_LDK | 4 | 1LDK |
| HOUSE_PLAN_TWO_K | 5 | 2K |
| HOUSE_PLAN_TWO_DK | 6 | 2DK |
| HOUSE_PLAN_TWO_LDK | 7 | 2LDK |
| HOUSE_PLAN_THREE_K | 8 | 3K |
| HOUSE_PLAN_THREE_DK | 9 | 3DK |
| HOUSE_PLAN_THREE_LDK | 10 | 3LDK |
| HOUSE_PLAN_FOUR_K | 11 | 4K |
| HOUSE_PLAN_FOUR_DK | 12 | 4DK |
| HOUSE_PLAN_FOUR_LDK | 13 | 4LDK |



<a name="eheya-v1-SortDirection"></a>

### SortDirection
SortDirection enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| SORT_DIRECTION_UNSPECIFIED | 0 |  |
| SORT_DIRECTION_ASC | 1 |  |
| SORT_DIRECTION_DESC | 2 |  |



<a name="eheya-v1-SortType"></a>

### SortType
SortType enum

| Name | Number | Description |
| ---- | ------ | ----------- |
| SORT_TYPE_UNSPECIFIED | 0 |  |
| SORT_TYPE_RECOMMENDED_OF_VACANCY | 1 | Add others if found |


 

 


<a name="eheya-v1-EheyaService"></a>

### EheyaService
EheyaService provides search functionality for eheya.net

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Search | [SearchRequest](#eheya-v1-SearchRequest) | [SearchResponse](#eheya-v1-SearchResponse) | Search properties based on various conditions |

 



<a name="hello_v1_hello-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## hello/v1/hello.proto



<a name="hello-v1-GetUserRequest"></a>

### GetUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="hello-v1-GetUserResponse"></a>

### GetUserResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |






<a name="hello-v1-HelloRequest"></a>

### HelloRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |






<a name="hello-v1-HelloResponse"></a>

### HelloResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  |  |






<a name="hello-v1-SayHelloRequest"></a>

### SayHelloRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |






<a name="hello-v1-SayHelloResponse"></a>

### SayHelloResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  |  |





 

 

 


<a name="hello-v1-UserService"></a>

### UserService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetUser | [GetUserRequest](#hello-v1-GetUserRequest) | [GetUserResponse](#hello-v1-GetUserResponse) |  |
| SayHello | [SayHelloRequest](#hello-v1-SayHelloRequest) | [SayHelloResponse](#hello-v1-SayHelloResponse) |  |

 



<a name="yahoo_auction_v1_yahoo_auction-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## yahoo_auction/v1/yahoo_auction.proto



<a name="yahoo_auction-v1-AuctionInformation"></a>

### AuctionInformation



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| auction_id | [string](#string) |  | AuctionID はヤフオクのオークションIDです。 |
| start_price | [int64](#int64) |  | start_price は始値（単位は通常「円」）。 |
| start_time | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | start_time は開始時間です。 |
| end_time | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | end_time は終了時間です。 |
| early_end | [bool](#bool) |  | 早期終了 |
| auto_extension | [bool](#bool) |  | 自動延長 |
| returnable | [bool](#bool) |  | 返品の可否 |
| returnable_detail | [string](#string) |  | 返品の可否(詳細) |






<a name="yahoo_auction-v1-GetAuctionRequest"></a>

### GetAuctionRequest
GetAuctionRequest はヤフオクのオークションIDを指定するリクエストです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| auction_id | [string](#string) |  | auction_id はヤフオクのオークションIDです。 8桁から11桁の英数字です。 |






<a name="yahoo_auction-v1-GetAuctionResponse"></a>

### GetAuctionResponse
GetAuctionResponse はヤフオクのオークション情報を返すレスポンスです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| auction_id | [string](#string) |  | auction_id はヤフオクで一意に識別されるオークションIDです。 |
| title | [string](#string) |  | title は商品のタイトル（商品名）です。 |
| current_price | [int64](#int64) |  | current_price は現在価格（単位は通常「円」）。 サーバ側では整数の金額（例: 1000 = 1000円）として扱います。 |
| status | [AuctionStatus](#yahoo_auction-v1-AuctionStatus) |  | status はオークションの状態です。 |
| images | [string](#string) | repeated | images は商品の画像URLのリストです。 |
| auction_information | [AuctionInformation](#yahoo_auction-v1-AuctionInformation) |  | auction_information はオークション情報です。 |
| description | [string](#string) |  | description は商品の説明です。 |






<a name="yahoo_auction-v1-GetCategoryItemsRequest"></a>

### GetCategoryItemsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| category_id | [string](#string) |  | category_id はヤフオクのカテゴリIDです。 |
| page | [int64](#int64) |  | page はページ番号です。 |






<a name="yahoo_auction-v1-GetCategoryItemsResponse"></a>

### GetCategoryItemsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [GetCategoryItemsResponse.Item](#yahoo_auction-v1-GetCategoryItemsResponse-Item) | repeated | items は商品のリストです。 |
| total_count | [int64](#int64) |  | total_count は商品の総数です。 |






<a name="yahoo_auction-v1-GetCategoryItemsResponse-Item"></a>

### GetCategoryItemsResponse.Item



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| auction_id | [string](#string) |  | auction_id はヤフオクのオークションIDです。 |
| title | [string](#string) |  | title は商品のタイトル（商品名）です。 |
| current_price | [int64](#int64) |  | current_price は現在価格（単位は通常「円」）。 サーバ側では整数の金額（例: 1000 = 1000円）として扱います。 |
| immediate_price | [int64](#int64) |  | 即決価格 |
| image | [string](#string) |  | image は商品のサムネイル画像URLです。 |
| bid_count | [int64](#int64) |  | 入札数 |





 


<a name="yahoo_auction-v1-AuctionStatus"></a>

### AuctionStatus
AuctionStatus はオークションの状態を表します。

| Name | Number | Description |
| ---- | ------ | ----------- |
| AUCTION_STATUS_UNSPECIFIED | 0 | 状態未指定。クライアントは通常この値を送信しません。 |
| AUCTION_STATUS_ACTIVE | 1 | 出品中（入札可能な状態）。 |
| AUCTION_STATUS_FINISHED | 2 | 終了済み（落札または時間切れ）。 |
| AUCTION_STATUS_CANCELED | 3 | 出品者都合などでキャンセルされた状態。 |


 

 


<a name="yahoo_auction-v1-YahooAuctionService"></a>

### YahooAuctionService
AuctionService はヤフオクのオークション情報を取得するサービスです。

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetAuction | [GetAuctionRequest](#yahoo_auction-v1-GetAuctionRequest) | [GetAuctionResponse](#yahoo_auction-v1-GetAuctionResponse) | GetAuction はヤフオクのオークションIDから商品情報を取得します。 |
| GetCategoryItems | [GetCategoryItemsRequest](#yahoo_auction-v1-GetCategoryItemsRequest) | [GetCategoryItemsResponse](#yahoo_auction-v1-GetCategoryItemsResponse) | GetCategoryItems はヤフオクのカテゴリIDから商品情報を取得します。 |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

