#!/usr/local/bin/pwsh

$request = 'http://musicbrainz.org/ws/2/recording/fcbcdc39-8851-4efc-a02a-ab0e13be224f?inc=artist-credits+isrcs+releases&fmt=json'

Invoke-WebRequest $request | ConvertFrom-Json  | select -expand releases | Select title, date, country