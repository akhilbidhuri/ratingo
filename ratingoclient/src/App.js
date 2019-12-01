import React, {useState, useEffect, useContext} from 'react'
import './App.css';
import services from './services/apicalls'
import CatalogueCard from './comopnents/cataloguecard'
import Product from './comopnents/poduct'
import Context from './context/context'
const initialState = {offset:1, limit:10};
function App() {
  const {state} = useContext(Context)
  const [products, setProducts] = useState([]);
  const [page, setPage] = useState(initialState);
  const [error, setError] = useState(false);
  const [count, setCount] = useState(0);
  const next_handler =()=>{ 
   setPage({...page, offset: page.offset+1})
  }
  const prev_handler =()=>{
    setPage({...page, offset: page.offset-1})
  }
  useEffect(()=>{
      services.getRating(page.offset, page.limit)
      .then(res=>{
        console.log(res.data)
        if(res.data.data && res.data.count){
          setProducts(res.data.data);
          setCount(res.data.count);
        }
        else
        setError(true);
      })
      .catch(err=>{
        console.log(err)
        setError(true);
      })
  }, [page.offset])
  return (
    <div className="App">
      <div className="topbar">
          <h1 className="title" style={{float:'left', border:'1px double white', borderRadius:'0px', marginLeft:'2%'}}>ratin<br/>GO</h1>
          </div>
          {!state.status &&
          <>
            <div className="flex-container">
              {
                products.map(item=>(
                  
                  <CatalogueCard pid={item.pid} count={item.count} avg={item.avg} key={item.pid}/>
                
                ))
              }
            </div>
            
            <div style={{display:'flex', marginLeft:'40%'}}>          
              {
                page.offset<count/10 &&

                <p className="next" onClick={next_handler}>Next</p>
              
              }
              {
                page.offset>1 && 
                <p className="prev" onClick={prev_handler}>Prev</p>
              }
            </div>
          </>
          }
          {
            state.status &&
            <Product/>
          }
          {
            error &&
            <div>
              <h1>Some Error Occured!!!</h1>
            </div>
          }
        
      </div>
  );
}

export default App;
