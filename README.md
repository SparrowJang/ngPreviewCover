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
     title-text="update cover photo"
     image="image"
     on-loaded="onLoaded()"
     on-canceled="onCanceled()"
     cover-loading="coverLoading" 
     on-enter="onEnter()"></div>
```

## Attribute

#### image

#### title-text

#### drag-text

## Event

####onEnter

####onLoaded(base64:String)

####onCanceled


## DEMO

```bash
gulp server
```

## Build

```bash
gulp
```

