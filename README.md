<h1 align='center'>FOR [ESX] FRAMEWORK</a></h1><p align='center'><b><a href='https://discord.esx-framework.org/'>Discord</a> - <a href='https://documentation.esx-framework.org/legacy/installation'>Documentation</a></b></h5>

<b>Banking & ATM Eye System for ESX</b>

## Requirements
- [joker_core](https://github.com/JokerInside/joker_core)

## BANK UI
![esx_banking_pic1](https://user-images.githubusercontent.com/22717950/189738189-375101ac-c86b-4ce8-8df3-19d740c3809c.png)
## ATM UI
![esx_banking_pic2](https://user-images.githubusercontent.com/22717950/189738199-a325092b-5f1d-4c7f-8950-d660d053ed0f.png)
![esx_banking_pic3](https://user-images.githubusercontent.com/22717950/189738210-7af2c7d5-7fa1-4f70-8460-743ee9258f88.png)


## Special thanks: Gellipapa#9186,Rav3n95#2849,Csoki, csontvazharcos, Füsti, Pécé

## Download & Installation

- Download https://github.com/JokerInside/joker_bank/archive/refs/heads/master.zip
- Put it in the `[joker_bank]` directory

## Installation
- Add this to your `server.cfg`:

```
ensure joker_bank
```

# Database
```
Run the banking.sql into your database. Done.
```

# If you want to create a bank log in another script, you can do it this way!
# IMPORTANT this is only log, these method not handle full bank service
# I recommend to use the money logic after.

|Param |Type |Explanation|
|-----|--------|--------|
|source|number   | the source of the player (server side only)   |
|label  |string     |The label of the transaction |
|logType  |string     | "WITHDRAW", "DEPOSIT", "TRANSFER_RECEIVE" the possible transactions|
|amount  |number     |The amount of the transaction to be logged|


```lua
-- Client side
-- The event is used client side

TriggerServerEvent("joker_bank:logTransaction",label,logType,amount)

-- For example:
TriggerServerEvent("joker_bank:logTransaction","TAX", "DEPOSIT", 2000)


-- Server side
-- The export is used server side
exports["joker_bank"]:logTransaction(source,label,logType,amount)

-- For example:
exports["joker_bank"]:logTransaction(source,"CAR PURCHASE","WITHDRAW",200)
```

# Legal
### License

Copyright (C) 2023 ESX-Framework

This program Is free software: you can redistribute it And/Or modify it under the terms Of the GNU General Public License As published by the Free Software Foundation, either version 3 Of the License, Or (at your option) any later version.

This program Is distributed In the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty Of MERCHANTABILITY Or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License For more details.

You should have received a copy Of the GNU General Public License along with this program. If Not, see http://www.gnu.org/licenses/.
