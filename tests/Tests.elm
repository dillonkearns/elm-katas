module Tests exposing (..)

import TennisTests
import Test exposing (Test, describe)


all : Test
all =
    describe "" [ TennisTests.all ]
