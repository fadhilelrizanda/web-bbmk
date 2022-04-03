<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$koneksi = $this->db->real_escape_string();

class X{
	public function esc($var){
		$escape = $this->db->real_escape_string($var);
		return $escape;
	}
}