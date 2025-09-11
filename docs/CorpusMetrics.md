# CorpusMetrics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**characters** | **int** |  | 
**male** | **int** |  | 
**female** | **int** |  | 
**stage** | **int** |  | 
**sp** | **int** |  | 
**text** | **int** |  | 
**plays** | **int** |  | 
**wordcount** | [**WordCounts**](WordCounts.md) |  | 
**updated** | **str** |  | 

## Example

```python
from pydracor_base.models.corpus_metrics import CorpusMetrics

# TODO update the JSON string below
json = "{}"
# create an instance of CorpusMetrics from a JSON string
corpus_metrics_instance = CorpusMetrics.from_json(json)
# print the JSON string representation of the object
print(CorpusMetrics.to_json())

# convert the object into a dict
corpus_metrics_dict = corpus_metrics_instance.to_dict()
# create an instance of CorpusMetrics from a dict
corpus_metrics_from_dict = CorpusMetrics.from_dict(corpus_metrics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


