// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract TestCalls {
    string public version = "0.0.1";

    int public counter = 0;

    struct T {
        int a;
        uint b;
        address c;
        bool d;
        bytes e;
        string f;
    }

    struct T2 {
        T t;
        T[4] ta;
        T[] ta2;
    }

    function read00() public pure {}

    function read01(int a) public pure returns (int a1) {
        return a;
    }

    function read02(
        int[4] calldata a
    ) public pure returns (int[4] calldata a1) {
        return a;
    }

    function read03(int[] calldata a) public pure returns (int[] calldata a1) {
        return a;
    }

    function read04(
        int[4][4] calldata a
    ) public pure returns (int[4][4] calldata a1) {
        return a;
    }

    function read05(
        int[4][] calldata a
    ) public pure returns (int[4][] calldata a1) {
        return a;
    }

    function read06(
        int[][4] calldata a
    ) public pure returns (int[][4] calldata a1) {
        return a;
    }

    function read07(
        int[][] calldata a
    ) public pure returns (int[][] calldata a1) {
        return a;
    }

    function read08(T calldata a) public pure returns (T calldata a1) {
        return a;
    }

    function read09(T[] calldata a) public pure returns (T[] calldata a1) {
        return a;
    }

    function read10(T2 calldata a) public pure returns (T2 calldata a1) {
        return a;
    }

    function read11(T2[] calldata a) public pure returns (T2[] calldata a1) {
        return a;
    }

    function read12(
        T2[] calldata a,
        int b,
        string calldata c
    ) public pure returns (T2[] calldata a1, int b1, string calldata c1) {
        return (a, b, c);
    }

    function write00() public {
        counter++;
    }

    function write01(int a) public returns (int a1) {
        counter++;
        return a;
    }

    function write02(int[4] calldata a) public returns (int[4] calldata a1) {
        counter++;
        return a;
    }

    function write03(int[] calldata a) public returns (int[] calldata a1) {
        counter++;
        return a;
    }

    function write04(
        int[4][4] calldata a
    ) public returns (int[4][4] calldata a1) {
        counter++;
        return a;
    }

    function write05(
        int[4][] calldata a
    ) public returns (int[4][] calldata a1) {
        counter++;
        return a;
    }

    function write06(
        int[][4] calldata a
    ) public returns (int[][4] calldata a1) {
        counter++;
        return a;
    }

    function write07(int[][] calldata a) public returns (int[][] calldata a1) {
        counter++;
        return a;
    }

    function write08(T calldata a) public returns (T calldata a1) {
        counter++;
        return a;
    }

    function write09(T[] calldata a) public returns (T[] calldata a1) {
        counter++;
        return a;
    }

    function write10(T2 calldata a) public returns (T2 calldata a1) {
        counter++;
        return a;
    }

    function write11(T[] calldata a) public returns (T[] calldata a1) {
        counter++;
        return a;
    }

    function write12(
        T[] calldata a,
        int b,
        string calldata c
    ) public payable returns (T[] calldata a1, int b1, string calldata c1, uint256 value) {
        counter++;
        return (a, b, c, msg.value);
    }
}
