%YAML 1.1
%TAG !u! tag:unity3d.com,2011:
--- !u!114 &11400000
MonoBehaviour:
  m_ObjectHideFlags: 0
  m_CorrespondingSourceObject: {fileID: 0}
  m_PrefabInstance: {fileID: 0}
  m_PrefabAsset: {fileID: 0}
  m_GameObject: {fileID: 0}
  m_Enabled: 1
  m_EditorHideFlags: 0
  m_Script: {fileID: 11500000, guid: 1cbff1bfa4708914aaa381b1dd914663, type: 3}
  m_Name: 1
  m_EditorClassIdentifier:
{{~ $i = 0
hierarchy_fields = data.impl_type.hierarchy_fields
for f in data.fields
  $defField = hierarchy_fields[$i]
  $i = $i + 1
  if f ~}}
  {{$defField.name}}: {{to_json_literal f}}
  {{~end~}}
{{~end~}}
