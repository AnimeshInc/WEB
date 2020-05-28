<?php
    class SuperUser extends User implements ISuperUser, IAuthorizeUser{
        public $role;
        public static $countSUser = 0;

        function __construct($name, $login, $password, $role){
            parent::__construct($name, $login, $password);
            $this->role = $role;
            echo self::$countSUser++;
        }
    
        function showInfo(){
            parent::showInfo();
            echo "Role: $this->role<br /><br />";
        }

        function getInfo() {
            $array = [];
            foreach ($this as $key=>$value){
                $array[$key] = $value;
            }
            return $array;
        }
        
        public function auth($login, $password){
            return ($this->login == $login) && ($this->password == $password);
        }
    }
?>