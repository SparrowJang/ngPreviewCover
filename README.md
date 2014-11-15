ngPreviewCover
===================================

![demo image](/images/previewCover.gif)

This is a preview cover like fb personal cover.

## Install

```bash
bower install ng-preview-cover
```

## Install node modules

```bash
npm install
```

## Support

* IE10
* chrome
* firefox

## Usage

```html
<div ng-preview-cover
     drag-text="drag photo"
     update-button-text="update cover photo"
     image="image"
     on-load="onLoad()"
     on-cancel="onCancel()"
     cover-loading="coverLoading" 
     on-enter="onEnter()"></div>
```

## Attribute

#### image
> Cover image

#### update-button-text
> A updating button text

#### drag-text
> A dragging message

#### coverLoading
> open or close a loading block

## Event

####onEnter

####onLoad(base64:String)

####onCancel

## Provider

####on(name,func)
> Set a common action by event

```js
app.config(function(previewCoverProvider ){ 

  previewCoverProvider.on('load', function( evt ){
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

