{{- define "weather-app.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "weather-app.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}

{{- define "weather-app.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "weather-app.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end }}
