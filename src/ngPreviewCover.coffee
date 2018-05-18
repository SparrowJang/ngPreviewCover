
do ->

  ajaxLoadingImage = "data:image/png;base64,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"

  cancelImage = "data:image/png;base64,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"
  checkedImage = "data:image/png;base64,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"

  cameraImage = "data:image/png;base64,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"

  app = angular.module 'ngPreviewCover', []

  app.factory 'spImageUtils', ['$q', ( $q )->

    getCanvasDataURL = (canvas)->
      
      deferred = $q.defer()

      if angular.isFunction canvas.toBlob
        canvas.toBlob (blob)->
          fileReader = new FileReader()
          fileReader.onload = ( event )=>
            deferred.resolve event.target.result
          fileReader.readAsDataURL blob
      else
        deferred.resolve canvas.toDataURL()

      deferred.promise

    createCanvas:( w, h )->
      canvas = document.createElement 'canvas'
      canvas.width = w
      canvas.height = h
      canvas

    getMinScale:( width, height, resizeW, resizeH )->
      scaleW = resizeW / width
      scaleH = resizeH / height
      if scaleW < scaleH then scaleW else scaleH

    cut:( image, fromYRate, heightRate, resizeWidth, resizeHeight )->
      isIos = /(ipad)|(iphone)/i.test navigator.userAgent
      iosMaxSize = 1924
      currentImageHeight = image.height
      deferred = $q.defer()
      promise = @loadImageSize image
      promise.then ( size )=>
        if isIos and (iosMaxSize < size.width or iosMaxSize < size.height)
          scale = @getMinScale size.width, size.height, iosMaxSize, iosMaxSize
          bufferCanvas = @createCanvas size.width * scale, size.height * scale
          bufferCtx = bufferCanvas.getContext "2d"
          bufferCtx.drawImage image, 0, 0, size.width * scale, size.height * scale
          image = bufferCanvas
          size.width = bufferCanvas.width
          size.height = bufferCanvas.height
          
        canvas = @createCanvas size.width - ( if isIos then 1 else 0 ), (resizeHeight / currentImageHeight) * size.height
        ctx = canvas.getContext "2d"
        ctx.drawImage image, 0, 0, size.width, size.height , 0, parseInt(-fromYRate * size.height), canvas.width , size.height
        getCanvasDataURL(canvas).then(deferred.resolve)
      deferred.promise

    loadImageSize:( img )->
      deferred = $q.defer()
      hiddenElem = document.createElement 'div'
      hiddenElem.style.cssText = "width:0px;height:0px;overflow:hidden;opacity:0;"
      hiddenImage = new Image
      hiddenImage.onload = ->
        deferred.resolve {width:hiddenImage.width, height:hiddenImage.height}
        hiddenElem.remove()
      hiddenElem.appendChild hiddenImage
      document.body.appendChild hiddenElem
      hiddenImage.src = img.src
      deferred.promise

  ]
  
  app.provider 'previewCover', ->
    event = {}
    provider =
      emit:->
        args = []
        args.push arg for arg in arguments
        eventQueue = event[args.shift()] or []
        for listener in eventQueue
          listener.apply event, args
      on:( name, func )->
        if !event[name] then event[name] = []
        event[name].push func


    @$get = -> provider
    undefined

  app.directive 'ngPreviewCover', ['spImageUtils', 'previewCover', '$timeout', ( imageUtils, previewCover, $timeout )->

    scope:
      titleText:"@"
      updateButtonText:"@"
      dragText:"@"
      image:"=?"
      coverLoading:"=?"
      onLoad:"&"
      onCancel:"&"
      onEnter:"&"
      mode:'='

    template:"""
      <div class="ng-preview-cover-container">
        <div class="loading-mask-block" ng-show="coverLoading">
          <img src="#{ajaxLoadingImage}" alt="">
        </div>
        <div class="upload-block" ng-show="mode != 'disabled'">
          <img src="#{cameraImage}" class="camera-image"/>
          <input type="file" class="upload-file" onchange="angular.element(this).data('scope').onFileLoaded(this)" />
	      <span>{{updateButtonText}}</span>
        </div>
        <div class="confirm-menu-box" ng-show="canScroll && canShowMenuBox">
          <img src="#{checkedImage}" alt="" class="icon-button" ng-click="onCut( $event )">
          <img src="#{cancelImage}" alt="" class="icon-button cancel" ng-click="onClickCancel()">
        </div>
        <img ng-src="{{image}}" class="main-image" alt="" ng-mousedown="$event.preventDefault()" ng-style="{visibility:canScroll?'hidden':''}">
        <div class="ng-preview-cover-inner"
             ng-class="{scroll:canScroll}"
             ng-mousedown="onDragstart( $event )"
             ng-mousemove="onDragmove( $event )"
             ng-mouseup="onDragend($event)"
             ng-show="canScroll">
          <img class="photo preview-cover" ng-src="{{cover}}" alt="">
        </div>
        <div class="instruction-wrap" ng-show="canScroll">
          <div class="instruction-text">
            {{dragText}}
          </div>
        </div>

      </div>
    """

    link:( scope, $element, attr )->

      moveData =
        started:false
      previewCoverInnerElem = $element[0].querySelector ".ng-preview-cover-inner"
      previewCoverImage = $element[0].querySelector ".preview-cover"
      
      isSupportTouch = "ontouchstart" of window

      fileElem = $element[0].querySelector(".upload-file")
      $file = angular.element(fileElem)
      $file.data('scope', scope)

      if isSupportTouch
        previewCoverInnerElem.addEventListener 'touchstart', ( event )-> scope.onDragstart event
        previewCoverInnerElem.addEventListener 'touchmove', ( event )-> scope.onDragmove event
        previewCoverInnerElem.addEventListener 'touchend', ( event )-> scope.onDragend event

      getEventOpts = ( opts = {} )-> angular.extend opts, {scope:scope,attr:attr}
      buildEmit = ( name )->
        ->
          args = [name, getEventOpts(type:name)]
          args.push arg for arg in arguments
          previewCover.emit.apply previewCover, args

      angular.extend scope,

        enableScroll:-> scope.canScroll = true
        disableScroll:-> scope.canScroll = false
        canShowMenuBox:true
        showMenuBox:-> @canShowMenuBox = true
        hideMenuBox:-> @canShowMenuBox = false

        moveScrollTop:( y )->
          top = previewCoverInnerElem.scrollTop
          previewCoverInnerElem.scrollTop = top - y

        previewTop:-> previewCoverInnerElem.scrollTop
        previewScrollHeight:-> previewCoverInnerElem.scrollHeight
        previewHeight:-> previewCoverInnerElem.clientHeight
        previewWidth:-> previewCoverInnerElem.clientWidth

        onCut:( $event )->
          @onEnter()
          buildEmit( "enter" )
          height = previewCoverImage.height
          fromYRate = @previewTop() / @previewScrollHeight()
          heightRate = @previewHeight()/@previewScrollHeight()
          promise = imageUtils.cut previewCoverImage, fromYRate, heightRate, @previewWidth(), @previewHeight()
          promise.then ( base64 )=>
            @releaseResource @cover
            @image = base64
            @cover = ""
            @hideMenuBox()
            buildEmit( "load" )( base64 )
            scope.onLoad base64:base64
            $timeout =>
              @disableScroll()
              @showMenuBox()
            , 700

        releaseResource:(url)->
          if URL and URL.revokeObjectURL
            URL.revokeObjectURL url

        onClickCancel:->
          @disableScroll()
          @onCancel()

        onFileLoaded:( elem )->
          _onload = (url)=>
            scope.cover = url
            @enableScroll()
            elem.value = ''
            scope.$apply()

          if URL and URL.createObjectURL
            _onload URL.createObjectURL(elem.files[0])
          else

            fileReader = new FileReader()
            fileReader.onload = ( event )-> _onload event.target.result
              
            if elem.files[0] then fileReader.readAsDataURL elem.files[0]

        getY:( event )-> if event.targetTouches then event.targetTouches[0].clientY else event.clientY

        onDragstart:( $event )->
          $event.preventDefault()
          if @canScroll
            y = @getY $event
            moveData.y = y
            moveData.started = true

        onDragmove:( $event )->
          $event.preventDefault()
          if @canScroll and moveData.started
            y = @getY $event
            @moveScrollTop y - moveData.y
            moveData.y = y

        onDragend:->
          moveData.started = false
          delete moveData.y
            
  ]

  if typeof module != "undefined" then module.exports = "ngPreviewCover";
