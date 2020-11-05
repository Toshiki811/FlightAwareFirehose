#!/usr/bin/env ruby
require 'FlightXML2Driver.rb'

username = 'toshikinishikawa'
apiKey = 'c1db57f3c2f67f290739a567e1a6924ae3a61daf'

$api = FlightXML2Soap.new(toshikinishikawa, c1db57f3c2f67f290739a567e1a6924ae3a61daf)

result = $api.enroute(EnrouteRequest.new('KSMO',10,'',0))

flights = result.enrouteResult.enroute

print "Aircraft en route to KSMO:\n"
flights.each { |flight|
    print "#{flight.ident} (#{flight.aircrafttype}) \t#{flight.originName} (#{flight.origin})\n"
}
    



