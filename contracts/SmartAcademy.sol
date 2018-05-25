pragma solidity ^0.4.17;

import "../node_modules/zeppelin-solidity/contracts/ownership/Whitelist.sol";

/**
 * @title SmartAcademy
 * @dev SmartAcademy 
 */
contract SmartAcademy is Whitelist {

	// Defines the struct representing an entity issuing degree
	struct IssuingEntity{
		address addr;
		string friendlyName;
		bytes32 identificationDataHash;
		
	}
	
	mapping (bytes32 => IssuingEntity) private hashList_;

  /**
   * @notice Create a new SmartAcademy Contract.
   */
  function SmartAcademy() public {
    addAddressToWhitelist(msg.sender);
  }


}
