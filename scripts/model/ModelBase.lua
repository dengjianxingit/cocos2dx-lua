ModelBase = class()

function ModelBase:construct()

end

function ModelBase:get(propertyName)
	return self[propertyName]
end

function ModelBase:set(propertyName, value)
	if type(self[propertyName]) ~= type(value) then Utils.error(propertyName.."type not"..type(value)) return false end
	self[propertyName] = value
	return true
end