import React from 'react';
const initialState = {status: false, data:[]}
const ThemeContext = React.createContext(initialState);
export default ThemeContext;