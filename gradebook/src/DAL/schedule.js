import bogDaxios from './bogdaxios'

let instance = new bogDaxios('http://localhost:3001/')

export const scheduleAPI = {
    loadSchedule(name) {
        return instance.post(`schedule`, {name}).then(responce => responce.json())
    }
}

