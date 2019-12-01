import React, {useContext, useReducer} from 'react'
import Context from './context';
import reducer from './reducer';
// Create an exportable consumer that can be injected into components
export const StateConsumer = Context.Consumer;
// Create the provider using a functional component
function ContextProvider(props){
    const AppContext = useContext(Context);
    const [state, dispatch] = useReducer(reducer, AppContext);
    return (
      // value prop is where we define what values 
      // that are accessible to consumer components
       <Context.Provider value={{state, dispatch}}>
        {props.children}
      </Context.Provider>
    )
  
}
export default ContextProvider;