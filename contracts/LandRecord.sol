pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;


contract LandRecord
{
    uint i=0;
    uint j=0;
    uint k=0;
    uint z=0;
    uint insertcount=0;
    string[20] Land_id;
    string[20] Land_name;
    string[20] Owner;
    string[20] paddress;
    string[20] status;
    string[20] pincode;
    string[20] Sale;
    string[20] moreAccess;
    string[20] documents;
    
    string[] Land_id_arr;
    string[] Land_name_arr;
    string[] Owner_arr;
    string[] paddress_arr;
    string[] status_arr;
    string[] pincode_arr;
    string[] Sale_arr;
    string[] moreAccess_arr;
    string[] documents_arr;
    
    
    
    
    function storeProperty(string memory _Land_id,string memory _Land_name,string memory _paddress, string memory _Owner,string memory _status, string memory _pincode, string memory _Sale,string memory _moreAccess,string memory _documents) public {
        
        Land_id[z]= _Land_id;
        Land_name[z] = _Land_name;
        paddress[z] = _paddress;
        Owner[z] = _Owner;
        status[z] = _status;
        pincode[z] = _pincode;
        Sale[z] = _Sale;
        moreAccess[z]= _moreAccess;
        documents[z]= _documents;
        z++;
        
        insertcount++;
    }    
    
    function stringsEqual(string storage _a, string memory _b) internal returns (bool) {
		bytes storage a = bytes(_a);
		bytes memory b = bytes(_b);
		if (a.length != b.length)
			return false;

		for (i = 0; i < a.length; i ++)
			if (a[i] != b[i])
				return false;
		return true;
	}
	
	
	

        
function searchProperty(string memory _Sale) public returns(string [] memory){
delete Land_id_arr;
   delete Land_name_arr;
    delete Owner_arr;
   delete paddress_arr;
    delete status_arr;
    delete pincode_arr;
   delete Sale_arr;
   delete moreAccess_arr;
    delete documents_arr;
    
    

    
for(j=0;j<insertcount;j++)
{

if(stringsEqual(status[j],_Sale))
{

    Land_id_arr.push(Land_id[j]);
    Land_name_arr.push(Land_name[j]);
    paddress_arr.push(paddress[j]);
    status_arr.push(status[j]);
    pincode_arr.push(pincode[j]);
    Sale_arr.push(Sale[j]);
   
}

}

return (Land_id_arr);
}

function accDetails(string memory _Owner) public returns(string [] memory){
 delete Land_id_arr;
   delete Land_name_arr;
    delete Owner_arr;
   delete paddress_arr;
    delete status_arr;
    delete pincode_arr;
   delete Sale_arr;
   delete moreAccess_arr;
    delete documents_arr;
    
for(j=0;j<insertcount;j++)
{
if(stringsEqual(Owner[j],_Owner))
{
    Land_id_arr.push(Land_id[j]);
    Land_name_arr.push(Land_name[j]);
    paddress_arr.push(paddress[j]);
    status_arr.push(status[j]);
    pincode_arr.push(pincode[j]);
    Sale_arr.push(Sale[j]);
    moreAccess_arr.push(moreAccess[j]);
    documents_arr.push(documents[j]);

    


}

}

return (Land_id_arr);

}

function retsearchProperty(string memory _landid) public returns(string memory,string memory,string memory,string memory,string memory,string memory){

    
for(j=0;j<insertcount;j++)
{

if(stringsEqual(Land_id[j],_landid))
{
return (Land_id[j],Land_name[j],paddress[j],status[j],pincode[j],Sale[j]);
}

}
}

function retaccDetails(string memory _landid) public returns(string memory,string memory,string memory,string memory,string memory,string memory,string memory,string memory){

    
for(j=0;j<insertcount;j++)
{

if(stringsEqual(Land_id[j],_landid))
{
return (Land_id[j],Land_name[j],paddress[j],status[j],pincode[j],Sale[j],moreAccess[j],documents[j]);

}
}

}
function updateProperty(string memory _Owner,string memory _landid,string memory _status,string memory _Sale) public{

    
for(j=0;j<insertcount;j++)
{

if(stringsEqual(Owner[j],_Owner))
{
    
    if(stringsEqual(Land_id[j],_landid)){
        status[j] = _status;
        Sale[j] = _Sale; 
    }
}

}
}

function updateOwnership(string memory _Owner,string memory _landid, string memory _paddress) public{

    
for(j=0;j<insertcount;j++)
{

    if(stringsEqual(Owner[j],_Owner)  )
    {
     if(stringsEqual(Land_id[j],_landid)){
       for(k=0;k<insertcount;k++){
           if(stringsEqual(paddress[k],_paddress)){
               Owner[j]=Owner[k];
               paddress[j]=paddress[k];
           }
       } 
     }
    }


}


}
function moreView(string memory _moreAccess) public returns(string memory){

    
for(j=0;j<insertcount;j++)
{

if(stringsEqual(moreAccess[j],_moreAccess))
{
    return (documents[j]);
}

}
}

         
}