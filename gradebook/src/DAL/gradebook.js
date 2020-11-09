import axios from 'axios'

const instance = axios.create({
    baseURL : 'http://localhost:3001/'
})

export const gradebookAPI = {
    loadPage(number) {
        return instance.get(`gradebook/${number}`).then(responce => responce.data)
    }
}