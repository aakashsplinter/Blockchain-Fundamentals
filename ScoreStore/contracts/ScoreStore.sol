pragma solidity  ^0.4.4;
contract ScoreStore{
    mapping (string=> int) PersonScores;
    function AddPersonScore(string name,int startingscore){
        if(PersonScores[name]>0)
        {
            revert();
        }
        else{
            PersonScores[name] = startingscore;
        }
    }
    function GetScore(string name) returns (int) {
        return PersonScores[name];
    }
}