-- https://www.w3.org/TR/css-sizing-3/

module Test.BoxSizingSpec where

import Prelude

import PSCSS (auto, fitContent, inherit, initial, maxContent, minContent, pct, px, unset, (@+@))
import Test.Spec (Spec, describe)
import Test.Util (renders)

spec :: Spec Unit
spec = describe "Box Sizing Module" do
  describe "width property" do
    { width: inherit } `renders` "width:inherit"
    { width: initial } `renders` "width:initial"
    { width: unset } `renders` "width:unset"
    { width: auto } `renders` "width:auto"
    { width: px 100 } `renders` "width:100px"
    { width: pct 50 } `renders` "width:50%"
    { width: px 100 @+@ pct 50 } `renders` "width:calc(100px + 50%)"
    { width: minContent } `renders` "width:min-content"
    { width: maxContent } `renders` "width:max-content"
    { width: fitContent (px 100) } `renders` "width:fit-content(100px)"
    { width: fitContent (pct 50) } `renders` "width:fit-content(50%)"
    { width: fitContent (px 100 @+@ pct 50) }
      `renders`
      "width:fit-content(calc(100px + 50%))"
  describe "height property" do
    { height: inherit } `renders` "height:inherit"
    { height: initial } `renders` "height:initial"
    { height: unset } `renders` "height:unset"
    { height: auto } `renders` "height:auto"
    { height: px 100 } `renders` "height:100px"
    { height: pct 50 } `renders` "height:50%"
    { height: px 100 @+@ pct 50 } `renders` "height:calc(100px + 50%)"
    { height: minContent } `renders` "height:min-content"
    { height: maxContent } `renders` "height:max-content"
    { height: fitContent (px 100) } `renders` "height:fit-content(100px)"
    { height: fitContent (pct 50) } `renders` "height:fit-content(50%)"
    { height: fitContent (px 100 @+@ pct 50) }
      `renders`
      "height:fit-content(calc(100px + 50%))"
  describe "min-width property" do
    { minWidth: inherit } `renders` "min-width:inherit"
    { minWidth: initial } `renders` "min-width:initial"
    { minWidth: unset } `renders` "min-width:unset"
    { minWidth: auto } `renders` "min-width:auto"
    { minWidth: px 100 } `renders` "min-width:100px"
    { minWidth: pct 50 } `renders` "min-width:50%"
    { minWidth: px 100 @+@ pct 50 } `renders` "min-width:calc(100px + 50%)"
    { minWidth: minContent } `renders` "min-width:min-content"
    { minWidth: maxContent } `renders` "min-width:max-content"
    { minWidth: fitContent (px 100) } `renders` "min-width:fit-content(100px)"
    { minWidth: fitContent (pct 50) } `renders` "min-width:fit-content(50%)"
    { minWidth: fitContent (px 100 @+@ pct 50) }
      `renders`
      "min-width:fit-content(calc(100px + 50%))"
  describe "min-height property" do
    { minHeight: inherit } `renders` "min-height:inherit"
    { minHeight: initial } `renders` "min-height:initial"
    { minHeight: unset } `renders` "min-height:unset"
    { minHeight: auto } `renders` "min-height:auto"
    { minHeight: px 100 } `renders` "min-height:100px"
    { minHeight: pct 50 } `renders` "min-height:50%"
    { minHeight: px 100 @+@ pct 50 } `renders` "min-height:calc(100px + 50%)"
    { minHeight: minContent } `renders` "min-height:min-content"
    { minHeight: maxContent } `renders` "min-height:max-content"
    { minHeight: fitContent (px 100) } `renders` "min-height:fit-content(100px)"
    { minHeight: fitContent (pct 50) } `renders` "min-height:fit-content(50%)"
    { minHeight: fitContent (px 100 @+@ pct 50) }
      `renders`
      "min-height:fit-content(calc(100px + 50%))"
