# Flutter AdvancedRichText

## Intro

Flutter AdvancedRichText with simple way to create a text lines with variety of text having different textstyles. 

- [Features](#features)
- [Options](#options)
- [Usage](#usage)


## Features

* You can create different text giving styles individually.
* You can create rich text in easiest way.
* You can use same style in the other text without writing any codes for that.

## Options

### For AdvancedRichText:

| Option | Description | Type | Required |
|---|---|---|:---:|
initialText | The text which you want to show at first | String | Yes
initialTextStyle | The textstyle which you want to show at first | TextStyle | No
secondaryTextStyle | The textstyle which you want to show in other text | TextStyle | No
textList | The different text which you want to show | TextSpanList | Yes

### For TextSpanList:

| Option | Description | Type | Required |
|---|---|---|:---:|
text | The text which you want to show along with | String | Yes
initialTextLike | True for having secondaryTextStyle same as initialTextStyle | Bool | No (default false)
textStyle | The textstyle which you want to show in other text | TextStyle | No
onTap | Function you want to be performed after click | Function | No

## Usage

```dart

AdvanceRichText(
            initialText: "Haven't liked this package, yet? ",
            secondaryTextStyle: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w700,
            ),
            textList: [
              TextSpanList(
                text: "Please, do Like.",
              ),
            ],
          ),

```



```dart

AdvanceRichText(
          initialText: "I agree that ",
          secondaryTextStyle: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w700,
          ),
          textList: [
            TextSpanList(
                text: "AdvancedRichText ",
                textStyle: TextStyle(
                    color: Colors.green[600],
                    fontWeight: FontWeight.w700,
                    fontSize: 24)),
            TextSpanList(text: "package ", initialTextLike: true),
            TextSpanList(
                text: "is the easiest way to create ",
                textStyle: TextStyle(
                    color: Colors.blue[500], fontWeight: FontWeight.w500)),
            TextSpanList(
                text: "different styled texts.",
                textStyle: TextStyle(
                    color: Colors.purple[200], fontWeight: FontWeight.w700)),
            TextSpanList(
                text: " Agreed?",
                textStyle:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w900)),
          ],
        ),

```

<img src="/example/image/image.png" alt="flutter" width="200" height="200"/>



---

## Thanks

If something is missing or you want to add some feature, feel free to open a ticket or contribute!

[LICENSE: MIT](LICENSE)
