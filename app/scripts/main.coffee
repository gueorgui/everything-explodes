$ ->
    animate = ->
        requestAnimFrame(animate)
        goat.rotation += 0.1
        renderer.render(stage)

    stage = new PIXI.Stage(0x66FF99)
    renderer = PIXI.autoDetectRenderer(800,600)
    document.getElementById('game').appendChild(renderer.view)
    requestAnimFrame(animate)

    goat = new PIXI.Sprite(PIXI.Texture.fromImage('images/goat.png'))

    goat.anchor.x = 0.5
    goat.anchor.y = 0.5

    goat.position.x = 400
    goat.position.y = 300

    stage.addChild(goat)
