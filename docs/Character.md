# Character


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**is_group** | **bool** |  | 
**sex** | **str** |  | 
**gender** | **str** |  | [optional] 
**role** | **str** |  | [optional] 
**betweenness** | **float** |  | 
**closeness** | **float** |  | 
**degree** | **int** |  | 
**eigenvector** | **float** |  | 
**num_of_scenes** | **int** |  | 
**num_of_speech_acts** | **int** |  | 
**num_of_words** | **int** |  | 
**weighted_degree** | **int** |  | 
**wikidata_id** | **str** |  | [optional] 

## Example

```python
from pydracor_base.models.character import Character

# TODO update the JSON string below
json = "{}"
# create an instance of Character from a JSON string
character_instance = Character.from_json(json)
# print the JSON string representation of the object
print(Character.to_json())

# convert the object into a dict
character_dict = character_instance.to_dict()
# create an instance of Character from a dict
character_from_dict = Character.from_dict(character_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


