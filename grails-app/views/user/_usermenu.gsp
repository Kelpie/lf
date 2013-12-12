<!-- BEGIN USER LOGIN DROPDOWN -->
<li class="dropdown user">
	<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
	<asset:image src="avatar_small.jpg"/>
	<span class="username">
		<sec:loggedInUserInfo field="username"/>
	</span>
	<i class="fa fa-angle-down"></i>
	</a>
	<ul class="dropdown-menu">
		<li>
			<a href="extra_profile.html"><i class="fa fa-user"></i> My Profile</a>
		</li>
		<li>
			<a href="page_calendar.html"><i class="fa fa-calendar"></i> My Calendar</a>
		</li>
		<sec:access controller='admin' action='index'>
			<li>
				<a href="/admin"><i class="fa fa-wrench"></i> Administrators</a>
			</li>									
		</sec:access>									
		<li class="divider">
		</li>
		<li>
			<a href="/logout"><i class="fa fa-key"></i> Log Out</a>
		</li>
	</ul>
</li>
<!-- END USER LOGIN DROPDOWN -->