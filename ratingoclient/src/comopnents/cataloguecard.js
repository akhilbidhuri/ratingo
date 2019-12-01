import React, {useContext} from 'react';
import Context from '../context/context'
const Cataloguecard = (props) => {
    const { dispatch} = useContext(Context);
    let showProduct = () =>{
        console.log(props)
        dispatch({type:'SET_PRODUCT', payload:{pid:props.pid, avg:props.avg, count:props.count}})
    }
    return ( 
        <div className="cards" style={{ color:'#fff'}} onClick={showProduct}>
            <h1 className="title" style={{textAlign:'center', padding:'3%', width:'100%'}}>{props.pid}</h1>
            <h3>Rating:{props.avg}({props.count})</h3>
        </div> 
    );
}
 
export default Cataloguecard;