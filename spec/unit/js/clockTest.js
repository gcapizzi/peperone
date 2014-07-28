var expect = require('chai').expect;
var sinon = require('sinon');
var jsdom = require('jsdom').jsdom;
var doc = jsdom('');
global.window = doc.createWindow();
global.window = window;
global.$ = require('jquery');

clock = require('../../../public/js/clock.js');

describe('Clock', function() {

    describe('#startClock()', function() {
        beforeEach(function() {
            this.systemClock = sinon.useFakeTimers();
        })

        afterEach(function() {
            this.systemClock.restore();
        })

        it('should update clock span', function() {
            $('body').html('<span class="clock"></span>')

            clock.startClock(25);
            this.systemClock.tick(1000);

            expect($('.clock').html()).to.equal('24:59')
        })
    })
})

