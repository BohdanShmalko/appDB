import axios from 'axios'

const instance = axios.create({
    baseURL : 'http://localhost:3001/'
})

export const marksAPI = {
    loadMarks() {
        return instance.get('marks').then(responce => responce.data)
    },
    saveMarks(inf) {
        return instance.post('saveMarks', inf).then(responce => responce.data)
    }
}

