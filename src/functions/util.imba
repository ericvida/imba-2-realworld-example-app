let URL_ENDPOINT="https://conduit.productionready.io/api/"

def parseJSON response
	return new Promise(
		do(resolve)
			response.json().then(
				do(json)
					resolve({
						status: response.status,
						ok: response.ok,
						json: json
					})
			)
	)
export def api url, method, data, headers
	
	let options = {
		method: method,
		headers: headers
	}
	
	if method isnt 'get' and data
		options.body = JSON.stringify(data)
	
	return new Promise(
		do(resolve, reject)
			window.fetch(URL_ENDPOINT + url, options).then(do(response)
				parseJSON(response)
			).then(do(response)
				if response.ok
					return resolve(response.json)
				# TODO: `else`
				return reject(response.json)
			).catch( do(error)
				reject({networkError: error.message})
			)
	)

export def formatDate inputDate
	let options = {year: 'numeric', month: 'long', day: 'numeric'}
	let aDate = new Date(inputDate)
	return aDate.toLocaleDateString("en-US", options)

export def encode p
	return window.encodeURIComponent(p).replace(/!/g, '%21').replace(/'/g, '%27').replace(/\(/g, '%28').replace(/\)/g, '%29').replace(/\*/g, '%2A').replace(/%20/g, '+')