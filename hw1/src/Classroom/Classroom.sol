// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    bool registered = false;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if(registered == false){
            registered = true;
            return 1000;
        }
        else{
            return 123;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        bool isEnrolled = IClassroomV2(address(msg.sender)).isEnrolled();
        if(!isEnrolled){
            return 1000;
        }
        else{
            return 123;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(gasleft() >= 7000){
            return 1000;
        }
        else{
            return 123;
        }
    }
}
