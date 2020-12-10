import bogDaxios from './bogdaxios'

let instance = new bogDaxios('http://localhost:3001/')

export const marksAPI = {
    loadMarks(userId) {
        return instance.post('marks', {userId}).then(responce => responce.json())
    },
    saveMarks(inf) {
        return instance.post('saveMarks', inf).then(responce => responce.json())
    }
}

