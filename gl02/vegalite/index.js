const vega = require("vega")
const fs = require("fs")

const input = fs.readFileSync("visu_maxime_huyghe.json")

const spec = JSON.parse(input)

const view = new vega.View(vega.parse(spec), { renderer: 'none' })

async function main() {
    const canvas = await view.toCanvas()
    const stream = canvas.createPNGStream()
    fs.writeFileSync("visu_maxime_huyghe.png", stream)
}

main()
