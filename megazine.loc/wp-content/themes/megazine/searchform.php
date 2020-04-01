<form role="search" method="get" id="searchform" action="<?php echo home_url( '/' ) ?>" >
	<div class="form-group">
		<input name="s" id="s" type="text" class="form-control"  value="<?php echo get_search_query() ?>" id="search" placeholder="Enter to search...">
		<button type="submit"  id="searchsubmit" value="найти"  class="btn submit btn-primary"><i class="icon-search3"></i></button>
	</div>
</form>