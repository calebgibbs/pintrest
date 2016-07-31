<?php 

	$this->layout('master', [
		'title'=>'Search',
		'desc'=>'Search Results'
	]);

?> 
<body> 
<?= $this->insert('nav') ?> 
<h1>Search results for "<i><?= $this->e($searchTerm) ?></i>"</h1>