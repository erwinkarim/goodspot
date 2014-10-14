class BusRoute < ActiveRecord::Base
=begin
	points stucture in XML as described by RapidKL

<BusRoute>
	<routes type="array">
		<route>
			<route type="array">
				<route>
					<start>...</start>
					<route>...</route>
					<end>...</end>
					<stops type="array">
						<stop>
							<name>Stesen LRT Dato Keramat, Jalan Datuk Keramat</name>
							<id type="integer">739</id>
							<code>1001800</code>
							<location type="array">...</location>
							<is-wp type="integer">0</is-wp>
							<line/>
						</stop>
						<stop>...</stop>
						....
				</stops>
				<trip>
					<id type="integer">107</id>
					<headsign>Ampang Point</headsign>
				</trip>

	points = JSON.parse(BusRoute.first.points)

	Points in each stops
	points["routes"][0]["route"][0]["stops"].each{ |loc| puts loc["location"].inspect }	

	polygon at each stop
	points["routes"][0]["route"][0]["stops"].each{ |loc| puts loc["line"].inspect }
=end
end
