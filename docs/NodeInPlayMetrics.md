# NodeInPlayMetrics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**betweenness** | **float** |  | 
**closeness** | **float** |  | 
**degree** | **int** |  | 
**eigenvector** | **float** |  | 
**weighted_degree** | **int** |  | 

## Example

```python
from pydracor_base.models.node_in_play_metrics import NodeInPlayMetrics

# TODO update the JSON string below
json = "{}"
# create an instance of NodeInPlayMetrics from a JSON string
node_in_play_metrics_instance = NodeInPlayMetrics.from_json(json)
# print the JSON string representation of the object
print(NodeInPlayMetrics.to_json())

# convert the object into a dict
node_in_play_metrics_dict = node_in_play_metrics_instance.to_dict()
# create an instance of NodeInPlayMetrics from a dict
node_in_play_metrics_from_dict = NodeInPlayMetrics.from_dict(node_in_play_metrics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


