import axios from 'axios'

const instance = axios.create({
    baseURL : 'http://localhost:3001/'
})

export const scheduleAPI = {
    loadSchedule(name) {
        return instance.get(`schedule/${name}`).then(responce => responce.data)
    }
}

