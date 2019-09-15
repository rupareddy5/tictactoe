pragma solidity >=0.4.22 <0.6.0;

contract Sender {
    address public owner=msg.sender;
    uint256 public p1_score=0;
    uint256 public p2_score=0;
    address public p1;
    address public p2;
    uint256 fee=5;
    uint256 public total=0;

    
  function send() public payable {
        if(p1==0)
        {
            require(msg.value >= fee);
            p1=msg.sender;
            p1_score += fee;
            
        }
        else if(p2==0)
        {
            require(msg.value >= fee);
            require(p1!=msg.sender);
            p2=msg.sender;
            p2_score += fee;
            
        }
        total = address(this).balance;
        // owner.transfer(total);
    }
    

}    

    
