module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Lib

main :: IO ()
main = do
  defaultMain (testGroup "Some libarary tests" [sayHelloTest])

sayHelloTest :: TestTree
sayHelloTest = testCase "Testing hello"
  (assertEqual "Should say Hello world" "Hello world" (hello "world"))

