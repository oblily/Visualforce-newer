# Visualforce-newer
It is a sample project for visualforce newer.


## Prerequisite

- Created object [Mitsumori] [MitsumoriMeisai] [ShohinMST].
- Created Custom Labels [customerMonth] and Custom Metadata Types [customMataYear].
- Test class is not finished. 

## object [Mitsumori] 

|  API 参照名   | 項目の表示ラベル  | データ型  | 桁数  | 選択リスト値  | 子リレーション名  |
|  ----  | ----  | ----  | ----  | ----  | ----  |
| Account__c  | 顧客 | 参照関係 (取引先) |   |   | MMToAccount |
| MitsumoriYukokikan__c  | 見積有効期間 | 日付 |  |   |   |
| Status__c  | ステータス | 選択リスト |  | 作成中;申請中;申請取消;承認済;承認取消;作成済;送付済;受注済;失注;納品済;請求済;入金済;滞納中;破棄  |   |
| MitusmoriNenGetsu__c  | 見積年月 | テキスト | 10 |   |   |

## object [MitsumoriMeisai] 

|  API 参照名   | 項目の表示ラベル  | データ型  | 桁数  | 選択リスト値  | 子リレーション名  | 数式 |
|  ----  | ----  | ----  | ----  | ----  | ----  | ----  |
| Mitsumori__c  | 見積 | 主従関係 (見積) |   |   | MSToMitsumori |   |
| Suryo__c  | 数量 | 数値 (18, 0) | 18 |   |   |   |
| Tanka__c  | 単価 | 通貨 |  |   |   |   |
| Kingaku__c  | 金額 | 通貨 |  |   |   |   |
| Shohin__c  | 商品 | 参照関係 (商品マスタ) |  |   | MMMSToShohin  |   |
| ShohinMei__c  | 商品名 | テキスト | 255 |   |   |   |
| Kingaku2__c  | 金額（数式） | 数式 (通貨) |  |   |   | Suryo__c  *  Tanka__c  |

## object [ShohinMST] 

|  API 参照名   | 項目の表示ラベル  | データ型  | 桁数  | 選択リスト値  | 外部ID  |
|  ----  | ----  | ----  | ----  | ----  | ----  |
| ShohinGenka__c  | 商品原価 | 通貨 |   |   |  |
| Tani__c  | 単位 | 選択リスト |  |  個;本;台;枚;ケース |   |
| ShohinCode__c  | 商品コード | テキスト | 255 |   |  外部ID |


## page [MitsumoriSearch] 

- 見積検索画面.

## page [MitsumoriCreateAndDetail] 

- 見積詳細画面.


## Contribute

Contributions are always welcome!







