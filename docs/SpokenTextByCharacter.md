# SpokenTextByCharacter


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**label** | **str** |  | 
**is_group** | **bool** |  | 
**sex** | **str** |  | 
**gender** | **str** |  | [optional] 
**roles** | **List[str]** |  | 
**text** | **List[str]** |  | 

## Example

```python
from pydracor_base.models.spoken_text_by_character import SpokenTextByCharacter

# TODO update the JSON string below
json = "{}"
# create an instance of SpokenTextByCharacter from a JSON string
spoken_text_by_character_instance = SpokenTextByCharacter.from_json(json)
# print the JSON string representation of the object
print(SpokenTextByCharacter.to_json())

# convert the object into a dict
spoken_text_by_character_dict = spoken_text_by_character_instance.to_dict()
# create an instance of SpokenTextByCharacter from a dict
spoken_text_by_character_from_dict = SpokenTextByCharacter.from_dict(spoken_text_by_character_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


