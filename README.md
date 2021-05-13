# voting_system-solidity-truffle
Hello,

dependencies:
1)Node Package Manager (NPM)
2)Truffle Framework, terminal: $ npm install -g truffle
3)download and install ganache: https://www.trufflesuite.com/ganache
4)add metamask extension for Google Chrome.




For activate the system in your localhost after cloning, fellow the next steps:

1) install dependencies
2) navigate to project folder on terminal
3) activete ganache (use quick start option)
6)truffle migrate --reset
7)$npm run dev
8)connect metamask to one of the account on ganache (in localhost network)
9) activate truffle console with: "truffle console"
10) in order to use our app use: " Election.deployed().then(function(instance) { app = instance }) "
11) to vote: app.vote("1",'one of the address in the ganache')
12) to add candidate: app.addNewCandidate("name") //only owner can add new candidate
