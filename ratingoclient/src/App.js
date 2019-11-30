import React, {useState, useEffect} from 'react';
import './App.css';
import services from './services/apicalls'
import CatalogueCard from './comopnents/cataloguecard'
const initialState = {offset:1, limit:10};
function App() {
  const [products, setProducts] = useState([]);
  const [showProduct, setShowProduct] = useState(false);
  const [page, setPage] = useState(initialState);
  const [error, setError] = useState(false);
  const [count, setCount] = useState(0);
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
          <h1 className="title" style={{float:'left'}}>ratin<br/>GO</h1>
          <div className="flex-container">
            {
              products.map(item=>(
                <CatalogueCard pid={item.pid} count={item.count} avg={item.avg}/>
              ))
            }
          </div>
          {
            page.offset<count/10 &&
            <div>
              MORE
            </div>
          }
        </div>
      </div>
  );
}

export default App;
