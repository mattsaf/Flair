# Flair
# by Matt Safian
#
# Helpful animation functions for Framer.js

# Define Defaults
defaultCurve = "ease"
defaultDelay = 0

exports.setDefaults = ({curve, delay} = {}) ->
	defaultCurve = curve ?= defaultCurve
	defaultDelay = delay ?= defaultDelay

exports.fade = (layer, opacityValue, time, {curve, delay} = {}) ->
	layer.animate
		properties:
			opacity: opacityValue
		time: time
		curve: curve ?= defaultCurve
		delay: delay ?= defaultDelay


exports.fadeThenHide = (layer, opacityValue, time, {curve, delay} = {}) ->
	layer.animate
		properties:
			opacity: opacityValue
		time: time
		curve: curve ?= defaultCurve
		delay: delay ?= defaultDelay
	layer.onAnimationEnd ->
		layer.visible = false

exports.fadeThenDestroy = (layer, opacityValue, time, {curve, delay} = {}) ->
	layer.animate
		properties:
			opacity: opacityValue
		time: time
		curve: curve ?= defaultCurve
		delay: delay ?= defaultDelay
	layer.onAnimationEnd ->
		layer.destroy()

exports.moveX = (layer, xValue, time, {curve, delay} = {}) ->
	layer.animate
		properties:
			x: layer.x + xValue
		time: time
		curve: curve ?= defaultCurve
		delay: delay ?= defaultDelay

exports.moveXDirect = (layer, xValue, time, {curve, delay} = {}) ->
	layer.animate
		properties:
			x: xValue
		time: time
		curve: curve ?= defaultCurve
		delay: delay ?= defaultDelay

exports.moveY = (layer, yValue, time, {curve, delay} = {}) ->
	layer.animate
		properties:
			y: layer.y + yValue
		time: time
		curve: curve ?= defaultCurve
		delay: delay ?= defaultDelay

exports.moveYDirect = (layer, yValue, time, {curve, delay} = {}) ->
	layer.animate
		properties:
			y: yValue
		time: time
		curve: curve ?= defaultCurve
		delay: delay ?= defaultDelay

exports.hideInstant = (layer) ->
	layer.visible = false

exports.showInstant = (layer) ->
	layer.visible = true

exports.scale = (layer, scaleAmount, time, {curve, delay} = {}) ->
	layer.animate
		properties:
			scale: scaleAmount
		time: time
		curve: curve ?= defaultCurve
		delay: delay ?= defaultDelay
