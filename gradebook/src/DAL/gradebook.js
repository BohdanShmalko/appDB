import bogDaxios from './bogdaxios'

const instance = new bogDaxios('http://localhost:3001/')

export const gradebookAPI = {
    loadPage(num, userId) {
        return instance.post(`gradebook`, {num, userId}).then(responce => responce.json())
    }
}