import React from 'react';

const cataloguecard = (props) => {
    return ( 
        <div className="cards" style={{width:'15vw', color:'#fff'}}>
            <h1 className="title" style={{textAlign:'center'}}>{props.pid}</h1>
            <h3>Rating:{props.avg}({props.count})</h3>
        </div> 
    );
}
 
export default cataloguecard;