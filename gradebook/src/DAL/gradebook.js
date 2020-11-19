import bogDaxios from './bogdaxios'

const instance = new bogDaxios('http://localhost:3001/')

export const gradebookAPI = {
    loadPage(number) {
        return instance.get(`gradebook/:${number}`).then(responce => responce.json())
    }
}