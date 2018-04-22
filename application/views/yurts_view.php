
	<img src="<?php echo base_url(); ?>images/yurt.jpg" class="mainimage">
	<div class="right">
	<h2>The Yurts at Pacific Trails</h2>
	<br>

	<dl>
		<dt>What is a yurt?</dt>
		<dd>Our luxury yurts are permanent structure four feet off the ground. Each yurt has canvas walls, wodden floor, and a roof dome that can be opened.</dd>
		<dt>How are the yurts furnished?<dt>
			<dd>Each yurt is furnished with a queen-size bed with down quilt and gas-fired stove. The luxury camping experience also includes electricity and a sink with hot and cold running water. Shower and restroom facilities are located in the lodge.</dd>
			<dt>What should I bring?<dt>
				<dd>Bring a sense of adventure and some time to relax? Most guests also pack comfortable packing shoes and plan to dress for changing weather with layers of clothing.</dd>
			</dl>
			<br>

			<p><span class="boldtext">Yurt Packages</span></p>
			<br>
			<p>A variety of luxury yurt packages are available.Choose a package below and contact us to begin your registration. We're happy to build a custom package for you </p>
			<br>
			<table class="table1">

				<tr>
					<th>Package Name</th>
					<th>Descriptions</th>
					<th>Nights</th>
					<th>Cost Per Person</th>
				</tr>
				<?php 


				foreach($package as $row):

					?>
				<tr>
					<td class = "text" ><?php echo $row['name'];?></td>
					<td><?php echo $row['summary']; ?></td>
					<td><?php echo $row['noofnights']; ?></td>
					<td>$<?php echo $row['cost']; ?></td>
				</tr>



				<?php 
				endforeach;?>
			</table>
			<br>
		