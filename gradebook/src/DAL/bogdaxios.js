class bogDaxios {
    constructor(baseURL) {
        this.baseURL = baseURL
    }
    get(url) {
        return fetch(this.baseURL+url, {method: 'GET'});
        
    }
    post(url,data) {
        return fetch(this.baseURL+url, {
                method: 'POST',
                //credentials: "include",
                headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            })
    }
}

export default bogDaxios