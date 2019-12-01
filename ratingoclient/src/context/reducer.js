export default function reducer(state, action){
    
    switch(action.type){
        case 'SET_PRODUCT': 
        return {
            ...state, status: true, 
            data: {pid:action.payload.pid,
                   avg:action.payload.avg,
                   count:action.payload.count      
            }
        }
        case 'UNSET_PRODUCT': return{
            ...state, status: false,
            data: []
        }
        default: return{...state}
    }
}