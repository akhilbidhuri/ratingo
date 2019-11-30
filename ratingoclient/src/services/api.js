import axios from 'axios'

const BASE_URL = "https://ratingo.herokuapp.com/"

export default () => {
    return axios.create({
      baseURL: BASE_URL
    })
  }