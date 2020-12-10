import bogDaxios from './bogdaxios'

const instance = new bogDaxios('http://localhost:3001/')

export const loginAPI = {
    getUserId(login, password) {
        return instance.post(`login`, {login, password}).then(responce => responce.json())
    }
}