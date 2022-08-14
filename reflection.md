# How to make a SafeMoon-like token

## Reflection token

Fee charged on every transaction redistributed among HODLers.

## Problem

Iterating over EVERY holder and adding very small amount on EVERY transfer would eat up all the gas pretty quickly

## Solution

Use internal multiplier that is used during the balanceOf and toatalSupply call.