// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Pokemon {
    address trainer;
    string pokemon;

    function catchPokemon(string memory pokemonName) public {
        trainer = msg.sender;
        pokemon = pokemonName;
    }

    function getPokemon() view public returns (address, string memory){
        return (trainer,pokemon);
    }
}
