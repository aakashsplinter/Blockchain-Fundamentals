pragma solidity ^0.4.4;
contract IScoreStore{
    function GetScore(string name) returns (int);
}

contract MyGame{
    function ShowScore(string name) returns (int)
    {
        IScoreStore scoreStore = IScoreStore(0xe2e60abb27cbda4c71377118098be9da84894576);
        return scoreStore.GetScore(name);
    }
}