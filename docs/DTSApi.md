# pydracor_base.DTSApi

All URIs are relative to *https://dracor.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dts_entrypoint**](DTSApi.md#dts_entrypoint) | **GET** /dts | Distributed Text Services API Entrypoint
[**get_dts_collection**](DTSApi.md#get_dts_collection) | **GET** /dts/collection | DTS Collection
[**get_dts_document**](DTSApi.md#get_dts_document) | **GET** /dts/document | DTS Document endpoint
[**get_dts_navigation**](DTSApi.md#get_dts_navigation) | **GET** /dts/navigation | Navigation


# **dts_entrypoint**
> DtsEntrypoint dts_entrypoint()

Distributed Text Services API Entrypoint

Entrypoint of the DraCor DTS implementation (see specification – https://distributed-text-services.github.io/specifications/versions/1-alpha/#entry-endpoint).

### Example


```python
import pydracor_base
from pydracor_base.models.dts_entrypoint import DtsEntrypoint
from pydracor_base.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://dracor.org/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = pydracor_base.Configuration(
    host = "https://dracor.org/api/v1"
)


# Enter a context with an instance of the API client
with pydracor_base.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = pydracor_base.DTSApi(api_client)

    try:
        # Distributed Text Services API Entrypoint
        api_response = api_instance.dts_entrypoint()
        print("The response of DTSApi->dts_entrypoint:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DTSApi->dts_entrypoint: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**DtsEntrypoint**](DtsEntrypoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/ld+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | information about the DTS implementation containing URI templates of the \&quot;collection\&quot;, \&quot;navigation\&quot; and \&quot;document\&quot; endpoints. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dts_collection**
> object get_dts_collection(id=id, nav=nav)

DTS Collection

Collection endpoint: Lists the collections available. Documentation see https://distributed-text-services.github.io/specifications/versions/1-alpha/#collection-endpoint.

### Example


```python
import pydracor_base
from pydracor_base.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://dracor.org/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = pydracor_base.Configuration(
    host = "https://dracor.org/api/v1"
)


# Enter a context with an instance of the API client
with pydracor_base.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = pydracor_base.DTSApi(api_client)
    id = 'https://dracor.org/id/ger' # str | Identifier for a collection or document. Preferably the full URI of a corpus or a play, but shorter DraCor IDs are also supported. (optional)
    nav = 'nav_example' # str | Determines whether the content of the member property represents parent or child items. (optional)

    try:
        # DTS Collection
        api_response = api_instance.get_dts_collection(id=id, nav=nav)
        print("The response of DTSApi->get_dts_collection:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DTSApi->get_dts_collection: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Identifier for a collection or document. Preferably the full URI of a corpus or a play, but shorter DraCor IDs are also supported. | [optional] 
 **nav** | **str**| Determines whether the content of the member property represents parent or child items. | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/ld+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Collections available. |  -  |
**400** | Bad request. Using the parameter &#x60;page&#x60; with a document is not possible. (Paging functionality has not been implemented yet.) |  -  |
**404** | The requested resource is not available. |  -  |
**501** | Not implemented. Using the undocumented parameter &#x60;page&#x60; will result in this status code. The paging functionality has not been implemented yet. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dts_document**
> str get_dts_document(resource, ref=ref, start=start, end=end)

DTS Document endpoint

DTS Document endpoint: Documentation see https://distributed-text-services.github.io/specifications/versions/1-alpha/#document-endpoint.

### Example


```python
import pydracor_base
from pydracor_base.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://dracor.org/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = pydracor_base.Configuration(
    host = "https://dracor.org/api/v1"
)


# Enter a context with an instance of the API client
with pydracor_base.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = pydracor_base.DTSApi(api_client)
    resource = 'https://dracor.org/id/ger000088' # str | The unique identifier for the Resource whose tree or subtree must be returned. Should be the full URI of a play (recommended) or the DraCor ID.
    ref = 'body/div[1]' # str | The identifier of a single node in the CitationTree for the Resource, used as the root for the sub-tree to be reconstructed. (optional)
    start = 'body/div[2]/div[1]' # str | The string identifier of a node in the CitationTree for the Resource, used as the starting point for a range that serves as the reference point for the query. This parameter is inclusive, so the starting point is considered part of the sub-tree to be returned. (optional)
    end = 'body/div[2]/div[3]' # str | The string identifier of a node in the CitationTree for the Resource, used as the ending point for a range that serves as the reference point for the query. This parameter is inclusive, so the supplied ending point is considered part of the specified range. (optional)

    try:
        # DTS Document endpoint
        api_response = api_instance.get_dts_document(resource, ref=ref, start=start, end=end)
        print("The response of DTSApi->get_dts_document:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DTSApi->get_dts_document: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | **str**| The unique identifier for the Resource whose tree or subtree must be returned. Should be the full URI of a play (recommended) or the DraCor ID. | 
 **ref** | **str**| The identifier of a single node in the CitationTree for the Resource, used as the root for the sub-tree to be reconstructed. | [optional] 
 **start** | **str**| The string identifier of a node in the CitationTree for the Resource, used as the starting point for a range that serves as the reference point for the query. This parameter is inclusive, so the starting point is considered part of the sub-tree to be returned. | [optional] 
 **end** | **str**| The string identifier of a node in the CitationTree for the Resource, used as the ending point for a range that serves as the reference point for the query. This parameter is inclusive, so the supplied ending point is considered part of the specified range. | [optional] 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/tei+xml

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns either a whole TEI-XML document of a play or a fragment thereof. In case a fragment was requested it is contained in the element &lt;dts:wrapper&gt; inside the root &lt;TEI&gt; element. |  -  |
**400** | Bad request – (1) The combination of the parameter &#39;ref&#39; together with &#39;start&#39; and &#39;end&#39; is not allowed. (2) Only one parameter of the pair &#39;start&#39; and &#39;end&#39; is provided. |  -  |
**404** | The resource requested is not found. |  -  |
**501** | This functionality has not been implemented yet. If the parameters documented above are used correctly this status code should never be returned. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dts_navigation**
> object get_dts_navigation(resource, ref=ref, start=start, end=end, down=down)

Navigation

Navigation endpoint: Documentation see https://distributed-text-services.github.io/specifications/versions/1-alpha/#navigation-endpoint.

### Example


```python
import pydracor_base
from pydracor_base.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://dracor.org/api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = pydracor_base.Configuration(
    host = "https://dracor.org/api/v1"
)


# Enter a context with an instance of the API client
with pydracor_base.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = pydracor_base.DTSApi(api_client)
    resource = 'https://dracor.org/id/ger000088' # str | The unique identifier for the Resource whose tree or subtree must be returned. Should be the full URI of a play (recommended) or the DraCor ID.
    ref = 'body/div[1]' # str | The identifier of a single node in the CitationTree for the Resource, used as the root for the sub-tree to be reconstructed. (optional)
    start = 'body/div[2]/div[1]' # str | The string identifier of a node in the CitationTree for the Resource, used as the starting point for a range that serves as the reference point for the query. This parameter is inclusive, so the starting point is considered part of the sub-tree to be returned. (optional)
    end = 'body/div[2]/div[3]' # str | The string identifier of a node in the CitationTree for the Resource, used as the ending point for a range that serves as the reference point for the query. This parameter is inclusive, so the supplied ending point is considered part of the specified range. (optional)
    down = 'down_example' # str |  (optional)

    try:
        # Navigation
        api_response = api_instance.get_dts_navigation(resource, ref=ref, start=start, end=end, down=down)
        print("The response of DTSApi->get_dts_navigation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DTSApi->get_dts_navigation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | **str**| The unique identifier for the Resource whose tree or subtree must be returned. Should be the full URI of a play (recommended) or the DraCor ID. | 
 **ref** | **str**| The identifier of a single node in the CitationTree for the Resource, used as the root for the sub-tree to be reconstructed. | [optional] 
 **start** | **str**| The string identifier of a node in the CitationTree for the Resource, used as the starting point for a range that serves as the reference point for the query. This parameter is inclusive, so the starting point is considered part of the sub-tree to be returned. | [optional] 
 **end** | **str**| The string identifier of a node in the CitationTree for the Resource, used as the ending point for a range that serves as the reference point for the query. This parameter is inclusive, so the supplied ending point is considered part of the specified range. | [optional] 
 **down** | **str**|  | [optional] 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/ld+json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful. |  -  |
**400** | Bad request. Check error message in the response. |  -  |
**404** | There are no Citeable Unit(s) identified by the provided identifier(s) in &#x60;ref&#x60;, &#x60;start&#x60; or &#x60;end&#x60;. |  -  |
**501** | Not implemented. Not all of the functionality foreseen by the specification is fully implemented, e.g. requesting sub-structures of non-body elements. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

