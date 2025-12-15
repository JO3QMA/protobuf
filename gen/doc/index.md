# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [hello/v1/hello.proto](#hello_v1_hello-proto)
    - [GetUserRequest](#hello-v1-GetUserRequest)
    - [GetUserResponse](#hello-v1-GetUserResponse)
    - [HelloRequest](#hello-v1-HelloRequest)
    - [HelloResponse](#hello-v1-HelloResponse)
    - [SayHelloRequest](#hello-v1-SayHelloRequest)
    - [SayHelloResponse](#hello-v1-SayHelloResponse)
  
    - [UserService](#hello-v1-UserService)
  
- [yahoo_auction/v1/yahoo_auction.proto](#yahoo_auction_v1_yahoo_auction-proto)
    - [GetAuctionRequest](#yahoo_auction-v1-GetAuctionRequest)
    - [GetAuctionResponse](#yahoo_auction-v1-GetAuctionResponse)
  
    - [AuctionStatus](#yahoo_auction-v1-AuctionStatus)
  
    - [YahooAuctionService](#yahoo_auction-v1-YahooAuctionService)
  
- [Scalar Value Types](#scalar-value-types)



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



<a name="yahoo_auction-v1-GetAuctionRequest"></a>

### GetAuctionRequest
GetAuctionRequest はヤフオクのオークションURLを指定するリクエストです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| url | [string](#string) |  | url はヤフオクのオークション商品ページのURLです。 |






<a name="yahoo_auction-v1-GetAuctionResponse"></a>

### GetAuctionResponse
GetAuctionResponse はヤフオクのオークション情報を返すレスポンスです。


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| auction_id | [string](#string) |  | auction_id はヤフオクで一意に識別されるオークションIDです。 |
| title | [string](#string) |  | title は商品のタイトル（商品名）です。 |
| current_price | [int64](#int64) |  | current_price は現在価格（単位は通常「円」）。 サーバ側では整数の金額（例: 1000 = 1000円）として扱います。 |
| shipping_fee | [int64](#int64) |  | shipping_fee は送料（単位は通常「円」）。 送料が不明な場合は 0 などの扱いをサーバ仕様で決めてください。 |
| status | [AuctionStatus](#yahoo_auction-v1-AuctionStatus) |  | status はオークションの状態です。 |





 


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
| GetAuction | [GetAuctionRequest](#yahoo_auction-v1-GetAuctionRequest) | [GetAuctionResponse](#yahoo_auction-v1-GetAuctionResponse) | GetAuction はヤフオクのオークションURLから商品情報を取得します。 |

 



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

