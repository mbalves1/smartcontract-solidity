// Murcoins ICO
// SPDX-License-Identifier: UNLICENSED
// Version of compiler
pragma solidity ^0.8.26;

contract murcoin_ico {
    // Introducing the max number of Murcoin available for sale
    uint public max_murcoins = 1000000;

    // Introducing the USD to Murcoins conversion rate
    uint public usd_to_murcoins = 1000;

    // Introducing the total number of Murcoin that have been bought by the investors
    uint public total_murcoins_bought = 0;

    // Mapping from the investor address to its equity in Murcoin and USD
    mapping(address => uint) equity_murcoins;
    mapping(address => uint) equity_usd;

    // Checking if an investor can buy Murcoins
    modifier can_buy_murcoins(uint usd_invested) {
        require(usd_invested * usd_to_murcoins + total_murcoins_bought <= max_murcoins);
        _;
    }

    // Getting the equity in Murcoins of an investor
    function equity_in_murcoins(address investor) external view returns (uint)  {
        return equity_murcoins[investor];
    }

    // Getting the equity in USD of an investor
    function equity_in_usd(address investor) external view returns (uint)  {
        return equity_usd[investor];
    }

    // Buying Murcoins
    
}