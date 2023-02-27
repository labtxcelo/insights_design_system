<p align="center">
  <img width="460" height="180" src="https://d335luupugsy2.cloudfront.net/cms/files/399452/1675947819/$w8m9fvevti">
</p>

# Insights Design System
This project was created to present Framework Insights hosted by Framework Digital. 

## Projects
- 📁 design_system
  > Library focused on distributing custom components.
- 📁 story_book
  > Application aimed at displaying the components developed in the design_system library. 
#

## Developed Components
### `InsightsMainButton`

<img width="250" alt="Insight Main Button" src="https://user-images.githubusercontent.com/67444542/221632955-52cd9165-1286-4ab1-a887-f9688b64c49f.png">

***Implementation***
```dart
InsightsMainButton(
  buttonText: 'Insights',
  onTap: (){},
  insightsMainButtonStyle: InsightsMainButtonStyle(...),
);
```
```dart
InsightsMainButtonStyle(
  backgroundColor: InsightsColors.primary,
  disabledColor: InsightsColors.disabled,
  borderColor: InsightsColors.transparent,
  textColor: InsightsColors.contrast,
  splashColor: InsightsColors.disabled,
  height: 50,
  width: 200,
  radius: 0,
  borderWidth: 0,
  splashOpacity: 0.5,
  textStyle: InsightsTextStyles.kBodyStrong,
  margin: EdgeInsets.zero,
  padding: EdgeInsets.zero,
);
```

***Test cases***
- Make sure that the button contain all default properties. ✅
- Make sure that the button contain all default styles. ✅
- Make sure that the button contain specific text. ✅
- Make sure that the button has been tapped. ✅
- Make sure that the able button contain default styles values. ✅
- Make sure that the disabled button contain default styles values. ✅
- Make sure that the able button contain parameters styles values. ✅
- Make sure that the disabled button with parameters styles values. ✅

