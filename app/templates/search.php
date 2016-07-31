<?php 

	$this->layout('master', [
		'title'=>'Search',
		'desc'=>'Search Results'
	]);

?> 
<body> 
<?= $this->insert('nav') ?> 
<h1>Search results for "<i><?= $this->e($searchTerm) ?></i>"</h1> 

<?php if(strlen($searchTerm) > 0): ?> 

	<?php if($searchResults > 0): ?> 

		<?php foreach ($searchResults as $result): ?> 
			<h1><?= $result['score_title'] ?></h1> 
			<p><?= $result['score_description'] ?></p> 
			<hr />
		<?php endforeach; ?>

	<?php else: ?> 
		<h1>There were no results for "<i><?= $this->e($searchTerm) ?></i>"</h1>
	<?php endif; ?> 

<?php else: ?>
	<p>Please enter a search term</p>
<?php endif; ?>



