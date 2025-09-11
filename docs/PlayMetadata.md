# PlayMetadata


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**title** | **str** |  | 
**subtitle** | **str** |  | 
**wikidata_id** | **str** |  | 
**first_author** | **str** |  | 
**year_normalized** | **int** |  | 
**year_written** | **str** |  | 
**year_premiered** | **str** |  | 
**year_printed** | **str** |  | 
**date_premiered** | **str** |  | 
**normalized_genre** | **str** |  | 
**libretto** | **bool** |  | 
**density** | **float** |  | 
**digital_source** | **object** |  | 
**original_source_number_of_pages** | **int** |  | 
**original_source_pub_place** | **str** |  | 
**original_source_publisher** | **str** |  | 
**original_source_year** | **int** |  | 
**average_clustering** | **float** |  | 
**average_degree** | **float** |  | 
**average_path_length** | **float** |  | 
**diameter** | **int** |  | 
**max_degree** | **int** |  | 
**max_degree_ids** | **str** |  | 
**num_of_l** | **int** |  | 
**num_connected_components** | **int** |  | 
**num_edges** | **int** |  | 
**num_of_acts** | **int** |  | 
**num_of_co_authors** | **int** |  | 
**num_of_p** | **int** |  | 
**num_of_person_groups** | **int** |  | 
**num_of_segments** | **int** |  | 
**num_of_speakers** | **int** |  | 
**num_of_speakers_male** | **int** |  | 
**num_of_speakers_female** | **int** |  | 
**num_of_speakers_unknown** | **int** |  | 
**size** | **int** |  | 
**wikipedia_link_count** | **int** |  | 
**word_count_sp** | **int** |  | 
**word_count_stage** | **int** |  | 
**word_count_text** | **int** |  | 

## Example

```python
from pydracor_base.models.play_metadata import PlayMetadata

# TODO update the JSON string below
json = "{}"
# create an instance of PlayMetadata from a JSON string
play_metadata_instance = PlayMetadata.from_json(json)
# print the JSON string representation of the object
print(PlayMetadata.to_json())

# convert the object into a dict
play_metadata_dict = play_metadata_instance.to_dict()
# create an instance of PlayMetadata from a dict
play_metadata_from_dict = PlayMetadata.from_dict(play_metadata_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


