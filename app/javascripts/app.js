// Import the page's CSS. Webpack will know what to do with it.
import "../stylesheets/app.css";

// Import libraries we need.
import { default as Web3} from 'web3';
import { default as contract } from 'truffle-contract'

// Import our contract artifacts and turn them into usable abstractions.
import gatekeeper_artifacts from '../../build/contracts/GateKeeper.json'

// DoorCoin is our usable abstraction, which we'll use through the code below.
var GateKeeper = contract(gatekeeper_artifacts);
