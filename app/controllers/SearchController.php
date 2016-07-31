<?php 

class SearchController extends PageController { 

	public function __construct($dbc) { 

		parent::__construct();
		$this->dbc = $dbc; 
		$this->mustbeLoggedIn(); 
		$this->getSearch();
	} 

	public function buildHTML(){

		echo $this->plates->render('search', $this->data);
	} 

	public function getSearch() {

		if(! isset($_POST['search'])) {
			$searchTerm = ""; 
			

		}else{
			$result = $_POST['search']; 
			$searchTerm = strtolower($result);
		} 

		$this->data['searchTerm'] = $searchTerm;

	}


}