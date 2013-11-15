package info.livefans.request

import info.livefans.exception.httpstatus.*

/**
 * @author abertolo
 */
abstract class RequestUtils {

	static def secureDomainGet(domain, id){
		try {
			if(domain == null)
				throw new BadRequestException("Can not get in a null domain.")

			if(!(id instanceof Long)){
				id = new Long(id) 
			}			
		}catch(java.lang.NumberFormatException e) {
			throw new BadRequestException(e)
		}
		def d = domain.get(id)
		if(!d)
			throw new NotFoundException("${domain} instance with id ${id} is not found.")

		return d
	}

	static def forSeoUrl(String str){
		str.replaceAll(' ', '-')
	}
}