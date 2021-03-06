<?xml version="1.0"?>
<doc>
    <assembly>
        <name>BeeCloudWebAPI</name>
    </assembly>
    <members>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.ApiDescriptionExtensions.GetFriendlyId(System.Web.Http.Description.ApiDescription)">
            <summary>
            Generates an URI-friendly ID for the <see cref="T:System.Web.Http.Description.ApiDescription"/>. E.g. "Get-Values-id_name" instead of "GetValues/{id}?name={name}"
            </summary>
            <param name="description">The <see cref="T:System.Web.Http.Description.ApiDescription"/>.</param>
            <returns>The ID as a string.</returns>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.HelpPageConfig">
            <summary>
            Use this class to customize the Help Page.
            For example you can set a custom <see cref="T:System.Web.Http.Description.IDocumentationProvider"/> to supply the documentation
            or you can provide the samples for the requests/responses.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.Controllers.HelpController">
            <summary>
            The controller that will handle requests for the help page.
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetDocumentationProvider(System.Web.Http.HttpConfiguration,System.Web.Http.Description.IDocumentationProvider)">
            <summary>
            Sets the documentation provider for help page.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="documentationProvider">The documentation provider.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetSampleObjects(System.Web.Http.HttpConfiguration,System.Collections.Generic.IDictionary{System.Type,System.Object})">
            <summary>
            Sets the objects that will be used by the formatters to produce sample requests/responses.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="sampleObjects">The sample objects.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetSampleRequest(System.Web.Http.HttpConfiguration,System.Object,System.Net.Http.Headers.MediaTypeHeaderValue,System.String,System.String)">
            <summary>
            Sets the sample request directly for the specified media type and action.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="sample">The sample request.</param>
            <param name="mediaType">The media type.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetSampleRequest(System.Web.Http.HttpConfiguration,System.Object,System.Net.Http.Headers.MediaTypeHeaderValue,System.String,System.String,System.String[])">
            <summary>
            Sets the sample request directly for the specified media type and action with parameters.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="sample">The sample request.</param>
            <param name="mediaType">The media type.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
            <param name="parameterNames">The parameter names.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetSampleResponse(System.Web.Http.HttpConfiguration,System.Object,System.Net.Http.Headers.MediaTypeHeaderValue,System.String,System.String)">
            <summary>
            Sets the sample request directly for the specified media type of the action.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="sample">The sample response.</param>
            <param name="mediaType">The media type.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetSampleResponse(System.Web.Http.HttpConfiguration,System.Object,System.Net.Http.Headers.MediaTypeHeaderValue,System.String,System.String,System.String[])">
            <summary>
            Sets the sample response directly for the specified media type of the action with specific parameters.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="sample">The sample response.</param>
            <param name="mediaType">The media type.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
            <param name="parameterNames">The parameter names.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetSampleForMediaType(System.Web.Http.HttpConfiguration,System.Object,System.Net.Http.Headers.MediaTypeHeaderValue)">
            <summary>
            Sets the sample directly for all actions with the specified media type.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="sample">The sample.</param>
            <param name="mediaType">The media type.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetSampleForType(System.Web.Http.HttpConfiguration,System.Object,System.Net.Http.Headers.MediaTypeHeaderValue,System.Type)">
            <summary>
            Sets the sample directly for all actions with the specified type and media type.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="sample">The sample.</param>
            <param name="mediaType">The media type.</param>
            <param name="type">The parameter type or return type of an action.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetActualRequestType(System.Web.Http.HttpConfiguration,System.Type,System.String,System.String)">
            <summary>
            Specifies the actual type of <see cref="T:System.Net.Http.ObjectContent`1"/> passed to the <see cref="T:System.Net.Http.HttpRequestMessage"/> in an action.
            The help page will use this information to produce more accurate request samples.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="type">The type.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetActualRequestType(System.Web.Http.HttpConfiguration,System.Type,System.String,System.String,System.String[])">
            <summary>
            Specifies the actual type of <see cref="T:System.Net.Http.ObjectContent`1"/> passed to the <see cref="T:System.Net.Http.HttpRequestMessage"/> in an action.
            The help page will use this information to produce more accurate request samples.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="type">The type.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
            <param name="parameterNames">The parameter names.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetActualResponseType(System.Web.Http.HttpConfiguration,System.Type,System.String,System.String)">
            <summary>
            Specifies the actual type of <see cref="T:System.Net.Http.ObjectContent`1"/> returned as part of the <see cref="T:System.Net.Http.HttpRequestMessage"/> in an action.
            The help page will use this information to produce more accurate response samples.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="type">The type.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetActualResponseType(System.Web.Http.HttpConfiguration,System.Type,System.String,System.String,System.String[])">
            <summary>
            Specifies the actual type of <see cref="T:System.Net.Http.ObjectContent`1"/> returned as part of the <see cref="T:System.Net.Http.HttpRequestMessage"/> in an action.
            The help page will use this information to produce more accurate response samples.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="type">The type.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
            <param name="parameterNames">The parameter names.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.GetHelpPageSampleGenerator(System.Web.Http.HttpConfiguration)">
            <summary>
            Gets the help page sample generator.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <returns>The help page sample generator.</returns>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.SetHelpPageSampleGenerator(System.Web.Http.HttpConfiguration,SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator)">
            <summary>
            Sets the help page sample generator.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="sampleGenerator">The help page sample generator.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.GetModelDescriptionGenerator(System.Web.Http.HttpConfiguration)">
            <summary>
            Gets the model description generator.
            </summary>
            <param name="config">The configuration.</param>
            <returns>The <see cref="T:SalesForceTestRequest.Areas.HelpPage.ModelDescriptions.ModelDescriptionGenerator"/></returns>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageConfigurationExtensions.GetHelpPageApiModel(System.Web.Http.HttpConfiguration,System.String)">
            <summary>
            Gets the model that represents an API displayed on the help page. The model is initialized on the first call and cached for subsequent calls.
            </summary>
            <param name="config">The <see cref="T:System.Web.Http.HttpConfiguration"/>.</param>
            <param name="apiDescriptionId">The <see cref="T:System.Web.Http.Description.ApiDescription"/> ID.</param>
            <returns>
            An <see cref="T:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel"/>
            </returns>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.ModelDescriptions.ModelDescription">
            <summary>
            Describes a type model.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.ModelDescriptions.ModelDescriptionGenerator">
            <summary>
            Generates model descriptions for given types.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.ModelDescriptions.ModelNameAttribute">
            <summary>
            Use this attribute to change the name of the <see cref="T:SalesForceTestRequest.Areas.HelpPage.ModelDescriptions.ModelDescription"/> generated for a type.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel">
            <summary>
            The model that represents an API displayed on the help page.
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.#ctor">
            <summary>
            Initializes a new instance of the <see cref="T:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel"/> class.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.ApiDescription">
            <summary>
            Gets or sets the <see cref="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.ApiDescription"/> that describes the API.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.UriParameters">
            <summary>
            Gets or sets the <see cref="T:SalesForceTestRequest.Areas.HelpPage.ModelDescriptions.ParameterDescription"/> collection that describes the URI parameters for the API.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.RequestDocumentation">
            <summary>
            Gets or sets the documentation for the request.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.RequestModelDescription">
            <summary>
            Gets or sets the <see cref="T:SalesForceTestRequest.Areas.HelpPage.ModelDescriptions.ModelDescription"/> that describes the request body.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.RequestBodyParameters">
            <summary>
            Gets the request body parameter descriptions.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.ResourceDescription">
            <summary>
            Gets or sets the <see cref="T:SalesForceTestRequest.Areas.HelpPage.ModelDescriptions.ModelDescription"/> that describes the resource.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.ResourceProperties">
            <summary>
            Gets the resource property descriptions.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.SampleRequests">
            <summary>
            Gets the sample requests associated with the API.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.SampleResponses">
            <summary>
            Gets the sample responses associated with the API.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.Models.HelpPageApiModel.ErrorMessages">
            <summary>
            Gets the error messages associated with this model.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator">
            <summary>
            This class will generate the samples for the help page.
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.#ctor">
            <summary>
            Initializes a new instance of the <see cref="T:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator"/> class.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.ActualHttpMessageTypes">
            <summary>
            Gets CLR types that are used as the content of <see cref="T:System.Net.Http.HttpRequestMessage"/> or <see cref="T:System.Net.Http.HttpResponseMessage"/>.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.ActionSamples">
            <summary>
            Gets the objects that are used directly as samples for certain actions.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.SampleObjects">
            <summary>
            Gets the objects that are serialized as samples by the supported formatters.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.SampleObjectFactories">
            <summary>
            Gets factories for the objects that the supported formatters will serialize as samples. Processed in order,
            stopping when the factory successfully returns a non-<see langref="null"/> object.
            </summary>
            <remarks>
            Collection includes just <see cref="M:SalesForceTestRequest.Areas.HelpPage.ObjectGenerator.GenerateObject(System.Type)"/> initially. Use
            <code>SampleObjectFactories.Insert(0, func)</code> to provide an override and
            <code>SampleObjectFactories.Add(func)</code> to provide a fallback.</remarks>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.GetSampleRequests(System.Web.Http.Description.ApiDescription)">
            <summary>
            Gets the request body samples for a given <see cref="T:System.Web.Http.Description.ApiDescription"/>.
            </summary>
            <param name="api">The <see cref="T:System.Web.Http.Description.ApiDescription"/>.</param>
            <returns>The samples keyed by media type.</returns>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.GetSampleResponses(System.Web.Http.Description.ApiDescription)">
            <summary>
            Gets the response body samples for a given <see cref="T:System.Web.Http.Description.ApiDescription"/>.
            </summary>
            <param name="api">The <see cref="T:System.Web.Http.Description.ApiDescription"/>.</param>
            <returns>The samples keyed by media type.</returns>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.GetSample(System.Web.Http.Description.ApiDescription,SalesForceTestRequest.Areas.HelpPage.SampleDirection)">
            <summary>
            Gets the request or response body samples.
            </summary>
            <param name="api">The <see cref="T:System.Web.Http.Description.ApiDescription"/>.</param>
            <param name="sampleDirection">The value indicating whether the sample is for a request or for a response.</param>
            <returns>The samples keyed by media type.</returns>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.GetActionSample(System.String,System.String,System.Collections.Generic.IEnumerable{System.String},System.Type,System.Net.Http.Formatting.MediaTypeFormatter,System.Net.Http.Headers.MediaTypeHeaderValue,SalesForceTestRequest.Areas.HelpPage.SampleDirection)">
            <summary>
            Search for samples that are provided directly through <see cref="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.ActionSamples"/>.
            </summary>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
            <param name="parameterNames">The parameter names.</param>
            <param name="type">The CLR type.</param>
            <param name="formatter">The formatter.</param>
            <param name="mediaType">The media type.</param>
            <param name="sampleDirection">The value indicating whether the sample is for a request or for a response.</param>
            <returns>The sample that matches the parameters.</returns>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.GetSampleObject(System.Type)">
            <summary>
            Gets the sample object that will be serialized by the formatters. 
            First, it will look at the <see cref="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.SampleObjects"/>. If no sample object is found, it will try to create
            one using <see cref="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.DefaultSampleObjectFactory(SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator,System.Type)"/> (which wraps an <see cref="T:SalesForceTestRequest.Areas.HelpPage.ObjectGenerator"/>) and other
            factories in <see cref="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.SampleObjectFactories"/>.
            </summary>
            <param name="type">The type.</param>
            <returns>The sample object.</returns>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.ResolveHttpRequestMessageType(System.Web.Http.Description.ApiDescription)">
            <summary>
            Resolves the actual type of <see cref="T:System.Net.Http.ObjectContent`1"/> passed to the <see cref="T:System.Net.Http.HttpRequestMessage"/> in an action.
            </summary>
            <param name="api">The <see cref="T:System.Web.Http.Description.ApiDescription"/>.</param>
            <returns>The type.</returns>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.ResolveType(System.Web.Http.Description.ApiDescription,System.String,System.String,System.Collections.Generic.IEnumerable{System.String},SalesForceTestRequest.Areas.HelpPage.SampleDirection,System.Collections.ObjectModel.Collection{System.Net.Http.Formatting.MediaTypeFormatter}@)">
            <summary>
            Resolves the type of the action parameter or return value when <see cref="T:System.Net.Http.HttpRequestMessage"/> or <see cref="T:System.Net.Http.HttpResponseMessage"/> is used.
            </summary>
            <param name="api">The <see cref="T:System.Web.Http.Description.ApiDescription"/>.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
            <param name="parameterNames">The parameter names.</param>
            <param name="sampleDirection">The value indicating whether the sample is for a request or a response.</param>
            <param name="formatters">The formatters.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleGenerator.WriteSampleObjectUsingFormatter(System.Net.Http.Formatting.MediaTypeFormatter,System.Object,System.Type,System.Net.Http.Headers.MediaTypeHeaderValue)">
            <summary>
            Writes the sample object using formatter.
            </summary>
            <param name="formatter">The formatter.</param>
            <param name="value">The value.</param>
            <param name="type">The type.</param>
            <param name="mediaType">Type of the media.</param>
            <returns></returns>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey">
            <summary>
            This is used to identify the place where the sample should be applied.
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.#ctor(System.Net.Http.Headers.MediaTypeHeaderValue)">
            <summary>
            Creates a new <see cref="T:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey"/> based on media type.
            </summary>
            <param name="mediaType">The media type.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.#ctor(System.Net.Http.Headers.MediaTypeHeaderValue,System.Type)">
            <summary>
            Creates a new <see cref="T:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey"/> based on media type and CLR type.
            </summary>
            <param name="mediaType">The media type.</param>
            <param name="type">The CLR type.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.#ctor(SalesForceTestRequest.Areas.HelpPage.SampleDirection,System.String,System.String,System.Collections.Generic.IEnumerable{System.String})">
            <summary>
            Creates a new <see cref="T:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey"/> based on <see cref="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.SampleDirection"/>, controller name, action name and parameter names.
            </summary>
            <param name="sampleDirection">The <see cref="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.SampleDirection"/>.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
            <param name="parameterNames">The parameter names.</param>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.#ctor(System.Net.Http.Headers.MediaTypeHeaderValue,SalesForceTestRequest.Areas.HelpPage.SampleDirection,System.String,System.String,System.Collections.Generic.IEnumerable{System.String})">
            <summary>
            Creates a new <see cref="T:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey"/> based on media type, <see cref="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.SampleDirection"/>, controller name, action name and parameter names.
            </summary>
            <param name="mediaType">The media type.</param>
            <param name="sampleDirection">The <see cref="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.SampleDirection"/>.</param>
            <param name="controllerName">Name of the controller.</param>
            <param name="actionName">Name of the action.</param>
            <param name="parameterNames">The parameter names.</param>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.ControllerName">
            <summary>
            Gets the name of the controller.
            </summary>
            <value>
            The name of the controller.
            </value>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.ActionName">
            <summary>
            Gets the name of the action.
            </summary>
            <value>
            The name of the action.
            </value>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.MediaType">
            <summary>
            Gets the media type.
            </summary>
            <value>
            The media type.
            </value>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.ParameterNames">
            <summary>
            Gets the parameter names.
            </summary>
        </member>
        <member name="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.SampleDirection">
            <summary>
            Gets the <see cref="P:SalesForceTestRequest.Areas.HelpPage.HelpPageSampleKey.SampleDirection"/>.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.ImageSample">
            <summary>
            This represents an image sample on the help page. There's a display template named ImageSample associated with this class.
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.ImageSample.#ctor(System.String)">
            <summary>
            Initializes a new instance of the <see cref="T:SalesForceTestRequest.Areas.HelpPage.ImageSample"/> class.
            </summary>
            <param name="src">The URL of an image.</param>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.InvalidSample">
            <summary>
            This represents an invalid sample on the help page. There's a display template named InvalidSample associated with this class.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.ObjectGenerator">
            <summary>
            This class will create an object of a given type and populate it with sample data.
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.ObjectGenerator.GenerateObject(System.Type)">
            <summary>
            Generates an object for a given type. The type needs to be public, have a public default constructor and settable public properties/fields. Currently it supports the following types:
            Simple types: <see cref="T:System.Int32"/>, <see cref="T:System.String"/>, <see cref="T:System.Enum"/>, <see cref="T:System.DateTime"/>, <see cref="T:System.Uri"/>, etc.
            Complex types: POCO types.
            Nullables: <see cref="T:System.Nullable`1"/>.
            Arrays: arrays of simple types or complex types.
            Key value pairs: <see cref="T:System.Collections.Generic.KeyValuePair`2"/>
            Tuples: <see cref="T:System.Tuple`1"/>, <see cref="T:System.Tuple`2"/>, etc
            Dictionaries: <see cref="T:System.Collections.Generic.IDictionary`2"/> or anything deriving from <see cref="T:System.Collections.Generic.IDictionary`2"/>.
            Collections: <see cref="T:System.Collections.Generic.IList`1"/>, <see cref="T:System.Collections.Generic.IEnumerable`1"/>, <see cref="T:System.Collections.Generic.ICollection`1"/>, <see cref="T:System.Collections.IList"/>, <see cref="T:System.Collections.IEnumerable"/>, <see cref="T:System.Collections.ICollection"/> or anything deriving from <see cref="T:System.Collections.Generic.ICollection`1"/> or <see cref="T:System.Collections.IList"/>.
            Queryables: <see cref="T:System.Linq.IQueryable"/>, <see cref="T:System.Linq.IQueryable`1"/>.
            </summary>
            <param name="type">The type.</param>
            <returns>An object of the given type.</returns>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.SampleDirection">
            <summary>
            Indicates whether the sample is used for request or response
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.TextSample">
            <summary>
            This represents a preformatted text sample on the help page. There's a display template named TextSample associated with this class.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.Areas.HelpPage.XmlDocumentationProvider">
            <summary>
            A custom <see cref="T:System.Web.Http.Description.IDocumentationProvider"/> that reads the API documentation from an XML documentation file.
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.Areas.HelpPage.XmlDocumentationProvider.#ctor(System.String)">
            <summary>
            Initializes a new instance of the <see cref="T:SalesForceTestRequest.Areas.HelpPage.XmlDocumentationProvider"/> class.
            </summary>
            <param name="documentPath">The physical path to XML document.</param>
        </member>
        <member name="M:SalesForceTestRequest.Controllers.ValuesController.Get">
            <summary>
            Gets some very important data from the server.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.ServiceClass.AgentType">
            <summary>
            Summary description for CApp.
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.Consult(SalesForceTestRequest.ServiceClass.CUser)">
            <summary>
            Consult the specified user
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.Consult(SalesForceTestRequest.ServiceClass.CSimpleService)">
            <summary>
            Consult the specified service
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.Consult(System.String,SalesForceTestRequest.ServiceClass.CExternalRoute)">
            <summary>
            Consult the specified phone number
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.Consult(System.String)">
            <summary>
            Consult the specified phone number
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.Transfer(SalesForceTestRequest.ServiceClass.CUser)">
            <summary>
            Transfer the current call to the specified user
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.Transfer(System.String)">
            <summary>
            Transfer the current call to the specified phone number
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.Transfer(System.String,SalesForceTestRequest.ServiceClass.CExternalRoute)">
            <summary>
            Transfer the current call to the specified phone number
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.Transfer(SalesForceTestRequest.ServiceClass.CSimpleService)">
            <summary>
            Transfer the current call to the specified service
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.Transfer">
            <summary>
            Transfer the current call to the consulted/conferenced party
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.Conference">
            <summary>
            Conference-in the consulted party
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.AcceptCall">
            <summary>
            Accept the current call
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.RejectCall(SalesForceTestRequest.ServiceClass.CCallRejectionReason)">
            <summary>
            Reject the current call with the specified reason
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CApp.RejectCall">
            <summary>
            Reject the current call
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.ServiceClass.CCallManager">
            <summary>
            Summary description for CCallManager.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.ServiceClass.C3WayCallManager">
            <summary>
            Summary description for C3WayCallManager.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.ServiceClass.CEventManager">
            <summary>
            Summary description for CEventManager.
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.ServiceClass.CList">
            <summary>
            Summary description for CLists.
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CLogoutReasons.Load">
            <summary>
            Load all Logout Reasons
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CNotReadyReasons.Load">
            <summary>
            Load all NotReady Reasons
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CCallRejectionReasons.Load">
            <summary>
            Load all Call Rejection Reasons
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CDispositionPlans.LoadDisposition(System.Int32)">
            <summary>
            Update the specified Disposition
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CDispositionPlans.LoadDispositionPlan(System.Int32)">
            <summary>
            Load/Update the specified Disposition Plan
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CDispositionPlans.LoadDispositionPlan(SalesForceTestRequest.EPEventsWS.UDNewService)">
            <summary>
            Load the specified Disposition Plan
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CExternalRoutes.Load">
            <summary>
            Load all External Routes
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CExternalRoutes.Load(System.Int32)">
            <summary>
            Load/Update the specified External Route
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CAgents.Load(System.Int32)">
            <summary>
            Load the specified agents
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CSupervisors.Load(System.Int32)">
            <summary>
            Load the specified supervisors
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CServices.Load">
            <summary>
            Load list with all types of services available for consult/transfer
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CServices.Load(SalesForceTestRequest.ServiceClass.ServiceType)">
            <summary>
            Load list with services of the specified type available for consult/transfer
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CAssignedServices.Load(System.Int32)">
            <summary>
            Load/Update the specified service's general info and settings
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CAssignedServices.Load(SalesForceTestRequest.ServiceClass.CService)">
            <summary>
            Load/Update the specified service's settings
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.ServiceClass.CAssignedServices.Load(SalesForceTestRequest.EPEventsWS.UDNewService)">
            <summary>
            Load the specified service's general info and settings
            </summary>
        </member>
        <member name="T:SalesForceTestRequest.ServiceClass.CPortal">
            <summary>
            Summary description for CPortal.
            </summary>
        </member>
        <member name="M:SalesForceTestRequest.Utils.Log.logException(System.Exception)">
            <summary>
            Método para registrar log de erro em arquivo externo
            </summary>
            <param name="e"></param>
        </member>
        <member name="M:SalesForceTestRequest.Utils.Log.logMessage(System.String)">
            <summary>
            Método para registrar mensagem de erro em arquivo externo
            </summary>
            <param name="message"></param>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.AgentWebServiceService">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.#ctor">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.registerCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getStateCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.availableCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.transferCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getTimeZoneCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.monitorCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.warningCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.authenticateCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordScreenCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.unRegisterCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.registerExCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatSendURLCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.monitorScreenCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getExpertsCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.scheduleCallbackCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateVMNCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.hangupCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.focusCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatConnectCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.excludeContactCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getAgentStateCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateNPCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.retrieveHoldCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.beginKWSessionCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.callOutcomeCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestLogoutCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatSendMessageCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getRemoteInfoCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.forwardEmailSentCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendURLCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.emailNotifyCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.endKWSessionCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getInfoCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.keepAliveCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.suspendMultiAppearancesCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.resumeMultiAppearancesCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.dialCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.conferenceCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.holdCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.consultCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.playDigitsCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.forwardEmailCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.answerCallCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.externalRouteCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrEntityAddedCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.refreshPersonalGreetingsCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestEmailSelfServiceCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.initiateKWVoiceConsultCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.initiateKWVoiceDialCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.cancelRequestLogoutCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendMessageCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendListOfChatEntitesCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestAgentStatsCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrEntityRemovedCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestUnavailableCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordingManagementCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.cancelRequestUnavailableCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestEmailReviewCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrDialRequestCompleted">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.register(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAgentInfo)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.registerAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAgentInfo)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.registerAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAgentInfo,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.update(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDUpdate)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDUpdate)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDUpdate,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getState(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDStateInput)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getStateAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDStateInput)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getStateAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDStateInput,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.available(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.availableAsync(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.availableAsync(SalesForceTestRequest.EPAgentWS.UDAgent,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.transfer(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDTransfer)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.transferAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDTransfer)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.transferAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDTransfer,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getTimeZone">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getTimeZoneAsync">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getTimeZoneAsync(System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.monitor(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDMonitor)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.monitorAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDMonitor)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.monitorAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDMonitor,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.warning(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDWarning)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.warningAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDWarning)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.warningAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDWarning,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.authenticate(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAgentInfo)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.authenticateAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAgentInfo)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.authenticateAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAgentInfo,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordScreen(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDScreenRecorderData)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordScreenAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDScreenRecorderData)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordScreenAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDScreenRecorderData,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.unRegister(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.unRegisterAsync(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.unRegisterAsync(SalesForceTestRequest.EPAgentWS.UDAgent,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.registerEx(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAgentInfo,SalesForceTestRequest.EPAgentWS.UDProperty[])">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.registerExAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAgentInfo,SalesForceTestRequest.EPAgentWS.UDProperty[])">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.registerExAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAgentInfo,SalesForceTestRequest.EPAgentWS.UDProperty[],System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatSendURL(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatURL)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatSendURLAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatURL)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatSendURLAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatURL,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.monitorScreen(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDScreenMonitor)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.monitorScreenAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDScreenMonitor)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.monitorScreenAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDScreenMonitor,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getExperts(SalesForceTestRequest.EPAgentWS.Expert,System.String)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getExpertsAsync(SalesForceTestRequest.EPAgentWS.Expert,System.String)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getExpertsAsync(SalesForceTestRequest.EPAgentWS.Expert,System.String,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.scheduleCallback(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDCallback)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.scheduleCallbackAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDCallback)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.scheduleCallbackAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDCallback,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateVMN(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDUpdateRequest)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateVMNAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDUpdateRequest)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateVMNAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDUpdateRequest,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.hangup(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDParm)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.hangupAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDParm)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.hangupAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDParm,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.focus(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDFocus)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.focusAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDFocus)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.focusAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDFocus,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatConnect(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatConnect)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatConnectAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatConnect)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatConnectAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatConnect,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.excludeContact(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDExclude)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.excludeContactAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDExclude)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.excludeContactAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDExclude,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getAgentState(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getAgentStateAsync(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getAgentStateAsync(SalesForceTestRequest.EPAgentWS.UDAgent,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateNP(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDUpdateRequest)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateNPAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDUpdateRequest)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.updateNPAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDUpdateRequest,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.retrieveHold(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDParm)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.retrieveHoldAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDParm)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.retrieveHoldAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDParm,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.beginKWSession(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWInfo)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.beginKWSessionAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWInfo)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.beginKWSessionAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWInfo,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.callOutcome(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDDisposition)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.callOutcomeAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDDisposition)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.callOutcomeAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDDisposition,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestLogout(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDReason)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestLogoutAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDReason)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestLogoutAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDReason,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatSendMessage(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatMessage)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatSendMessageAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatMessage)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatSendMessageAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatMessage,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getRemoteInfo(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDInfo,SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getRemoteInfoAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDInfo,SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getRemoteInfoAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDInfo,SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.forwardEmailSent(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDForwardEmailSent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.forwardEmailSentAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDForwardEmailSent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.forwardEmailSentAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDForwardEmailSent,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendURL(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityPushURL)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendURLAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityPushURL)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendURLAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityPushURL,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.emailNotify(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDEmailNotify)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.emailNotifyAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDEmailNotify)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.emailNotifyAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDEmailNotify,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.endKWSession(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWInfo)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.endKWSessionAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWInfo)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.endKWSessionAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWInfo,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getInfo(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDInfo)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getInfoAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDInfo)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.getInfoAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDInfo,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.keepAlive(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.keepAliveAsync(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.keepAliveAsync(SalesForceTestRequest.EPAgentWS.UDAgent,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.record(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDRecorderData)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDRecorderData)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDRecorderData,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.suspendMultiAppearances(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.suspendMultiAppearancesAsync(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.suspendMultiAppearancesAsync(SalesForceTestRequest.EPAgentWS.UDAgent,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.resumeMultiAppearances(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.resumeMultiAppearancesAsync(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.resumeMultiAppearancesAsync(SalesForceTestRequest.EPAgentWS.UDAgent,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.dial(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDCall)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.dialAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDCall)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.dialAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDCall,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.conference(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDConferenceIn)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.conferenceAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDConferenceIn)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.conferenceAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDConferenceIn,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.hold(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDParm)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.holdAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDParm)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.holdAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDParm,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.consult(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDConsultIn)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.consultAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDConsultIn)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.consultAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDConsultIn,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.playDigits(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDDigits)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.playDigitsAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDDigits)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.playDigitsAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDDigits,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.forwardEmail(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDForwardEmail)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.forwardEmailAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDForwardEmail)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.forwardEmailAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDForwardEmail,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.answerCall(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAnswerCall)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.answerCallAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAnswerCall)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.answerCallAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDAnswerCall,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.externalRoute(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDExternalRouteIn)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.externalRouteAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDExternalRouteIn)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.externalRouteAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDExternalRouteIn,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrEntityAdded(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityList)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrEntityAddedAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityList)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrEntityAddedAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityList,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.refreshPersonalGreetings(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.refreshPersonalGreetingsAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.refreshPersonalGreetingsAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestEmailSelfService(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDEmail)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestEmailSelfServiceAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDEmail)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestEmailSelfServiceAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDEmail,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.initiateKWVoiceConsult(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWConsult)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.initiateKWVoiceConsultAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWConsult)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.initiateKWVoiceConsultAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWConsult,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.initiateKWVoiceDial(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWDial)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.initiateKWVoiceDialAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWDial)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.initiateKWVoiceDialAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDKWDial,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.cancelRequestLogout(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.cancelRequestLogoutAsync(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.cancelRequestLogoutAsync(SalesForceTestRequest.EPAgentWS.UDAgent,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendMessage(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntitySendText)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendMessageAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntitySendText)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendMessageAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntitySendText,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendListOfChatEntites(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityList)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendListOfChatEntitesAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityList)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrSendListOfChatEntitesAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityList,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestAgentStats(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestAgentStatsAsync(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestAgentStatsAsync(SalesForceTestRequest.EPAgentWS.UDAgent,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrEntityRemoved(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityList)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrEntityRemovedAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityList)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrEntityRemovedAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatEntityList,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestUnavailable(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDReason)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestUnavailableAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDReason)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestUnavailableAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDReason,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordingManagement(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordingManagementAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.recordingManagementAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.cancelRequestUnavailable(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.cancelRequestUnavailableAsync(SalesForceTestRequest.EPAgentWS.UDAgent)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.cancelRequestUnavailableAsync(SalesForceTestRequest.EPAgentWS.UDAgent,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestEmailReview(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDEmail)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestEmailReviewAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDEmail)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.requestEmailReviewAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDEmail,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrDialRequest(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatDialRequest)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrDialRequestAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatDialRequest)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.chatsvrDialRequestAsync(SalesForceTestRequest.EPAgentWS.UDAgent,SalesForceTestRequest.EPAgentWS.UDChatDialRequest,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPAgentWS.AgentWebServiceService.CancelAsync(System.Object)">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDAgent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgent.LDAPUserId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgent.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgent.agentLoginName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgent.clientRole">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgent.initState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgent.serverType">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.ConcertoFault">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ConcertoFault.concertoFaultCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ConcertoFault.concertoFaultString">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.AgentPortalException">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Vector">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Vector.item">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.TimeZone">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.dstObserved">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.endDay">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.endDayofWeek">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.endMonth">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.endTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.gmtoffset">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.identifier">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.nanptimezoneid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.startDay">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.startDayofWeek">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.startMonth">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.startTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.systemDefault">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.TimeZone.timezonedesc">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Expert">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Expert.DocumentLink">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Expert.FirstName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Expert.LastName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Expert.PhoneNumbers">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Expert.Relevance">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Expert.RelevanceSpecified">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Expert.SipUri">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Expert.Source">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Expert.UserId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Expert.WorkgroupId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.UCCUIPTargetSystemID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.UIPTargetName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.backupProvisioningServerIP">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.backupProvisioningServerPort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.number">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.primaryProvisioningServerIP">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.primaryProvisioningServerPort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.secureDataTransmission">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.siteId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.IPNIQNodeDetail.tenantId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDChatDialRequest">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatDialRequest.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatDialRequest.phoneNumber">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDChatEntitySendText">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntitySendText.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntitySendText.entity">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntitySendText.entityName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntitySendText.text">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntitySendText.textLength">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDKWDial">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWDial.KWUserId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWDial.KWWorkGroupId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWDial.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWDial.externalRouteId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWDial.phoneNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWDial.serviceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWDial.sipURI">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDKWConsult">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWConsult.KWUserId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWConsult.KWWorkGroupId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWConsult.blindXferFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWConsult.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWConsult.externalRouteId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWConsult.phoneNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWConsult.serviceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWConsult.sipURI">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWConsult.userDefinedData">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDCallInfoUserDefinedIn">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallInfoUserDefinedIn.UDCallInfoUserDefinedItem">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallInfoUserDefinedIn.userDefinedItems">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDCallInfoUserDefinedItemIn">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallInfoUserDefinedItemIn.isMasked">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallInfoUserDefinedItemIn.key">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallInfoUserDefinedItemIn.value">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDEmail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDEmail.mailQueueID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDEmail.serviceID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.agent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.autoInit">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.beginMediaSeq">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.bitsPerSample">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.broadcast">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.calledParty">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.callingParty">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.callingPartyName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.catalogID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.comment">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.customerName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.dateRangeFrom">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.dateRangeTo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.dateRangeType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.dispositionCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.dnis">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.duration">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.encoding">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.fileFormat">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.fileName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.fileSize">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.fileSizeId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.fileType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.greetingId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.handle">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.hasVideo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.isMergedFile">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.key1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.key2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.key3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.location">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.mailBox">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.mediaRecordingsHandle">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.mediaSeq">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.mediaType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.mode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.monitorClass">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.numberOfRecordings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.pageNum">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.recFormatID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.recStoreID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.recorder">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.recorderID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.recordingID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.recordingId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.recordingManagementType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.rowCount">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.samplingRate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.samplingSize">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.scored">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.screenAvail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.service">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.site">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.sortFilter">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.storageMachineType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.tenantID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.timezoneId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.totalBytes">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.url">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user10">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user11">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user12">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user13">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user14">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user15">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user16">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user17">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user18">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user19">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user20">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user4">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user5">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user6">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user7">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user8">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.user9">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.userID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.userType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.vmGroup">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordingManagementParms.workgroup">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDChatEntityList">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntityList.entities">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDefFields">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDefFields.calldatadefid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDefFields.fieldorder">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDefFields.fieldtype">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDefFields.label">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDefFields.mediatypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDefFields.reservedword">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDExternalRouteIn">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExternalRouteIn.strQuery">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDDigits">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDigits.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDigits.digits">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDConsultIn">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsultIn.blindXferFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsultIn.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsultIn.consultType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsultIn.externalRouteID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsultIn.phoneNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsultIn.serviceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsultIn.userDefinedData">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsultIn.userID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDConferenceIn">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConferenceIn.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConferenceIn.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConferenceIn.consultCallID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCall.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCall.externalRouteID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCall.makeCallType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCall.phoneNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCall.serviceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCall.userID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCall.wrapRequiredFlag">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDRecorderData">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.VCI">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.VPI">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.agentId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.agentStation">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.audio_f">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.bitsPerSample">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.custName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.dualRec_f">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.duration">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.fileName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.fileTypeId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.key1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.key2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.key3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.lastUpdateDt">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.monitorClassId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.phone1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.recStoreId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.recordFormatId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.recordRate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.recorderId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.recorderStation">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.recordingIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.recordingTypeId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.requestType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.samplingRate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.seqNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.serviceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.startPosition">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.status">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecorderData.video_f">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDEmailNotify">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDEmailNotify.assistanceType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDEmailNotify.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDEmailNotify.notifyType">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDChatEntityPushURL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntityPushURL.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntityPushURL.entity">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntityPushURL.entityName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntityPushURL.url">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntityPushURL.urlLength">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.attachementId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.callDataDefId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.categoryArray">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.classId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.dispostionId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.fromDate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.indicator">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.ipAddress1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.ipAddress2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.listType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.localeUser">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.mailId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.mailQId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.messageId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.minMsgId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.recordCount">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.recordingComment">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.rowCount">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.searchField">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.searchText">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.searchType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.seqNum">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.serviceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.serviceType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.statusId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.statusReasonsType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.statusType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.toDate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.urlId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.userType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDInfo.userTypeMask">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDChatMessage">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatMessage.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatMessage.chatserverCSLPort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatMessage.chatserverIP">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatMessage.text">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDReason.reasonDescription">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDReason.reasonId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDReason.toParkState">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDDisposition">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDisposition.IDisposition">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDisposition.IType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDisposition.SDisposition">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDisposition.callBackFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDisposition.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDisposition.nextCallId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDisposition.saleFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDisposition.updatedCallInfoUserDefined">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDisposition.wrapRequiredFlag">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDKWInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWInfo.KWUserId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWInfo.KWWorkGroupId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWInfo.sessionId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWInfo.sessionType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDKWInfo.sipURI">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGWorkgroup">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGWorkgroup.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGWorkgroup.name">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDVoiceUnlock">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDVoiceUnlock.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDVoiceUnlock.callID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDVoiceLock">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDVoiceLock.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDVoiceLock.callID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGVMGroup">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGVMGroup.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGVMGroup.name">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDNotifyUrl">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyUrl.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyUrl.url">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyUrl.urlid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDNotifyDispositions">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyDispositions.callbackf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyDispositions.code">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyDispositions.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyDispositions.dispid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyDispositions.dispplanid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyDispositions.exclusionf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyDispositions.salesf">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UserLocale">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserLocale.language">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserLocale.localeId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserLocale.subLocaleId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserLocale.user_Id">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.ServerSettings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerSettings.debugLevel">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerSettings.logFileSize">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerSettings.machineName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerSettings.numLogFiles">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerSettings.portNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerSettings.secureDataTransmissionEnabled">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerSettings.serverId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerSettings.serverName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerSettings.serverType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerSettings.siteId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGService.serviceDescription">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGService.serviceID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDReserved">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDReserved.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDReserved.callID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGSwitch">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGSwitch.switchDesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGSwitch.switchID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Tenant">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Tenant.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Tenant.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Tenant.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Tenant.shortName">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGStorageMachineType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachineType.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachineType.machineTypeID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachineType.name">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGSite">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGSite.siteDesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGSite.siteID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGStorageMachine">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachine.IPAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachine.NTName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachine.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachine.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachine.onNetwork">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachine.server">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachine.site">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachine.storageMachineID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachine.storageMachineType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGStorageMachine.tenant">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Server">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.ipAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.machineName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.portNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.secureDataTransmissionEnabled">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.serverType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.site">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.value1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.value2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.value3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Server.value4">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.ServerType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerType.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerType.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServerType.name">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Site">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Site.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Site.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Site.name">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGRecStoreType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecStoreType.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecStoreType.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecStoreType.recStoreTypeID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGRecordingStore">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.NTShareName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.capacity">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.minDisk">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.port">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.recordingStoreID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.recordingStoreType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.sequence">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.server">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.spaceResume">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.storageMachine">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingStore.theSwitch">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGRecording">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.ANI">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.MBox">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.NTMachineName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.NTShareName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.accessed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.agent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.bitsPerSample">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.broadcast">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.calledParty">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.callingParty">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.catalogID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.comment">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.customerName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.deleteDt">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.dispositionCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.dispositionName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.dnis">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.duration">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.fileName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.fileSize">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.fileType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.forwardRouteAction">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.fromMBoxId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.fromSite">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.groupId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.hasVideo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.isMergedFile">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.key1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.key2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.key3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.lastAccessedDt">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.mediaSeq">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.mediaType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.msgFrom">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.notes">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.numberOfRecordings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.phoneNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.priority">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recFormatID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recStoreID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recStoreId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recStoreType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recStoreTypeName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recordRate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recorder">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recorderID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recordingClassDesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recordingClassID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recordingDate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recordingId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.recordingLength">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.samplingRate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.screenFileName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.service">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.serviceName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.site">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.statusId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.storageMacineId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.subject">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.tamperedWith">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.tenantID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.totalBytes">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user10">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user11">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user12">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user13">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user14">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user15">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user16">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user17">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user18">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user19">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user20">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user4">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user5">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user6">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user7">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user8">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecording.user9">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.AgentSetting">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.CBReloadOptionId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.CBSelfCallbackFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.aspectSocialInstanceURL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btn3CustHangupF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btn3wayF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btnBlindxferF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btnConsultF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btnDialF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btnHangUpF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btnHoldF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btnNextCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btnPlayF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btnRecordF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.btnXferF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.callDataDefId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.callDataDialogDuration">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.canChgDefBrowserSplit">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.defaultASMServiceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.displayCallbackTimeWarningF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.displayServiceRecordingF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.displayServicesF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.hidePhoneOnSpeedDial">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.maxChatCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.maxEmailCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.maxIMCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.maxTotalCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.maxWorkflowCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.maxWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.minWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.multiLine">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.outgoingMask">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.park">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.parkDelay">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.replayAgentRecording">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.replayAgentVM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.replayServiceVM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.reqDispositionF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.reqWrapF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.requireServiceF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.serializeCallDataF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.showCallDataDialogF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.transitionToParkForAspectSocial">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.userId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.warmTransfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.workgroupId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.wrapExceedAction">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentSetting.wrapWarningDelay">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Agent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.CBReloadOptionId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.CBSelfCallbackFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.allowAgentToAgentIM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.allowAgentToSupervisorIM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.allowAskAnExpertInPark">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.allowInboundIM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.allowIntraIM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.allowNotReadyFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.aspectSocialInstanceURL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.auditableAlertForAcceptCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.autoAccept">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.beginIdleTimeoutOnWrap">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btn3CustHangupF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btn3wayF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btnBlindxferF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btnConsultF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btnDialF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btnHangUpF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btnHoldF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btnNextCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btnPlayF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btnRecordF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.btnXferF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.callDataDefId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.callDataDialogDuration">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.canChgDefBrowserSplit">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.defaultASMServiceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.displayCallbackTimeWarningF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.displayServiceRecordingF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.displayServicesF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.enableucf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.hidePhoneOnSpeedDial">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.maxChatCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.maxEmailCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.maxIMCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.maxTotalCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.maxWorkflowCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.maxWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.minWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.multiLine">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.multiLineNoAnsTimeOut">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.multiLineRRDestTypeVoice">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.multiLineRRDestVoice">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.notreadyIfReject">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.onDemandFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.outgoingMask">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.park">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.parkDelay">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.personalGreetingsF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.replayAgentRecording">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.replayAgentVM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.replayServiceVM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.reqDispositionF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.reqWrapF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.requireRejectReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.requireServiceF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.routeAccessId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.serializeCallDataF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.showCallDataDialogF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.taskOfferedTimeout">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.transitionToParkForAspectSocial">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.useWorkgroupSetting">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.userId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.warmTransfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.workgroupId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.wrapExceedAction">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Agent.wrapWarningDelay">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.PersonalGreeting">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.PersonalGreeting.fileName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.PersonalGreeting.pgDescription">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.PersonalGreeting.pgId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.PersonalGreeting.pgInstructions">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.PersonalGreeting.pgName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.PersonalGreeting.recordingComment">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.PersonalGreeting.recordingId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.PersonalGreeting.userId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.OCSConfig">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.OCSConfig.imtimeout">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.OCSConfig.ipAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.OCSConfig.numbertodisplay">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.OCSConfig.port">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.OCSConfig.protocol">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.OCSConfig.retryinterval">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.OCSConfig.serverId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.NLPResult">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPResult.URL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPResult.answer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPResult.question">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPResult.questionID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPResult.rank">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.NLPCategory">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPCategory.URL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPCategory.answer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPCategory.answerID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPCategory.question">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPCategory.questionID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPCategory.rank">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.NLPCategory.summary">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGMonitorClass">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGMonitorClass.agent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGMonitorClass.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGMonitorClass.monitorClassID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGMonitorClass.qa">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGMonitorClass.supervisor">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.LoggedInUsersIM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsersIM.emailAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsersIM.firstName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsersIM.homePhoneNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsersIM.imURL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsersIM.lastName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsersIM.mobilePhoneNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsersIM.officePhoneNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsersIM.userId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsersIM.userType">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.LoggedInUsers">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsers.agentindex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsers.userfname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsers.userid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsers.userlname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.LoggedInUsers.usertype">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.AgentKWUserInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentKWUserInfo.kwIMConnectSIPURL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentKWUserInfo.kwLastAccessedTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentKWUserInfo.kwPhoneNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentKWUserInfo.kwuserId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentKWUserInfo.skillids">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentKWUserInfo.userId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentKWUserInfo.userfname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentKWUserInfo.userlname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentKWUserInfo.workgroupId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.KWSkill">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.KWSkill.desc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.KWSkill.id">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGRecordingTypes">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingTypes.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingTypes.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGRecordingTypes.recordingTypeID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.CallDataDefFields">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallDataDefFields.calldatadefid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallDataDefFields.fieldorder">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallDataDefFields.fieldtype">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallDataDefFields.label">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallDataDefFields.mediatypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallDataDefFields.reservedword">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDUpdateDispositionPlan">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateDispositionPlan.planID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.SGDispositionCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGDispositionCode.dispPlan">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGDispositionCode.dispositionCodeDescription">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.SGDispositionCode.dispositionCodeID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDWrapTimeout">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDWrapTimeout.agentDispExpected">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDWrapTimeout.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDWrapTimeout.callID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDWrap">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDWrap.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDWrap.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDWrap.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.VoiceMail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.VoiceMail.bitspersample">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.VoiceMail.messagesize">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.VoiceMail.samplingrate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.VoiceMail.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.VoiceMail.vmmsgs">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UserVoiceMail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserVoiceMail.ani">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserVoiceMail.bitspersample">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserVoiceMail.fromdate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserVoiceMail.fullfilename">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserVoiceMail.messagedt">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserVoiceMail.messageid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserVoiceMail.samplingrate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserVoiceMail.statusid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserVoiceMail.todate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UserVoiceMail.userid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.User">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.agentindex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.allowAgentToAgentIM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.allowAgentToSupervisorIM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.allowAskAnExpertInPark">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.allowInboundIM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.allowNotReadyFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.aspectSocialInstanceURL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.auditableAlertForAcceptCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.autoAccept">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.beginIdleTimeoutOnWrap">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.defaultASMServiceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.emailaddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.emailprotocolid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.enableucf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.ipaddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.ldapuserid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.maxWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.maxchatcalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.maxemailcalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.maximcalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.maxtotalcalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.maxworkflowcalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.minWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.multiLine">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.notreadyIfReject">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.onDemandFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.outgoingmask">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.park">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.parkdelay">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.password">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.pgAllowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.requireRejectReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.routeaccessid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.station">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.status">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.taskOfferedTimeout">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.transitionToParkForAspectSocial">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.userfname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.userfullname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.userid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.userlname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.usertypemask">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.warmtransfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.workgroupid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.User.wrapExceedAction">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDUpdateDisposition">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateDisposition.dispID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDUpdateCallDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateCallDataDef.callDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateCallDataDef.callDataDefFields">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateCallDataDef.callDataDefId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDef.calldatadefid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDef.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyCallDataDef.tabledefid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDUpdateService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateService.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateService.callDataDefFields">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateService.dispositions">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateService.serviceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateService.serviceInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateService.serviceSettings">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDNotifyService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyService.dispplanid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyService.outgoingmask">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyService.servicec">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyService.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyService.servicetypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyService.timezoneid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.allowkb">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.allowphonechangeinpreview">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.appdesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btnblindxferf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btncallbackf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btnconsultf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btndialf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btnhangupf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btnholdf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btnnextcall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btnplayf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btnrecordf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btnthreecusthangupf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btnthreewayf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.btnxferf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.callbackdays">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.calldatadefid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.calldatadialogduration">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.canaddattachments">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.cbselfcallbackflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.cbservicecallbackflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.chatblindtransferallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.chatdisconnectallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.chatrecordallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.chattransferallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.displaycallbacktimewarningf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.displayservicerecordingf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.displayservicesf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.hidePhoneOnSpeedDial">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.lyricallscriptid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.lyricallscriptname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.mailclientid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.maxWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.minWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.pbxaodserviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.previewtimeoutinsecs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.replayAgentRecording">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.replayAgentVM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.replayServiceVM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.reqdispositionf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.requireservicef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.reqwrapf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.scriptclassname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.scriptcommandline">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.scriptscreenpopmethod">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.scriptscreenpopnotifytype">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.servicetypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.showcalldatadialogf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.timedpreviewflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.userid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.warmtransfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.webCollabAgentLedTypeId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.wrapExceedAction">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyServiceSettings.wrapwarningdelay">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.URL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.URL.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.URL.url">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.URL.urlid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDRealTimePort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.alawMuLaw">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.codecId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.echoCancel">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.ipAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.ipPrecedence">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.jitterBufMinDelay">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.payloadBytes">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.rfu1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.rfu2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.rfu3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.rfu4">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.rfu5">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.rtpPort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.rtpRedundancy">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.silenceCompression">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRealTimePort.typeOfService">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDActive">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDActive.IPAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDActive.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDActive.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDActive.mediaType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDActive.portNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDActive.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDSwitch">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDSwitch.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDSwitch.switchId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.StatusReasons">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.StatusReasons.agentstatusid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.StatusReasons.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.StatusReasons.reasonid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.ServiceXfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceXfer.emailAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceXfer.servicec">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceXfer.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceXfer.servicetypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceXfer.userid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceXfer.xferlisttype">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.ServiceVoiceMail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceVoiceMail.ani">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceVoiceMail.bitspersample">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceVoiceMail.fullfilename">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceVoiceMail.messagedt">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceVoiceMail.messageid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceVoiceMail.samplingrate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceVoiceMail.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceVoiceMail.statusid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceVoiceMail.userid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.ServiceSettings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.allowkb">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.allowphonechangeinpreview">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.appdesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btnblindxferf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btncallbackf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btnconsultf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btndialf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btnhangupf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btnholdf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btnnextcall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btnplayf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btnrecordf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btnthreecusthangupf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btnthreewayf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.btnxferf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.callbackdays">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.calldatadefid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.calldatadialogduration">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.canaddattachments">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.cbselfcallbackflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.cbservicecallbackflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.chatblindtransferallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.chatdisconnectallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.chatrecordallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.chattransferallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.displayCallbackTimeWarningF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.displayservicerecordingf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.displayservicesf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.hidePhoneOnSpeedDial">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.lyricallscriptid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.lyricallscriptname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.mailclientid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.maxWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.minWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.pbxAODServiceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.previewtimeoutinsecs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.replayAgentRecording">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.replayAgentVM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.replayServiceVM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.reqdispositionf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.requireservicef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.reqwrapf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.scriptclassname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.scriptcommandline">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.scriptscreenpopmethod">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.scriptscreenpopnotifytype">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.servicetypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.showcalldatadialogf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.timedpreviewflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.userid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.warmtransfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.webCollabAgentLedTypeId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.wrapExceedAction">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceSettings.wrapwarningdelay">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.ServiceEmailQueues">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceEmailQueues.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceEmailQueues.emailaddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceEmailQueues.mailqueueid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.ServiceEmailQueues.serviceid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Service">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Service.auditableAlertForAcceptCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Service.dispplanid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Service.outgoingmask">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Service.servicec">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Service.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Service.servicetypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Service.timezoneid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDRemoveService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRemoveService.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRemoveService.serviceID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.RecordingComments">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.RecordingComments.comment">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.RecordingComments.monitorclassid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDRecordState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordState.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordState.autoRecording">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordState.fileName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordState.mediaType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordState.recordingIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordState.recordingRate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordState.recordingSeq">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordState.recordingState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecordState.recordingStoreId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDPasscode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDPasscode.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDPasscode.code">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDNotReady">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotReady.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotReady.statusReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotReady.toParkState">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDNotifyDispositionPlan">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyDispositionPlan.desc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyDispositionPlan.dispid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNotifyDispositionPlan.dispplanid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDNewService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNewService.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNewService.callDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNewService.callDataDefFields">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNewService.dispositionPlan">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNewService.dispositions">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNewService.serviceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNewService.serviceInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDNewService.serviceSettings">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDMonitorState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitorState.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitorState.ipAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitorState.monitoringSeq">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitorState.monitoringState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitorState.portNum">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.MonitorClass">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MonitorClass.monitorclassdesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MonitorClass.monitorclassid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.MediaRecordings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.accessf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.bitspersample">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.comment">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.custname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.filename">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.fromdate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.key1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.key2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.key3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.mediaseq">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.mediatypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.minmsgid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.monitorclassdesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.monitorclassid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.phone">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.recordcount">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.recordingbytes">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.recordingsecs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.recordrate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.recseq">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.rowcount">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.samplingrate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.servicec">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.startdt">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.todate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.userid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.MediaRecordings.usertypemask">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDLogout">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLogout.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLogout.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDLoginConf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLoginConf.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLoginConf.agentLoginName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLoginConf.agentType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLoginConf.ntSwitchId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLoginConf.referenceID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDLogin">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLogin.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLogin.enableUCF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLogin.ntSwitchId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLogin.statusReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLogin.systemFeature">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDLoggingIn">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLoggingIn.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDLoggingIn.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDIdle">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDIdle.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDIdle.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDHeld">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDHeld.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDHeld.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDHeld.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.GetIdDesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.GetIdDesc.desc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.GetIdDesc.id">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Externals">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Externals.externalroutedesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Externals.externalrouteid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Externals.externalroutetype">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Externals.phonenum">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Externals.routeaccessid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Externals.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Externals.userid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDExternalRoute">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExternalRoute.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExternalRoute.externalRequestType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExternalRoute.externalRouteId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.External">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.External.externalid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.External.externalroutedesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.External.externalrouteid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.External.externalroutetype">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.External.phonenum">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.External.routeaccessid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.External.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.External.userid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDError">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDError.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDError.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDError.currentLicenseCount">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDError.eventCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDError.failCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDError.failReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDError.licensedCount">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDError.localizedFailReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDError.mbox">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDError.serviceId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Email">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Email.closing">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Email.defaultflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Email.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Email.greeting">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Email.id">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Dispositions">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Dispositions.callbackf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Dispositions.code">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Dispositions.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Dispositions.dispid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Dispositions.dispplanid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Dispositions.exclusionf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Dispositions.salesf">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.DispositionPlan">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.DispositionPlan.desc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.DispositionPlan.dispid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.DispositionPlan.dispplanid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Disposition">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Disposition.callbackf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Disposition.code">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Disposition.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Disposition.dispid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Disposition.exclusionf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Disposition.salesf">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.DirectorXfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.DirectorXfer.agentindex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.DirectorXfer.emailAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.DirectorXfer.securityid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.DirectorXfer.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.DirectorXfer.userfname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.DirectorXfer.userid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.DirectorXfer.userlname">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDDirectorAck">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDirectorAck.ackData">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDirectorAck.directorId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDDialing">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDialing.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDialing.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDDialing.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDConsult">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsult.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsult.consultCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsult.consultedAgentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsult.originalCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDConsult.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDCallXferred">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallXferred.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallXferred.consultCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallXferred.newCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallXferred.originalAgentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallXferred.originalCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallXferred.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDCallReleasedXferred">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallReleasedXferred.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallReleasedXferred.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallReleasedXferred.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDCallReRouted">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallReRouted.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallReRouted.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallReRouted.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.CallLogger">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallLogger.callloggermode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallLogger.callloggertype">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.CallDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallDataDef.calldatadefid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallDataDef.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallDataDef.tabledefid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDCallClear">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallClear.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallClear.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallClear.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.CallBackService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallBackService.allowcallbacks">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallBackService.callbackdays">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallBackService.cbselfcallbackflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallBackService.cbservicecallbackflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallBackService.displayCallbackTimeWarningF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallBackService.servicec">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallBackService.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CallBackService.userid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Attachemnts">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Attachemnts.createddt">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Attachemnts.filename">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Attachemnts.filesize">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Attachemnts.filesummary">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.AgentXfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentXfer.agentindex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentXfer.emailAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentXfer.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentXfer.userfname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentXfer.userid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentXfer.userlname">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDActivateCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDActivateCall.callID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.EmailSubject">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.EmailSubject.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.EmailSubject.signatureid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.EmailSubject.subject">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.BarcodeMode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.BarcodeMode.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.BarcodeMode.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.BarcodeMode.name">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.CopyCountMode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CopyCountMode.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CopyCountMode.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.CopyCountMode.name">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.Catalog">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.appendCopyCountMode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.assignLabelToVolume">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.autoCut">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.barCodeMode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.catalog_BaseAlpha">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.catalog_BaseNum">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.catalog_Index">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.generateLabel">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.id">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.labelFileName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.labelFilePath">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.labelPosId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.labelServer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.numberOfCopies">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.printRecStore">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.recStorePosId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.Catalog.writeVolumeHeaderFile">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.AgentType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentType.type">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.AgentType.userid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.agentType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.ansCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.cat">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.curremailsubject">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentActivateCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentAgentXfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentAttachemnts">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentCallBackService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentCallClear">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentCallDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentCallLogger">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentCallReRouted">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentCallReleasedXferred">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentCallType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentCallXferred">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentConsult">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentCtiUpDown">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentDialing">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentDirectorAck">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentDirectorXfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentDisposition">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentDispositionPlan">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentDispositions">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentEmail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentError">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentExternal">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentExternalRoute">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentExternals">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentGatewayUpDown">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentGetIdDesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentHeld">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentIdle">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentLoggingIn">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentLoginAgent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentLoginConf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentLogoffPendingReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentLogout">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentMediaRecordings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentMonitorClass">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentMonitorState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentNewService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentNotReady">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentPasscode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentPreview">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentRecordState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentRecordingComments">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentRemoveService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentServiceEmailQueues">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentServiceSettings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentServiceVoiceMail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentServiceXfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentStatusReasons">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentSwitchUpDown">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentSystemWaitSwitchID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentUDActive">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentUDChatEntity">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentUDRealTimePort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentURL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentUpdataService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentUpdateCallDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentUpdateDisposition">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentUser">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentUserVoiceMail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentVoicemail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentWrap">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.currentWrapTimeout">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.dispositionCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.field1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.field2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.field3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.forwardEmail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.forwardEmailSent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.kwSkill">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.kwUserInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.loggedInUsers">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.loggedInUsersIM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.monclass">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.nlpCategory">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.nlpResult">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.osConfig">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.personalGreeting">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.psAgent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.pwAgentSetting">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.recStoreType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.recording">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.recstore">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.reserved">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.serv">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.serverSettings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.systemLocale">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.ten">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.udSite">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.updateServiceCallDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.updateServiceCallDataDefFields">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.updateServiceDispositionPlan">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.updateServiceDispositions">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.updateServiceServiceSettings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.updateServiceUrl">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.updateSeviceService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.vmgrp">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.voiceLock">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.voiceUnlock">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDState.wrkgrp">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDAnswerCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAnswerCall.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAnswerCall.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAnswerCall.rejectReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAnswerCall.result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDChatEntity">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntity.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntity.entity">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntity.entityID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatEntity.name">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDForwardEmail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmail.agentId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmail.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmail.externalEmail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmail.forwardServiceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmail.forwardType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmail.fromAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmail.messageId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmail.queueId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmail.serviceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmail.userDefinedData">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDForwardEmailSent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmailSent.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmailSent.forwardType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmailSent.messageId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDForwardEmailSent.queueId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDRecStoreType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecStoreType.RSTName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecStoreType.RSTdesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDRecStoreType.RSTid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDSite">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDSite.siteDescription">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDSite.siteId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDExclude">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExclude.IAppId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExclude.IType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExclude.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExclude.endDate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExclude.startDate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExclude.timeZoneID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDExclude.value">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDChatConnect">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatConnect.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatConnect.chatserverCSLPort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatConnect.chatserverIP">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatConnect.entityType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatConnect.firstName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatConnect.lastName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatConnect.serviceId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDFocus">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDFocus.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDFocus.callIdTo">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDParm">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDParm.callId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDUpdateRequest">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.funcCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.parm1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.parm10">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.parm2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.parm3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.parm4">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.parm5">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.parm6">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.parm7">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.parm8">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.parm9">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.sparm1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.sparm2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.sparm3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdateRequest.sparm4">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDCallback">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallback.aodServiceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallback.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallback.callbackName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallback.dateTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallback.dialMode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallback.memo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallback.phoneNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallback.returnToSameAgent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallback.snoozeTimeInMins">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDCallback.timeZoneID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDScreenMonitor">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.funcCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.monitorAgentIp">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.recordingKey">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.seqNum">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.serverId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.serviceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.siteId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.status">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.tenantId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.videoBytes">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.videoSecs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenMonitor.videoStartDt">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDChatURL">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatURL.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatURL.chatserverCSLPort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatURL.chatserverIP">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDChatURL.url">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDProperty">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDProperty.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDProperty.value">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDScreenRecorderData">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenRecorderData.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDScreenRecorderData.commandType">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDWarning">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDWarning.warnType">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDMonitor">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitor.agentID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitor.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitor.agentStationID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitor.monitoringID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitor.monitoringStationID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDMonitor.requestType">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDTransfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDTransfer.callInfoUserDefined">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDTransfer.conferenceCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDTransfer.originalCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDTransfer.serviceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDTransfer.thirdParyCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDTransfer.transferType">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDStateInput">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDStateInput.stateType">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDUpdate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDUpdate.updateCommand">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.UDAgentInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.ATMAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.agentLoginName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.agentMbox">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.agentRouteAccessID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.agentType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.agentVCI">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.agentVPI">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.agentWorkgroupID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.codec">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.errorMessage">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.firstName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.ipAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.lastName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.loginType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.ntSwitchID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.passcode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.password">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.payloadLength">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.referenceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.rtpPort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.serverType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.UDAgentInfo.stationId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.registerCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.updateCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getStateCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getStateCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.getStateCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.availableCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.transferCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getTimeZoneCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getTimeZoneCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.getTimeZoneCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.monitorCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.warningCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.authenticateCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.recordScreenCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.unRegisterCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.registerExCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.chatSendURLCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.monitorScreenCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getExpertsCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getExpertsCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.getExpertsCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.scheduleCallbackCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.updateVMNCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.hangupCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.focusCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.chatConnectCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.excludeContactCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getAgentStateCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getAgentStateCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.getAgentStateCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.updateNPCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.retrieveHoldCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.beginKWSessionCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.callOutcomeCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.requestLogoutCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.chatSendMessageCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getRemoteInfoCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getRemoteInfoCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.getRemoteInfoCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.forwardEmailSentCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.chatsvrSendURLCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.emailNotifyCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.endKWSessionCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getInfoCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.getInfoCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.getInfoCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.keepAliveCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.recordCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.suspendMultiAppearancesCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.resumeMultiAppearancesCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.dialCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.conferenceCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.holdCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.consultCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.playDigitsCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.forwardEmailCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.answerCallCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.externalRouteCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.chatsvrEntityAddedCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.refreshPersonalGreetingsCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.requestEmailSelfServiceCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.initiateKWVoiceConsultCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.initiateKWVoiceDialCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.cancelRequestLogoutCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.chatsvrSendMessageCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.chatsvrSendListOfChatEntitesCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.requestAgentStatsCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.chatsvrEntityRemovedCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.requestUnavailableCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.recordingManagementCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.recordingManagementCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPAgentWS.recordingManagementCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.cancelRequestUnavailableCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.requestEmailReviewCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPAgentWS.chatsvrDialRequestCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.EventServiceService">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.#ctor">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPEventsWS.EventServiceService.unregisterAgentEventSubscriberCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAllAgentEventSubscriberCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAgentEventAckCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAgentEventCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPEventsWS.EventServiceService.unregisterAlertEventSubscriberCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAlertEventSubscriberCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAlertEventCompleted">
            <remarks/>
        </member>
        <member name="E:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAgentEventSubscriberCompleted">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.unregisterAgentEventSubscriber(System.Int32)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.unregisterAgentEventSubscriberAsync(System.Int32)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.unregisterAgentEventSubscriberAsync(System.Int32,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAllAgentEventSubscriber">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAllAgentEventSubscriberAsync">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAllAgentEventSubscriberAsync(System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAgentEventAck(System.Int32,System.Int64)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAgentEventAckAsync(System.Int32,System.Int64)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAgentEventAckAsync(System.Int32,System.Int64,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAgentEvent(System.Int32)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAgentEventAsync(System.Int32)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAgentEventAsync(System.Int32,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.unregisterAlertEventSubscriber(System.Int32)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.unregisterAlertEventSubscriberAsync(System.Int32)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.unregisterAlertEventSubscriberAsync(System.Int32,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAlertEventSubscriber">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAlertEventSubscriberAsync">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAlertEventSubscriberAsync(System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAlertEvent(System.Int32)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAlertEventAsync(System.Int32)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.getNextAlertEventAsync(System.Int32,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAgentEventSubscriber(System.String)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAgentEventSubscriberAsync(System.String)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.registerAgentEventSubscriberAsync(System.String,System.Object)">
            <remarks/>
        </member>
        <member name="M:SalesForceTestRequest.EPEventsWS.EventServiceService.CancelAsync(System.Object)">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.AgentEvent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.AgentEvent.agentId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.AgentEvent.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.AgentEvent.eventDescription">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.AgentEvent.eventId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.AgentEvent.eventTimestamp">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.AgentEvent.payload">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.EventServiceFault">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.Vector">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.Vector.item">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDVoiceUnlock">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDVoiceUnlock.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDVoiceUnlock.callID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDRemoveTimeZone">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRemoveTimeZone.timeZoneID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDUpdateTimeZone">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateTimeZone.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateTimeZone.timeZoneID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateTimeZone.timeZoneInfo">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.DSTOff_GMT">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.DSTOff_Month">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.DSTOff_StartDay">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.DSTOn_DayofWeek">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.DSTOn_GMT">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.DSTOn_Month">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.DSTOn_StartDay">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.DST_Observed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.GMT_Offset">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.identifier">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyTimeZone.timeZoneID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNewTimeZone">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNewTimeZone.timeZone">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNewTimeZone.timeZoneInfo">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDVoiceLock">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDVoiceLock.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDVoiceLock.callID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDWrapTimeout">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDWrapTimeout.agentDispExpected">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDWrapTimeout.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDWrapTimeout.callID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDReserved">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDReserved.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDReserved.callID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDForwardEmailAck">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDForwardEmailAck.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDForwardEmailAck.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDForwardEmailAck.messageId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDForwardEmailAck.queueId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDAudioPathConnection">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAudioPathConnection.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAudioPathConnection.audioPath">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNotifyUrl">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyUrl.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyUrl.url">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyUrl.urlid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDDialRequest">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDDialRequest.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDDialRequest.phoneNumber">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCCDown">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCCDown.timeout">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDEntitySendText">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntitySendText.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntitySendText.entity">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntitySendText.entityName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntitySendText.text">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntitySendText.textLength">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDEntityPushUrl">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntityPushUrl.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntityPushUrl.entity">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntityPushUrl.entityName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntityPushUrl.url">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntityPushUrl.urlLength">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDEntityList">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntityList.entities">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDEntity">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntity.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntity.entity">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntity.entityID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEntity.name">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDEMailServiceStatisticsColl">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEMailServiceStatisticsColl.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEMailServiceStatisticsColl.lstEMailServiceStatistics">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDEMailServiceStatistics">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEMailServiceStatistics.numberOfEmailsInPendingProcessQ">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEMailServiceStatistics.numberOfEmailsInReviewQ">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEMailServiceStatistics.queuId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEMailServiceStatistics.queueName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDEMailServiceStatistics.serviceID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDAgentStatsCollection">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStatsCollection.UDAgentStats">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStatsCollection.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStatsCollection.lstAgentStatistics">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDAgentStats">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.CTICalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.EMailCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.IMCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.acdCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.activeSeconds">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.agdCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.aodCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.chatCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.didCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.idleSeconds">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.loggedInSeconds">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.manualCalls">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.manualSeconds">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.notReadySeconds">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.numberOfCallbacks">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.numberOfRefusals">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.numberOfSuccesses">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.otherSeconds">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.parkSeconds">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.service">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.serviceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.station">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.statusSeconds">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.statusStartTimeMilitary">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.userId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentStats.wrapSeconds">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDScreenCapture">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.agentStation">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.callId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.funcCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.key">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.monitorAgentIp">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.seqNum">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.serverId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.serviceId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.siteId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.status">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.supervisorIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.supervisorStation">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.tenantId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenCapture.url">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDDirectorAck">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDDirectorAck.ackData">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDDirectorAck.directorId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDBadPassCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDBadPassCode.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDBadPassCode.codeShouldBe">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDPasscode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDPasscode.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDPasscode.code">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDRealTimePort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.alawMuLaw">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.codecId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.echoCancel">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.ipAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.ipPrecedence">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.jitterBufMinDelay">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.payloadBytes">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.rfu1">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.rfu2">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.rfu3">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.rfu4">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.rfu5">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.rtpPort">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.rtpRedundancy">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.silenceCompression">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRealTimePort.typeOfService">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDUpdateDispositionPlan">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateDispositionPlan.planID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDSystemWait">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDSystemWait.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDSystemWait.switchID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDPreview">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDPreview.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDPreview.callInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDPreview.originalServiceName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDPreview.preemptive">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDPreview.serviceName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDPreview.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfo.aodData">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfo.callbackData">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfo.emailData">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfo.otherData">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfo.screenData">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfo.userDefinedData">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallInfoAod">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoAod.callTableRecordNum">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoAod.storeManagerId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoAod.tableName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoAod.targetManagerId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallInfoCallback">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoCallback.callBackFlag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoCallback.callbackMemo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoCallback.dialModeCode">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallInfoEmail">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoEmail.forwardToMBox">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoEmail.fromAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoEmail.mailQueId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoEmail.messageId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoEmail.senderCC">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoEmail.senderDateTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoEmail.senderName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoEmail.senderTo">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallInfoOther">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoOther.callCategory">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoOther.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoOther.callType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoOther.eventCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoOther.originalServiceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoOther.serviceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoOther.timeZoneID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallInfoScreen">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoScreen.ani">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoScreen.callerID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoScreen.dnis">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoScreen.firstName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoScreen.lastName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoScreen.phoneNumber">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallInfoUserDefined">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoUserDefined.UDCallInfoUserDefinedItem">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoUserDefined.userDefinedItems">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallInfoUserDefinedItem">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoUserDefinedItem.isMasked">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoUserDefinedItem.key">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallInfoUserDefinedItem.value">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDConference">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConference.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConference.conferenceAgentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConference.conferenceCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConference.consultCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConference.originalCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConference.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDAgentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDAgentIndex.agentIndex">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDWrap">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDWrap.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDWrap.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDWrap.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDIdle">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDIdle.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDIdle.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDLogout">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLogout.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLogout.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDExternalRoute">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDExternalRoute.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDExternalRoute.externalRequestType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDExternalRoute.externalRouteId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDConsult">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConsult.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConsult.consultCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConsult.consultedAgentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConsult.originalCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDConsult.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDSwitch">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDSwitch.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDSwitch.switchId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDActive">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDActive.IPAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDActive.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDActive.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDActive.mediaType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDActive.portNumber">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDActive.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallReRouted">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallReRouted.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallReRouted.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallReRouted.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNotReady">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotReady.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotReady.statusReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotReady.toParkState">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallXferred">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallXferred.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallXferred.consultCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallXferred.newCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallXferred.originalAgentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallXferred.originalCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallXferred.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNewService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNewService.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNewService.callDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNewService.callDataDefFields">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNewService.dispositionPlan">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNewService.dispositions">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNewService.serviceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNewService.serviceInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNewService.serviceSettings">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDef.calldatadefid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDef.name">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDef.tabledefid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDefFields">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDefFields.calldatadefid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDefFields.fieldorder">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDefFields.fieldtype">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDefFields.label">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDefFields.mediatypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyCallDataDefFields.reservedword">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNotifyDispositionPlan">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyDispositionPlan.desc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyDispositionPlan.dispid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyDispositionPlan.dispplanid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNotifyDispositions">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyDispositions.callbackf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyDispositions.code">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyDispositions.description">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyDispositions.dispid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyDispositions.dispplanid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyDispositions.exclusionf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyDispositions.salesf">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNotifyService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyService.dispplanid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyService.outgoingmask">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyService.servicec">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyService.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyService.servicetypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyService.timezoneid">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.allowkb">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.allowphonechangeinpreview">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.appdesc">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btnblindxferf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btncallbackf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btnconsultf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btndialf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btnhangupf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btnholdf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btnnextcall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btnplayf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btnrecordf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btnthreecusthangupf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btnthreewayf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.btnxferf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.callbackdays">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.calldatadefid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.calldatadialogduration">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.canaddattachments">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.cbselfcallbackflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.cbservicecallbackflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.chatblindtransferallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.chatdisconnectallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.chatrecordallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.chattransferallowed">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.displaycallbacktimewarningf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.displayservicerecordingf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.displayservicesf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.hidePhoneOnSpeedDial">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.lyricallscriptid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.lyricallscriptname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.mailclientid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.maxWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.minWrapTime">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.pbxaodserviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.previewtimeoutinsecs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.replayAgentRecording">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.replayAgentVM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.replayServiceVM">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.reqdispositionf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.requireservicef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.reqwrapf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.scriptclassname">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.scriptcommandline">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.scriptscreenpopmethod">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.scriptscreenpopnotifytype">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.serviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.servicetypeid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.showcalldatadialogf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.timedpreviewflag">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.userid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.warmtransfer">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.webCollabAgentLedTypeId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.wrapExceedAction">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDNotifyServiceSettings.wrapwarningdelay">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDLogin">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLogin.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLogin.enableUCF">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLogin.ntSwitchId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLogin.statusReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLogin.systemFeature">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDScreenPop">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.callInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.originalServiceName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.pbxaodserviceid">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.playAudioAlert">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.preemptive">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.requiredRejectReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.requiredResponse">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.serviceName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.statusReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.switchCallID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.timeoutForAcceptCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDScreenPop.timeoutForAudioAlert">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallClear">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallClear.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallClear.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallClear.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDLoginConf">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLoginConf.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLoginConf.agentLoginName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLoginConf.agentType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLoginConf.ntSwitchId">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLoginConf.referenceID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDRemoveService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRemoveService.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRemoveService.serviceID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDLoggingIn">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLoggingIn.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDLoggingIn.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDUpdateDisposition">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateDisposition.dispID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDError">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDError.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDError.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDError.currentLicenseCount">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDError.eventCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDError.failCode">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDError.failReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDError.licensedCount">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDError.localizedFailReason">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDError.mbox">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDError.serviceId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDMonitorState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDMonitorState.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDMonitorState.ipAddress">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDMonitorState.monitoringSeq">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDMonitorState.monitoringState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDMonitorState.portNum">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDRecordState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRecordState.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRecordState.autoRecording">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRecordState.fileName">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRecordState.mediaType">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRecordState.recordingIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRecordState.recordingRate">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRecordState.recordingSeq">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRecordState.recordingState">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDRecordState.recordingStoreId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDUpdateService">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateService.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateService.callDataDefFields">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateService.dispositions">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateService.serviceID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateService.serviceInfo">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateService.serviceSettings">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDActivateCall">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDActivateCall.callID">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDHeld">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDHeld.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDHeld.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDHeld.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDUpdateCallDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateCallDataDef.callDataDef">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateCallDataDef.callDataDefFields">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDUpdateCallDataDef.callDataDefId">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDCallReleasedXferred">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallReleasedXferred.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallReleasedXferred.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDCallReleasedXferred.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.UDDialing">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDDialing.agentIndex">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDDialing.callID">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.UDDialing.statusReason">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.AlertEvent">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.AlertEvent.payload">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.unregisterAgentEventSubscriberCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.registerAllAgentEventSubscriberCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.registerAllAgentEventSubscriberCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.registerAllAgentEventSubscriberCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.getNextAgentEventAckCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.getNextAgentEventAckCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.getNextAgentEventAckCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.getNextAgentEventCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.getNextAgentEventCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.getNextAgentEventCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.unregisterAlertEventSubscriberCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.registerAlertEventSubscriberCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.registerAlertEventSubscriberCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.registerAlertEventSubscriberCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.getNextAlertEventCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.getNextAlertEventCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.getNextAlertEventCompletedEventArgs.Result">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.registerAgentEventSubscriberCompletedEventHandler">
            <remarks/>
        </member>
        <member name="T:SalesForceTestRequest.EPEventsWS.registerAgentEventSubscriberCompletedEventArgs">
            <remarks/>
        </member>
        <member name="P:SalesForceTestRequest.EPEventsWS.registerAgentEventSubscriberCompletedEventArgs.Result">
            <remarks/>
        </member>
    </members>
</doc>
