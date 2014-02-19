$ ->
    $(window).on('resize', (event) ->
        windowDimensions =
            width: $(window).innerWidth()
            height: $(window).innerHeight()
        renderer.resize(windowDimensions.width, windowDimensions.height)
        goat.position.x = windowDimensions.width / 2
        goat.position.y = windowDimensions.height / 2
    )
    animate = ->
        requestAnimFrame(animate)
        goat.rotation += 0.01
        renderer.render(stage)

    windowDimensions =
        width: $(window).innerWidth()
        height: $(window).innerHeight()
    stage = new PIXI.Stage(0x66FF99)
    renderer = PIXI.autoDetectRenderer(windowDimensions.width, windowDimensions.height)
    document.getElementById('game').appendChild(renderer.view)
    requestAnimFrame(animate)

    goat = new PIXI.Sprite(PIXI.Texture.fromImage('images/goat.png'))

    goat.anchor.x = 0.5
    goat.anchor.y = 0.5

    goat.position.x = windowDimensions.width / 2
    goat.position.y = windowDimensions.height / 2

    stage.addChild(goat)
