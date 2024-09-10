// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() public {
        // Deploy the SimpleStorage contract before each test
        simpleStorage = new SimpleStorage();
    }

    function testStore() public {
        // Test the store function
        uint256 favoriteNumber = 42;
        simpleStorage.store(favoriteNumber);
        assertEq(simpleStorage.retrieve(), favoriteNumber);
    }

    function testAddPerson() public {
        // Test the addPerson function
        string memory name = "Alice";
        uint256 favoriteNumber = 7;
        simpleStorage.addPerson(name, favoriteNumber);
        assertEq(simpleStorage.nameToFavoriteNumber(name), favoriteNumber);
    }
}
