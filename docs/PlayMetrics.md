# PlayMetrics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**corpus** | **str** |  | 
**nodes** | [**List[NodeInPlayMetrics]**](NodeInPlayMetrics.md) |  | 
**average_clustering** | **float** |  | 
**average_degree** | **float** |  | 
**average_path_length** | **float** |  | 
**density** | **float** |  | 
**diameter** | **int** |  | 
**max_degree** | **int** |  | 
**max_degree_ids** | **List[str]** |  | 
**num_connected_components** | **int** |  | 
**num_edges** | **int** |  | 
**size** | **int** |  | 
**wikipedia_link_count** | **int** |  | 

## Example

```python
from pydracor_base.models.play_metrics import PlayMetrics

# TODO update the JSON string below
json = "{}"
# create an instance of PlayMetrics from a JSON string
play_metrics_instance = PlayMetrics.from_json(json)
# print the JSON string representation of the object
print(PlayMetrics.to_json())

# convert the object into a dict
play_metrics_dict = play_metrics_instance.to_dict()
# create an instance of PlayMetrics from a dict
play_metrics_from_dict = PlayMetrics.from_dict(play_metrics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


