#include <catch.hpp>
#include <trompeloeil.hpp>

#include <iostream>

#include <QSignalSpy>

#include "_1.h"

extern template struct trompeloeil::reporter<trompeloeil::specialized>;


TEST_CASE("Application Tests", "[app]")
{

    SECTION("Hello World") {
        REQUIRE(true);
    }
}

TEST_CASE("_1 Tests", "[add]")
{
    SECTION("_1::add") {
        _1 obj;
        REQUIRE(obj.add() == 0);
    }
}
