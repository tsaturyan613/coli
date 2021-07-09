<?php
   class model {
       private $conn;
       public function  __construct(){
           $this->conn=mysqli_connect('localhost', 'root', '123456', 'colibrilab');
           if (!$this->conn) die(mysqli_connect_error($this->conn));
       }
       public function __destruct(){
           mysqli_close($this->conn);
       }
       public function inserts($arr){
        $query="insert into patasxan (patasxanner) VALUES ('$arr')";
        
        $res = mysqli_query($this->conn, $query);
        
        if (!$res) die(mysqli_error($this->conn));
       }
       public function get ($table, $id=null){
        if (!$id) {
            $query="select * from $table ";
            $res=mysqli_query($this->conn,$query);
            if (!$res){
                return mysqli_error($this->conn);
            }
            if(mysqli_num_rows($res)>0){ 
                return mysqli_fetch_all($res, MYSQLI_ASSOC);
            }
           return null;
        }
        $query="select * ftom '$table' where id=$id";
        $res=mysqli_query($this->conn,$query);
        if(mysqli_num_rows($res)>0){
            return mysqli_fetch_assoc($res);
        }
         return null;
    }
       public function insert($harc, $check){
        $query="insert into questions_yes (question, checked) VALUES ('$harc', '$check')";
        $res = mysqli_query($this->conn, $query);
        if (!$res) die(mysqli_error($this->conn));
    }
    public function insert_no($harc, $check){
        $query="insert into questions_no (question, checked) VALUES ('$harc', '$check')";
        $res = mysqli_query($this->conn, $query);
        if (!$res) die(mysqli_error($this->conn));
    }
    public function update_question($name, $text,$id){
        $query="update questions_yes set  question='$name', checked='$text' where id='$id' ";
        mysqli_query($this->conn,$query);
    }
    public function update_question_no($name,$text,$id){
        $query="update questions_no set  question='$name', checked='$text' where id='$id' ";
        mysqli_query($this->conn,$query);
    }
    public function add_answer($patasxan,$type,$harc_id){
        $query="insert into answers (patasxan,type,harc_id) values ('$patasxan','$type',$harc_id)";
        mysqli_query($this->conn, $query);
    }
    public function add_answer_no($patasxan,$type,$harc_id){
        $query="insert into answers_no (patasxan,type,harc_id) values ('$patasxan','$type',$harc_id)";
        mysqli_query($this->conn, $query);
    }
    public function add_option($opt){
        $query="insert into options (opt) values ('$opt')";
        mysqli_query($this->conn, $query);
    }
    public function get_answer($harc_id){
        $query="select * from answers where harc_id='$harc_id'";
        $res = mysqli_query($this->conn, $query);
        return mysqli_fetch_all($res, MYSQLI_ASSOC);
    }
    public function get_answer_no($harc_id){
        $query="select * from answers_no where harc_id='$harc_id'";
        $res = mysqli_query($this->conn, $query);
        return mysqli_fetch_all($res, MYSQLI_ASSOC);
    }
    public function update_answer($patasxan,$type, $id){
        $query="update answers set  patasxan='$patasxan',type='$type' where id='$id' ";
        mysqli_query($this->conn,$query);
    }
    public function update_answer_no($patasxan,$type, $id){
        $query="update answers_no set  patasxan='$patasxan',type='$type' where id='$id' ";
        mysqli_query($this->conn,$query);
    }
    public function delete($table,$id){
        $query="delete from $table where id=$id";
        mysqli_query($this->conn,$query);
    }
    public function update_option($opt, $id){
        $query="update options set  opt='$opt' where id='$id' ";
        mysqli_query($this->conn,$query);
    }
    public function select_yes(){
        $query = "SELECT id, patasxanner FROM patasxan WHERE patasxanner like '%\"Այո\"%'";
        $res = mysqli_query($this->conn, $query);
        if (mysqli_num_rows($res)>0) {
           return  mysqli_fetch_all($res, MYSQLI_ASSOC);
      }
   }
      public function select_no(){
       $query = "SELECT patasxanner FROM patasxan WHERE patasxanner like '%\"Ոչ\"%'";
       $res = mysqli_query($this->conn, $query);
       if (mysqli_num_rows($res)>0) {
          return  mysqli_fetch_all($res, MYSQLI_ASSOC);
     }
  }
  public function select_coming(){
    $query = "SELECT patasxanner FROM patasxan WHERE patasxanner like '%\"Պատրաստվում եմ\"%'";
    $res = mysqli_query($this->conn, $query);
    if (mysqli_num_rows($res)>0) {
    return  mysqli_fetch_all($res, MYSQLI_ASSOC);
    }
  }
}   
?> 