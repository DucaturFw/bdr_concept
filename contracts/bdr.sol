pragma solidity ^0.4.19;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';
import 'zeppelin-solidity/contracts/math/SafeMath.sol';


contract bdr_sample {
    
    using SafeMath for uint256;
    
    uint256 public unblocked;
    address public oracle;
    address public client;
    address public owner;
    uint256 public sum;
    
    mapping (address => uint256) oracleDeposits ;  
    
    
    event Execute(
        uint256 _value
    );
    
    event Disput(
        uint256 _value
    );
    
    
    
    modifier onlyOracle () {
        require(msg.sender == oracle);
        _;
    }
    
    modifier onlyClient () {
        require(msg.sender == icofounder);
        _;
    }
    
    function bdr_sample(unit256 _sum) {
        sum = _sum;
    }
    
    function unblock(unit256 _unblock) external onlyOracle {
        unblocked = unblocked + _unblock;
    }
    
    function setOracle(address _oracle) internal {
        oracle = _oracle;
    }
    
    function setIcofounder(address _founder) internal {
        icofounder = _founder;
    }
    
    function getEth() public onlyIcoFounder {
        require(unblocked > spent);
        spent = unblocked;
        bool isSent = owner.transfer(unblocked.sub(spent));
        require(isSent);
    }
    
    function execute() public onlyOwner {
        Execute(sum)
    }
    
    function riseDisput() public onlyClient {
        Disput(sum)
    }
    
    
    //function 

}



