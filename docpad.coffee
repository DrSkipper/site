# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	collections:
		posts: ->
			@getCollection('documents').findAllLive({relativeOutDirPath:'posts'})
		menu: ->
			@getCollection('documents').findAllLive({layout:'page'})
}

# Export the DocPad Configuration
module.exports = docpadConfig
