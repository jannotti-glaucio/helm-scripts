{{- define "app.name" -}}
{{- default (printf "%s" .Release.Name) .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
