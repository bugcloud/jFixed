# jFixed - jQuery Plugin

AndroidのWebViewで"position:fixed;"が使えないそうなので、カッとなってjQueryプラグインにしました。

## How to use
HTMLでscriptを読み込みます
```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script src="js/jquery.jfixed.js"></script>
```

headerタグを上付きで固定したいとき
```javascript
$(function() {
  $("header").jFixed()
});
```
というコードを記述すると、スクロール中はheaderタグが消え、スクロールが停止すると画面最上部にheaderタグが表示されます。

footerタグを下付きで固定したいとき
```javascript
$(function() {
  position: "bottom"
});
```
というコードを記述します。オプションに"position:bottom"を指定すると、対象が画面最下部に表示されます。

## Options

*position*

**top**
または
**bottom**
を文字列で指定します。
**top**
がデフォルトです。
　
　

*animationSpeed*

一旦消えた上付き、下付きの部分を再表示する際のスピードを数値で指定します。

## Sample
http://bugcloud.github.com/jFixed/

## License
MIT
