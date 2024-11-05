// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract TestCalls {
    string public version = "0.0.1";

    int public counter = 0;

    struct T1 {
        int a;
        uint b;
    }

    struct T2 {
        T1 t1;
        T1[4] t2;
        T1[] t3;
    }

    struct T3 {
        int a;
        int8 b;
        uint c;
        uint8 d;
        address e;
        bool f;
        bytes g;
        bytes8 h;
        string i;
    }

    function read01() public pure {}

    function read02(int a) public pure returns (int a1) {
        return a;
    }

    function read03(
        int[4] calldata a
    ) public pure returns (int[4] calldata a1) {
        return a;
    }

    function read04(int[] calldata a) public pure returns (int[] calldata a1) {
        return a;
    }

    function read05(
        int[4][4] calldata a
    ) public pure returns (int[4][4] calldata a1) {
        return a;
    }

    function read06(
        int[4][] calldata a
    ) public pure returns (int[4][] calldata a1) {
        return a;
    }

    function read07(
        int[][4] calldata a
    ) public pure returns (int[][4] calldata a1) {
        return a;
    }

    function read08(
        int[][] calldata a
    ) public pure returns (int[][] calldata a1) {
        return a;
    }

    function read09(T1 calldata a) public pure returns (T1 calldata a1) {
        return a;
    }

    function read10(T1[] calldata a) public pure returns (T1[] calldata a1) {
        return a;
    }

    function read11(
        T2[] calldata a,
        int b,
        string calldata c
    ) public pure returns (T2[] calldata a1, int b1, string calldata c1) {
        return (a, b, c);
    }

    function read12(T3 calldata a) public pure returns (T3 calldata) {
        return a;
    }

    function write01() public {
        counter++;
    }

    function write02(int a) public returns (int a1) {
        counter++;
        return a;
    }

    function write03(int[4] calldata a) public returns (int[4] calldata a1) {
        counter++;
        return a;
    }

    function write04(int[] calldata a) public returns (int[] calldata a1) {
        counter++;
        return a;
    }

    function write05(
        int[4][4] calldata a
    ) public returns (int[4][4] calldata a1) {
        counter++;
        return a;
    }

    function write06(
        int[4][] calldata a
    ) public returns (int[4][] calldata a1) {
        counter++;
        return a;
    }

    function write07(
        int[][4] calldata a
    ) public returns (int[][4] calldata a1) {
        counter++;
        return a;
    }

    function write08(int[][] calldata a) public returns (int[][] calldata a1) {
        counter++;
        return a;
    }

    function write09(T1 calldata a) public returns (T1 calldata a1) {
        counter++;
        return a;
    }

    function write10(T1[] calldata a) public returns (T1[] calldata a1) {
        counter++;
        return a;
    }

    function write11(
        T2[] calldata a,
        int b,
        string calldata c
    ) public payable returns (T2[] calldata a1, int b1, string calldata c1, uint256 value) {
        counter++;
        return (a, b, c, msg.value);
    }

    function write12(T3 calldata a) public returns (T3 calldata) {
        counter++;
        return a;
    }
}
