# DtsEntrypoint


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | **str** |  | 
**id** | **str** |  | 
**type** | **str** |  | 
**dts_version** | **str** |  | 
**collection** | **str** |  | 
**document** | **str** |  | 
**navigation** | **str** |  | 

## Example

```python
from pydracor_base.models.dts_entrypoint import DtsEntrypoint

# TODO update the JSON string below
json = "{}"
# create an instance of DtsEntrypoint from a JSON string
dts_entrypoint_instance = DtsEntrypoint.from_json(json)
# print the JSON string representation of the object
print(DtsEntrypoint.to_json())

# convert the object into a dict
dts_entrypoint_dict = dts_entrypoint_instance.to_dict()
# create an instance of DtsEntrypoint from a dict
dts_entrypoint_from_dict = DtsEntrypoint.from_dict(dts_entrypoint_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


