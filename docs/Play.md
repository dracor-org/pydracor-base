# Play


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**uri** | **str** |  | 
**name** | **str** |  | 
**corpus** | **str** |  | 
**title** | **str** |  | 
**subtitle** | **str** |  | [optional] 
**title_en** | **str** |  | [optional] 
**subtitle_en** | **str** |  | [optional] 
**commit** | **str** |  | [optional] 
**authors** | [**List[AuthorInPlayMetadata]**](AuthorInPlayMetadata.md) |  | 
**year_normalized** | **int** |  | 
**year_written** | **str** |  | 
**year_premiered** | **str** |  | 
**year_printed** | **str** |  | 
**date_premiered** | **str** |  | [optional] 
**normalized_genre** | **str** |  | 
**libretto** | **bool** |  | 
**all_in_index** | **float** |  | 
**all_in_segment** | **int** |  | 
**characters** | [**List[CharacterInPlayMetadata]**](CharacterInPlayMetadata.md) |  | 
**segments** | [**List[SegmentItemInPlayMetadata]**](SegmentItemInPlayMetadata.md) |  | 
**relations** | [**List[RelationItemInPlayMetadata]**](RelationItemInPlayMetadata.md) |  | [optional] 
**source** | [**SourceInPlayMetadata**](SourceInPlayMetadata.md) |  | [optional] 
**original_source** | **str** |  | [optional] 
**wikidata_id** | **str** |  | [optional] 

## Example

```python
from pydracor_base.models.play import Play

# TODO update the JSON string below
json = "{}"
# create an instance of Play from a JSON string
play_instance = Play.from_json(json)
# print the JSON string representation of the object
print(Play.to_json())

# convert the object into a dict
play_dict = play_instance.to_dict()
# create an instance of Play from a dict
play_from_dict = Play.from_dict(play_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


