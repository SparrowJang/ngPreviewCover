ngPreviewCover
===================================

![demo image](/images/previewCover.gif)

This is a preview cover like fb personal cover.

## Install

```bash
bower install ng-preview-cover
```
or

```bash
npm install ng-preview-cover
```

## Install node modules

```bash
npm install
```

## Dependency

* angularjs

## Support

* IE10
* chrome
* firefox

## Usage

Set some attributes

```html
<div ng-preview-cover
     drag-text="drag photo"
     update-button-text="update cover photo"
     image="image"
     on-load="onLoad(base64)"
     on-cancel="onCancel()"
     cover-loading="coverLoading" 
     on-enter="onEnter()"></div>
```

Listen some events
```js
app.controller('previewCoverCtrl',function( $scope ){

  angular.extend( $scope,{
    onLoad:function( base64 ){
      //base64 == $scope.image
      //do something...
    },
    onCancel:function(){
      //do something...
    },
    onEnter:function(){
      //do something...
    }
  });
});
```

## Attribute

#### image(optional)
> Cover image

#### update-button-text
> A updating button text

#### drag-text
> A dragging message

#### coverLoading(optional)
> open or close a loading block

## Event

#### onEnter

#### onLoad(base64:String)

#### onCancel

## Service

#### on(name,func)
> Set a common action by event

```js
app.run(function( previewCover ){

  previewCover.on('load', function( evt ){
    //do something...
  });
});
```


## DEMO

```bash
gulp server
```

## Build

```bash
gulp
```

