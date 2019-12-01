import api from './api'

export default {
    newRating (rating){
        return api().post('newRating', rating) 
    },
    getRating (offset, limit) {
      return api().get('getRating', {params:{offset:offset, limit:limit}})
    },
    getRatings (pid, offset, limit) {
      return api().get('getRatings', {params:{offset:offset, limit:limit, pid:pid}})
    }
  }