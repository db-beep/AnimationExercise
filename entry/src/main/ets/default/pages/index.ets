// @ts-nocheck
import router from '@system.router';
@Entry
@Component
struct Index {
  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
      Item({text:'A页面',uri:'pages/a_page'})
      Item({text:'B页面',uri:'pages/b_page'})
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFECECEC')
  }
}

@Component
struct Item {
 // 文本信息
  private text:String
 // 页面跳转uri
  private uri:String
  build() {
    Stack() {
      Image($rawfile('image3.png'))
        .objectFit(ImageFit.Cover)
        .width('100%')
        .height(100)
        .borderRadius(15)

      Text(this.text)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Black)
    }
    .onClick(() =>{
      router.push({uri:this.uri})
    })
    .height(100)
    .borderRadius(15)
    .width('80%')
    .margin({bottom:20})
  }
}