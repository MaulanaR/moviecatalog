<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * @author      Maulana Rahman <maulana.code@gmail.com>
 */

class Beranda extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Beranda_model');
	}

	public function index()
	{
		$title_head = "Beranda";
		$data_gambar['title'] = $title_head;
		//new movies
		$this->db->where('year', date('Y', now()));
		$data_gambar['new_movies'] = $this->db->get('movies');
		//popular movies
		$this->db->order_by('rating', 'desc');
		$data_gambar['popular_movies'] = $this->db->get('movies');
		//all movies
		$data_gambar['movies'] = $this->db->get('movies');
		// Action Movies
		$this->db->Select('movies.*');
		$this->db->where('category_id', 1);
		$this->db->join('movie_categories', 'movie_categories.movie_id = movies.id', 'left');
		$data_gambar['action_movies'] = $this->db->get('movies');
		// Drama
		$this->db->Select('movies.*');
		$this->db->where('category_id', 25);
		$this->db->join('movie_categories', 'movie_categories.movie_id = movies.id', 'left');
		$data_gambar['drama'] = $this->db->get('movies');
		// War
		$this->db->Select('movies.*');
		$this->db->where('category_id', 15);
		$this->db->join('movie_categories', 'movie_categories.movie_id = movies.id', 'left');
		$data_gambar['war'] = $this->db->get('movies');
		// Romance
		$this->db->Select('movies.*');
		$this->db->where('category_id', 21);
		$this->db->join('movie_categories', 'movie_categories.movie_id = movies.id', 'left');
		$data_gambar['romance'] = $this->db->get('movies');
		// Thriller
		$this->db->Select('movies.*');
		$this->db->where('category_id', 25);
		$this->db->join('movie_categories', 'movie_categories.movie_id = movies.id', 'left');
		$data_gambar['thriller'] = $this->db->get('movies');
		//Featured
		$this->db->where('is_featured', 1);
		$data_gambar['featured1'] = $this->db->get('movies');
		//Featured
		$this->db->where('is_featured', 2);
		$data_gambar['featured2'] = $this->db->get('movies');
		//Featured
		$this->db->where('is_featured', 3);
		$data_gambar['featured3'] = $this->db->get('movies');
		//Featured
		$this->db->where('is_featured', 4);
		$data_gambar['featured4'] = $this->db->get('movies');


		/*DATA*/
		// disini dikasih datanya

		/*END DATA*/

		//kalo nama varnya data_gambar, diatas harusnya data_gambar juga, bukan $head
		//lanjutkan
		$this->load->view('beranda', $data_gambar);
		$this->load->view('footer');
	}

	public function details($id)
	{
		$data['title'] = "Details Movies";
		$data['movies'] = $this->Beranda_model->getdetails($id);
		foreach ($this->Beranda_model->getdetails($id) as $key => $value) {
			$data['title'] = $value->title;
		}
		
		$this->db->where('is_featured', 1);
		$this->db->or_where('is_featured', 2);
		$this->db->or_where('is_featured', 3);
		$this->db->or_where('is_featured', 4);
		$data['featured'] = $this->db->get('movies');

		$this->load->view('details', $data);
		$this->load->view('footer');
	}
	public function categories($id)
	{
		$data['title'] = "Category Movie";
		$this->db->where('id', $id);
		$data['category'] = $this->db->get('categories')->row();
		$data['movies'] = $this->Beranda_model->getcategories($id);

		$this->load->view('categories', $data);
		$this->load->view('footer');
	}
	public function years($id)
	{
		$data['title'] = "Year ".$id;
		$data['year'] = $id;
		
		$this->db->where('year', $id);
		$data['movies'] = $this->db->get('movies')->result();

		$this->load->view('years', $data);
		$this->load->view('footer');
	}

	public function comment($id)
	{
		$data['title'] = "Details Comment";
		$data['comments'] = $this->Beranda_model->getcomment($id);
		$this->load->view('details', $data);
	}
}

/* Location: ./application/modules/X/controllers/X.php */
/* End of file X.php */
