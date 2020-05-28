<?php
    class User extends UserAbstract {
	    public $name;
	    public $login;
        public $password;
        public static $countUser = 0;

        function showInfo(){
            echo "Name: $this->name <br />";
            echo "Login: $this->login <br />";
            echo "Password: $this->password <br /><br />";
        }

        function __construct($name = "", $login = "", $password = ""){
                $this->name = $name;
                $this->login = $login;
                $this->password = $password;
                echo self::$countUser++;
        }

        public function __destruct(){ 
            echo "<br/>Пользователь: " . $this->login . " удален <br/>"; 
        }
    }
?>