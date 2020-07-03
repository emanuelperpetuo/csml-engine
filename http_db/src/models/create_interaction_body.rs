/*
 * CSML engine microservices
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 *
 * Generated by: https://openapi-generator.tech
 */

#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct CreateInteractionBody {
    #[serde(rename = "id")]
    pub id: String,
    #[serde(rename = "event")]
    pub event: serde_json::Value,
}

impl CreateInteractionBody {
    pub fn new(id: String, event: serde_json::Value) -> CreateInteractionBody {
        CreateInteractionBody { id, event }
    }
}
