# PlayInCorpus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**uri** | **str** |  | 
**name** | **str** |  | 
**title** | **str** |  | 
**subtitle** | **str** |  | [optional] 
**title_en** | **str** |  | [optional] 
**subtitle_en** | **str** |  | [optional] 
**authors** | [**List[AuthorInPlayInCorpus]**](AuthorInPlayInCorpus.md) |  | 
**year_normalized** | **int** |  | 
**year_written** | **str** |  | 
**year_premiered** | **str** |  | 
**year_printed** | **str** |  | 
**date_premiered** | **str** |  | [optional] 
**source** | [**SourceInPlayMetadata**](SourceInPlayMetadata.md) |  | [optional] 
**networkdata_csv_url** | **str** |  | 
**network_size** | **int** |  | 
**wikidata_id** | **str** |  | 

## Example

```python
from pydracor_base.models.play_in_corpus import PlayInCorpus

# TODO update the JSON string below
json = "{}"
# create an instance of PlayInCorpus from a JSON string
play_in_corpus_instance = PlayInCorpus.from_json(json)
# print the JSON string representation of the object
print(PlayInCorpus.to_json())

# convert the object into a dict
play_in_corpus_dict = play_in_corpus_instance.to_dict()
# create an instance of PlayInCorpus from a dict
play_in_corpus_from_dict = PlayInCorpus.from_dict(play_in_corpus_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


