---
title: CoachingAPI
---
## CoachingAPI

All URIs are relative to *https://api.mypurecloud.com*

| Method | Description |
| ------------- | ------------- |
| [**deleteCoachingAppointment**](CoachingAPI.html#deleteCoachingAppointment) | Delete an existing appointment |
| [**deleteCoachingAppointmentAnnotation**](CoachingAPI.html#deleteCoachingAppointmentAnnotation) | Delete an existing annotation |
| [**getCoachingAppointment**](CoachingAPI.html#getCoachingAppointment) | Retrieve an appointment |
| [**getCoachingAppointmentAnnotation**](CoachingAPI.html#getCoachingAppointmentAnnotation) | Retrieve an annotation. |
| [**getCoachingAppointmentAnnotations**](CoachingAPI.html#getCoachingAppointmentAnnotations) | Get a list of annotations. |
| [**getCoachingAppointmentStatuses**](CoachingAPI.html#getCoachingAppointmentStatuses) | Get the list of status changes for a coaching appointment. |
| [**getCoachingAppointments**](CoachingAPI.html#getCoachingAppointments) | Get appointments for users and optional date range |
| [**getCoachingAppointmentsMe**](CoachingAPI.html#getCoachingAppointmentsMe) | Get my appointments for a given date range |
| [**getCoachingNotification**](CoachingAPI.html#getCoachingNotification) | Get an existing notification |
| [**getCoachingNotifications**](CoachingAPI.html#getCoachingNotifications) | Retrieve the list of your notifications. |
| [**patchCoachingAppointment**](CoachingAPI.html#patchCoachingAppointment) | Update an existing appointment |
| [**patchCoachingAppointmentAnnotation**](CoachingAPI.html#patchCoachingAppointmentAnnotation) | Update an existing annotation. |
| [**patchCoachingAppointmentStatus**](CoachingAPI.html#patchCoachingAppointmentStatus) | Update the status of a coaching appointment |
| [**patchCoachingNotification**](CoachingAPI.html#patchCoachingNotification) | Update an existing notification. |
| [**postCoachingAppointmentAnnotations**](CoachingAPI.html#postCoachingAppointmentAnnotations) | Create a new annotation. |
| [**postCoachingAppointments**](CoachingAPI.html#postCoachingAppointments) | Create a new appointment |
{: class="table-striped"}

<a name="deleteCoachingAppointment"></a>

# **deleteCoachingAppointment**



> Void deleteCoachingAppointment(appointmentId)

Delete an existing appointment

Permission not required if you are the creator of the appointment

Wraps DELETE /api/v2/coaching/appointments/{appointmentId}  

Requires ANY permissions: 

* COACHING:APPOINTMENT:DELETE

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let appointmentId: String = "" // The ID of the coaching appointment.

// Code example
CoachingAPI.deleteCoachingAppointment(appointmentId: appointmentId) { (error) in
    if let error = error {
        dump(error)
    } else {
        print("CoachingAPI.deleteCoachingAppointment was successful")
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **appointmentId** | **String**| The ID of the coaching appointment. | |
{: class="table-striped"}


### Return type

`nil` (empty response body)

<a name="deleteCoachingAppointmentAnnotation"></a>

# **deleteCoachingAppointmentAnnotation**



> Void deleteCoachingAppointmentAnnotation(appointmentId, annotationId)

Delete an existing annotation

You must have the appropriate permission for the type of annotation you are updating. Permission not required if you are the creator or facilitator of the appointment

Wraps DELETE /api/v2/coaching/appointments/{appointmentId}/annotations/{annotationId}  

Requires ANY permissions: 

* COACHING:ANNOTATION:DELETE
* COACHING:PRIVATEANNOTATION:DELETE

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let appointmentId: String = "" // The ID of the coaching appointment.
let annotationId: String = "" // The ID of the annotation.

// Code example
CoachingAPI.deleteCoachingAppointmentAnnotation(appointmentId: appointmentId, annotationId: annotationId) { (error) in
    if let error = error {
        dump(error)
    } else {
        print("CoachingAPI.deleteCoachingAppointmentAnnotation was successful")
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **appointmentId** | **String**| The ID of the coaching appointment. | |
| **annotationId** | **String**| The ID of the annotation. | |
{: class="table-striped"}


### Return type

`nil` (empty response body)

<a name="getCoachingAppointment"></a>

# **getCoachingAppointment**



> [CoachingAppointmentResponse](CoachingAppointmentResponse.html) getCoachingAppointment(appointmentId)

Retrieve an appointment

Permission not required if you are the attendee, creator or facilitator of the appointment

Wraps GET /api/v2/coaching/appointments/{appointmentId}  

Requires ANY permissions: 

* COACHING:APPOINTMENT:VIEW

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let appointmentId: String = "" // The ID of the coaching appointment.

// Code example
CoachingAPI.getCoachingAppointment(appointmentId: appointmentId) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.getCoachingAppointment was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **appointmentId** | **String**| The ID of the coaching appointment. | |
{: class="table-striped"}


### Return type

[**CoachingAppointmentResponse**](CoachingAppointmentResponse.html)

<a name="getCoachingAppointmentAnnotation"></a>

# **getCoachingAppointmentAnnotation**



> [CoachingAnnotation](CoachingAnnotation.html) getCoachingAppointmentAnnotation(appointmentId, annotationId)

Retrieve an annotation.

You must have the appropriate permission for the type of annotation you are creating. Permission not required if you are related to the appointment (only the creator or facilitator can view private annotations).

Wraps GET /api/v2/coaching/appointments/{appointmentId}/annotations/{annotationId}  

Requires ANY permissions: 

* COACHING:ANNOTATION:VIEW
* COACHING:PRIVATEANNOTATION:VIEW

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let appointmentId: String = "" // The ID of the coaching appointment.
let annotationId: String = "" // The ID of the annotation.

// Code example
CoachingAPI.getCoachingAppointmentAnnotation(appointmentId: appointmentId, annotationId: annotationId) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.getCoachingAppointmentAnnotation was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **appointmentId** | **String**| The ID of the coaching appointment. | |
| **annotationId** | **String**| The ID of the annotation. | |
{: class="table-striped"}


### Return type

[**CoachingAnnotation**](CoachingAnnotation.html)

<a name="getCoachingAppointmentAnnotations"></a>

# **getCoachingAppointmentAnnotations**



> [CoachingAnnotationList](CoachingAnnotationList.html) getCoachingAppointmentAnnotations(appointmentId, pageNumber, pageSize)

Get a list of annotations.

You must have the appropriate permission for the type of annotation you are creating. Permission not required if you are related to the appointment (only the creator or facilitator can view private annotations).

Wraps GET /api/v2/coaching/appointments/{appointmentId}/annotations  

Requires ANY permissions: 

* COACHING:ANNOTATION:VIEW
* COACHING:PRIVATEANNOTATION:VIEW

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let appointmentId: String = "" // The ID of the coaching appointment.
let pageNumber: Int = 1 // Page number
let pageSize: Int = 25 // Page size

// Code example
CoachingAPI.getCoachingAppointmentAnnotations(appointmentId: appointmentId, pageNumber: pageNumber, pageSize: pageSize) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.getCoachingAppointmentAnnotations was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **appointmentId** | **String**| The ID of the coaching appointment. | |
| **pageNumber** | **Int**| Page number | [optional] [default to 1] |
| **pageSize** | **Int**| Page size | [optional] [default to 25] |
{: class="table-striped"}


### Return type

[**CoachingAnnotationList**](CoachingAnnotationList.html)

<a name="getCoachingAppointmentStatuses"></a>

# **getCoachingAppointmentStatuses**



> [CoachingAppointmentStatusDtoList](CoachingAppointmentStatusDtoList.html) getCoachingAppointmentStatuses(appointmentId, pageNumber, pageSize)

Get the list of status changes for a coaching appointment.

Permission not required if you are an attendee, creator or facilitator of the appointment

Wraps GET /api/v2/coaching/appointments/{appointmentId}/statuses  

Requires ANY permissions: 

* COACHING:APPOINTMENTSTATUS:VIEW

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let appointmentId: String = "" // The ID of the coaching appointment.
let pageNumber: Int = 1 // Page number
let pageSize: Int = 25 // Page size

// Code example
CoachingAPI.getCoachingAppointmentStatuses(appointmentId: appointmentId, pageNumber: pageNumber, pageSize: pageSize) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.getCoachingAppointmentStatuses was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **appointmentId** | **String**| The ID of the coaching appointment. | |
| **pageNumber** | **Int**| Page number | [optional] [default to 1] |
| **pageSize** | **Int**| Page size | [optional] [default to 25] |
{: class="table-striped"}


### Return type

[**CoachingAppointmentStatusDtoList**](CoachingAppointmentStatusDtoList.html)

<a name="getCoachingAppointments"></a>

# **getCoachingAppointments**



> [CoachingAppointmentResponseList](CoachingAppointmentResponseList.html) getCoachingAppointments(userIds, interval, pageNumber, pageSize, statuses, facilitatorIds, sortOrder)

Get appointments for users and optional date range



Wraps GET /api/v2/coaching/appointments  

Requires ANY permissions: 

* COACHING:APPOINTMENT:VIEW

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let userIds: [String] = [""] // The user IDs for which to retrieve appointments
let interval: String = "" // Interval string; format is ISO-8601. Separate start and end times with forward slash '/'
let pageNumber: Int = 1 // Page number
let pageSize: Int = 25 // Page size
let statuses: [String] = [CoachingAPI.Statuses_getCoachingAppointments.enummember.rawValue] // Appointment Statuses to filter by
let facilitatorIds: [String] = [""] // The facilitator IDs for which to retrieve appointments
let sortOrder: CoachingAPI.SortOrder_getCoachingAppointments = CoachingAPI.SortOrder_getCoachingAppointments.enummember // Sort (by due date) either Asc or Desc

// Code example
CoachingAPI.getCoachingAppointments(userIds: userIds, interval: interval, pageNumber: pageNumber, pageSize: pageSize, statuses: statuses, facilitatorIds: facilitatorIds, sortOrder: sortOrder) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.getCoachingAppointments was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **userIds** | [**[String]**](String.html)| The user IDs for which to retrieve appointments | |
| **interval** | **String**| Interval string; format is ISO-8601. Separate start and end times with forward slash &#39;/&#39; | [optional] |
| **pageNumber** | **Int**| Page number | [optional] [default to 1] |
| **pageSize** | **Int**| Page size | [optional] [default to 25] |
| **statuses** | [**[String]**](String.html)| Appointment Statuses to filter by | [optional]<br />**Values**: scheduled ("Scheduled"), inProgress ("InProgress"), completed ("Completed") |
| **facilitatorIds** | [**[String]**](String.html)| The facilitator IDs for which to retrieve appointments | [optional] |
| **sortOrder** | **String**| Sort (by due date) either Asc or Desc | [optional]<br />**Values**: desc ("Desc"), asc ("Asc") |
{: class="table-striped"}


### Return type

[**CoachingAppointmentResponseList**](CoachingAppointmentResponseList.html)

<a name="getCoachingAppointmentsMe"></a>

# **getCoachingAppointmentsMe**



> [CoachingAppointmentResponseList](CoachingAppointmentResponseList.html) getCoachingAppointmentsMe(interval, pageNumber, pageSize, statuses, facilitatorIds, sortOrder)

Get my appointments for a given date range



Wraps GET /api/v2/coaching/appointments/me  

Requires NO permissions: 


### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let interval: String = "" // Interval string; format is ISO-8601. Separate start and end times with forward slash '/'
let pageNumber: Int = 1 // Page number
let pageSize: Int = 25 // Page size
let statuses: [String] = [CoachingAPI.Statuses_getCoachingAppointmentsMe.enummember.rawValue] // Appointment Statuses to filter by
let facilitatorIds: [String] = [""] // The facilitator IDs for which to retrieve appointments
let sortOrder: CoachingAPI.SortOrder_getCoachingAppointmentsMe = CoachingAPI.SortOrder_getCoachingAppointmentsMe.enummember // Sort (by due date) either Asc or Desc

// Code example
CoachingAPI.getCoachingAppointmentsMe(interval: interval, pageNumber: pageNumber, pageSize: pageSize, statuses: statuses, facilitatorIds: facilitatorIds, sortOrder: sortOrder) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.getCoachingAppointmentsMe was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **interval** | **String**| Interval string; format is ISO-8601. Separate start and end times with forward slash &#39;/&#39; | [optional] |
| **pageNumber** | **Int**| Page number | [optional] [default to 1] |
| **pageSize** | **Int**| Page size | [optional] [default to 25] |
| **statuses** | [**[String]**](String.html)| Appointment Statuses to filter by | [optional]<br />**Values**: scheduled ("Scheduled"), inProgress ("InProgress"), completed ("Completed") |
| **facilitatorIds** | [**[String]**](String.html)| The facilitator IDs for which to retrieve appointments | [optional] |
| **sortOrder** | **String**| Sort (by due date) either Asc or Desc | [optional]<br />**Values**: desc ("Desc"), asc ("Asc") |
{: class="table-striped"}


### Return type

[**CoachingAppointmentResponseList**](CoachingAppointmentResponseList.html)

<a name="getCoachingNotification"></a>

# **getCoachingNotification**



> [CoachingNotification](CoachingNotification.html) getCoachingNotification(notificationId)

Get an existing notification

Permission not required if you are the owner of the notification.

Wraps GET /api/v2/coaching/notifications/{notificationId}  

Requires ANY permissions: 

* COACHING:NOTIFICATION:VIEW

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let notificationId: String = "" // The ID of the notification.

// Code example
CoachingAPI.getCoachingNotification(notificationId: notificationId) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.getCoachingNotification was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **notificationId** | **String**| The ID of the notification. | |
{: class="table-striped"}


### Return type

[**CoachingNotification**](CoachingNotification.html)

<a name="getCoachingNotifications"></a>

# **getCoachingNotifications**



> [CoachingNotificationList](CoachingNotificationList.html) getCoachingNotifications(pageNumber, pageSize)

Retrieve the list of your notifications.



Wraps GET /api/v2/coaching/notifications  

Requires NO permissions: 


### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let pageNumber: Int = 1 // Page number
let pageSize: Int = 25 // Page size

// Code example
CoachingAPI.getCoachingNotifications(pageNumber: pageNumber, pageSize: pageSize) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.getCoachingNotifications was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pageNumber** | **Int**| Page number | [optional] [default to 1] |
| **pageSize** | **Int**| Page size | [optional] [default to 25] |
{: class="table-striped"}


### Return type

[**CoachingNotificationList**](CoachingNotificationList.html)

<a name="patchCoachingAppointment"></a>

# **patchCoachingAppointment**



> [CoachingAppointmentResponse](CoachingAppointmentResponse.html) patchCoachingAppointment(appointmentId, body)

Update an existing appointment

Permission not required if you are the creator or facilitator of the appointment

Wraps PATCH /api/v2/coaching/appointments/{appointmentId}  

Requires ANY permissions: 

* COACHING:APPOINTMENT:EDIT

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let appointmentId: String = "" // The ID of the coaching appointment.
let body: UpdateCoachingAppointmentRequest = new UpdateCoachingAppointmentRequest(...) // The new version of the appointment

// Code example
CoachingAPI.patchCoachingAppointment(appointmentId: appointmentId, body: body) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.patchCoachingAppointment was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **appointmentId** | **String**| The ID of the coaching appointment. | |
| **body** | [**UpdateCoachingAppointmentRequest**](UpdateCoachingAppointmentRequest.html)| The new version of the appointment | |
{: class="table-striped"}


### Return type

[**CoachingAppointmentResponse**](CoachingAppointmentResponse.html)

<a name="patchCoachingAppointmentAnnotation"></a>

# **patchCoachingAppointmentAnnotation**



> [CoachingAnnotation](CoachingAnnotation.html) patchCoachingAppointmentAnnotation(appointmentId, annotationId, body)

Update an existing annotation.

You must have the appropriate permission for the type of annotation you are updating. Permission not required if you are the creator or facilitator of the appointment

Wraps PATCH /api/v2/coaching/appointments/{appointmentId}/annotations/{annotationId}  

Requires ANY permissions: 

* COACHING:ANNOTATION:EDIT
* COACHING:PRIVATEANNOTATION:EDIT

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let appointmentId: String = "" // The ID of the coaching appointment.
let annotationId: String = "" // The ID of the annotation.
let body: CoachingAnnotation = new CoachingAnnotation(...) // The new version of the annotation

// Code example
CoachingAPI.patchCoachingAppointmentAnnotation(appointmentId: appointmentId, annotationId: annotationId, body: body) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.patchCoachingAppointmentAnnotation was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **appointmentId** | **String**| The ID of the coaching appointment. | |
| **annotationId** | **String**| The ID of the annotation. | |
| **body** | [**CoachingAnnotation**](CoachingAnnotation.html)| The new version of the annotation | |
{: class="table-striped"}


### Return type

[**CoachingAnnotation**](CoachingAnnotation.html)

<a name="patchCoachingAppointmentStatus"></a>

# **patchCoachingAppointmentStatus**



> [CoachingAppointmentStatusDto](CoachingAppointmentStatusDto.html) patchCoachingAppointmentStatus(appointmentId, body)

Update the status of a coaching appointment

Permission not required if you are an attendee, creator or facilitator of the appointment

Wraps PATCH /api/v2/coaching/appointments/{appointmentId}/status  

Requires ANY permissions: 

* COACHING:APPOINTMENTSTATUS:EDIT

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let appointmentId: String = "" // The ID of the coaching appointment.
let body: CoachingAppointmentStatusDto = new CoachingAppointmentStatusDto(...) // Updated status of the coaching appointment

// Code example
CoachingAPI.patchCoachingAppointmentStatus(appointmentId: appointmentId, body: body) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.patchCoachingAppointmentStatus was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **appointmentId** | **String**| The ID of the coaching appointment. | |
| **body** | [**CoachingAppointmentStatusDto**](CoachingAppointmentStatusDto.html)| Updated status of the coaching appointment | |
{: class="table-striped"}


### Return type

[**CoachingAppointmentStatusDto**](CoachingAppointmentStatusDto.html)

<a name="patchCoachingNotification"></a>

# **patchCoachingNotification**



> [CoachingNotification](CoachingNotification.html) patchCoachingNotification(notificationId, body)

Update an existing notification.

Can only update your own notifications.

Wraps PATCH /api/v2/coaching/notifications/{notificationId}  

Requires NO permissions: 


### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let notificationId: String = "" // The ID of the notification.
let body: CoachingNotification = new CoachingNotification(...) // Change the read state of a notification

// Code example
CoachingAPI.patchCoachingNotification(notificationId: notificationId, body: body) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.patchCoachingNotification was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **notificationId** | **String**| The ID of the notification. | |
| **body** | [**CoachingNotification**](CoachingNotification.html)| Change the read state of a notification | |
{: class="table-striped"}


### Return type

[**CoachingNotification**](CoachingNotification.html)

<a name="postCoachingAppointmentAnnotations"></a>

# **postCoachingAppointmentAnnotations**



> [CoachingAnnotation](CoachingAnnotation.html) postCoachingAppointmentAnnotations(appointmentId, body)

Create a new annotation.

You must have the appropriate permission for the type of annotation you are creating. Permission not required if you are related to the appointment (only the creator or facilitator can create private annotations).

Wraps POST /api/v2/coaching/appointments/{appointmentId}/annotations  

Requires ANY permissions: 

* COACHING:ANNOTATION:ADD
* COACHING:PRIVATEANNOTATION:ADD

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let appointmentId: String = "" // The ID of the coaching appointment.
let body: CoachingAnnotationCreateRequest = new CoachingAnnotationCreateRequest(...) // The annotation to add

// Code example
CoachingAPI.postCoachingAppointmentAnnotations(appointmentId: appointmentId, body: body) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.postCoachingAppointmentAnnotations was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **appointmentId** | **String**| The ID of the coaching appointment. | |
| **body** | [**CoachingAnnotationCreateRequest**](CoachingAnnotationCreateRequest.html)| The annotation to add | |
{: class="table-striped"}


### Return type

[**CoachingAnnotation**](CoachingAnnotation.html)

<a name="postCoachingAppointments"></a>

# **postCoachingAppointments**



> [CoachingAppointmentResponse](CoachingAppointmentResponse.html) postCoachingAppointments(body)

Create a new appointment



Wraps POST /api/v2/coaching/appointments  

Requires ANY permissions: 

* COACHING:APPOINTMENT:ADD

### Example

```{"language":"swift"}
import PureCloudPlatformClientV2

PureCloudPlatformClientV2API.basePath = "https://api.mypurecloud.com"
PureCloudPlatformClientV2API.accessToken = "cwRto9ScT..."

let body: CreateCoachingAppointmentRequest = new CreateCoachingAppointmentRequest(...) // The appointment to add

// Code example
CoachingAPI.postCoachingAppointments(body: body) { (response, error) in
    if let error = error {
        dump(error)
    } else if let response = response {
        print("CoachingAPI.postCoachingAppointments was successful")
        dump(response)
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **body** | [**CreateCoachingAppointmentRequest**](CreateCoachingAppointmentRequest.html)| The appointment to add | |
{: class="table-striped"}


### Return type

[**CoachingAppointmentResponse**](CoachingAppointmentResponse.html)
