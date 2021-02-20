

const SpyDrone = require("SRASASecretDrone")

describe("Checking the spy drone controler works well when", function () {

    beforeAll(function () {
        this.sDrone = SpyDrone.buildOne("XJR88_pckp")
    })

    it("is waiting for a mission", function () {
        this.sDrone.waitMission()
        expect(this.sDrone).toBeDefined()
        expect(this.sDrone.getLandingGearStatus()).toBeTrue()
        expect(this.sDrone.getEnginesStatus()).toBe(0)
        expect(this.sDrone.getCameraData()).toEqual({ "status": "Off", "optics": false })
    })

    // test cases to complete
    it("can take off", function () {
        this.sDrone.takeOff()
        expect(this.sDrone).toBeDefined()
        expect(this.sDrone.getLandingGearStatus()).toBeTrue()
        expect(this.sDrone.getEnginesStatus()).toBe(2)
        expect(this.sDrone.getCameraData()).toEqual({ "status": "Off", "optics": false })
    })

    it("can fly", function () {
        this.sDrone.onFlight()
        expect(this.sDrone).toBeDefined()
        expect(this.sDrone.getLandingGearStatus()).toBeFalse()
        expect(this.sDrone.getEnginesStatus()).toBe(1)
        expect(this.sDrone.getCameraData()).toEqual({ "status": "On", "optics": true })
    })

    it("can record", function () {
        this.sDrone.recordVideoOn()
        expect(this.sDrone.getCameraData()).toEqual({ "status": "Recording", "optics": true })
    })

    it("can land", function () {
        this.sDrone.landing()
        expect(this.sDrone).toBeDefined()
        expect(this.sDrone.getLandingGearStatus()).toBeTrue()
        expect(this.sDrone.getEnginesStatus()).toBe(-1)
        expect(this.sDrone.getCameraData()).toEqual({ "status": "Off", "optics": false })
    })
})