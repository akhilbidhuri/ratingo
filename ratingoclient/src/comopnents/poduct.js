import React, {useEffect, useState, useContext} from 'react'
import services from '../services/apicalls'
import Context from '../context/context'
const initialState = {pid: null, avg:null, count:null}
const initialPage = {offset:1, limit:5}

function Product(props){
    const {state, dispatch} = useContext(Context);
    const [rating, setRating] = useState({});
    const [ratings, setRatings] = useState([]);
    const [page, setPage] = useState(initialPage);
    const [error, setError] = useState(false);
    const [formError, setFormError] = useState(false);
    const [formSuccess, setFormSuccess] = useState(false);
    useEffect(
        ()=>{
            if(state.data.pid)
                {
                    services.getRatings(state.data.pid, page.offset, page.limit)
                    .then(res=>{
                        if(res.data.data){
                            setRatings(res.data.data)
                        }
                        else{
                            setError(true)
                        }
                    })
                    .catch(err=>{
                        setError(true);
                    })
                
            }
        },[page.offset]
    );
    let next_handler=()=>{
        setPage({...page, offset: page.offset + 1});
    }
    let prev_handler=()=>{
        setPage({...page, offset: page.offset-1})
    }
    let submitRating = (event) =>{
        event.preventDefault();
        if(rating.uid && rating.rating && rating.comment){
            services.newRating({...rating, pid:state.data.pid})
            .then(res=>{
                setFormError(false);
                setFormSuccess(true);
            }) 
            .catch(err=>{
                console.log(err)
                setFormError(true)
                setFormSuccess(false)
            })
        }
    }
    return ( 
        <div style={{marginTop:'7%'}}>
            <div className="cards" style={{ marginLeft:'25vw',width:'50vw', color:'white', display:'block'}}>
              <div className="flex-container" > 
                <div style={{minWidth:'20vw', background:"#414550", borderRadius:'15px', margin:'5%'}}> 
                    <h1 className="title" style={{padding:'10%', border:'0'}}>{state.data.pid}</h1>
                </div>
                <div style={{ marginLeft:'10%', marginTop:'5%'}}>
                    <h2>Avg Rating: {state.data.avg}</h2>
                    <h3>No. of Ratings: {state.data.count}</h3>
                </div>
              </div>
            </div>
            <div style={{color:'white'}}>
                <h2>Add your rating:</h2>
                <form onSubmit={submitRating}>
                    <input required type="text" className="cusInput" placeholder="UserID" name="username" style={{margin:'2%'}} onChange={ev => setRating({...rating, uid:ev.target.value})}/>
                    <input required type="number" className="cusInput" placeholder="Rating(1to5)" style={{width:'7vw', margin:'2%'}} name="rating" onChange={ev => setRating({...rating, rating:ev.target.value})}/>
                    <input type="text" className="cusInput" placeholder="Comment" name="comment" style={{width:'10vw', margin:'2%'}} onChange={ev => setRating({...rating, comment:ev.target.value})}/>
                    <button className="cusBut1">Submit</button>
                </form>
                {
                    formError &&
                    <h1>Wrong Input try again.</h1>
                }
                {
                    formSuccess &&
                    <h1>Rating Submitted successfully!</h1>
                }
                <h2>Ratings:</h2>
                {ratings.length>0 &&
                    <>
                    {    ratings.map(item=>(
                            <div style={{marginBottom:'3%'}}>
                            <div key={item.uid} style={{ display:'inline',background:'#414550', borderRadius:'10px', padding:'1%'}}>
                                <span className="rating" style={{marginRight:'2%'}}>User:{item.uid}</span>
                                <span className="rating" style={{marginRight:'2%'}}>Rating:{item.rating}</span>
                                <span className="rating">Comment:{item.comment}</span>
                            </div>
                            </div>
                        ))
                    }
                    <div style={{display:'flex', marginLeft:'40%'}}>          
                        {
                            page.offset<state.data.count/5 &&

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
                    ratings.length===0 &&
                    <h2>No ratings to Show!!</h2>
                }
            </div>
            {
                error &&
                <div>
                    <h1>Error occured!!!</h1>
                </div>
            }
        </div> 
    );
}
 
export default Product;