module Tests exposing (..)

import CartTests
import Test exposing (Test, describe)


all : Test
all =
    describe "" [ CartTests.all ]
