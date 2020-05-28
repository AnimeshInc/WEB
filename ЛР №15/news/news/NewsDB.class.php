<?php
require "INewsDB.class.php";

class NewsDB implements INewsDB{
    const DB_NAME = "../news.db";
    private $_db;
    
    function __construct()
    {
        $this->_db = new PDO('sqlite:'.self::DB_NAME);
        $this->_db -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        if (!filesize(self::DB_NAME)){
            try{
            $sql="CREATE TABLE msgs(
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    title TEXT,
                    category INTEGER,
                    description TEXT,
                    source TEXT,
                    datetime INTEGER)";
            $this->_db->exec($sql) or die($this->_db->lastErrorMsg());
            $sql="CREATE TABLE category(
                    id INTEGER,
                    name TEXT)";
            $this->_db->exec($sql) or die($this->_db->lastErrorMsg());
            $sql="INSERT INTO category(id, name)
                    SELECT 1 as id, 'Политика' as name
                    UNION SELECT 2 as id, 'Культура' as name
                    UNION SELECT 3 as id, 'Спорт' as name ";
            $this->_db->exec($sql) or die($this->_db->lastErrorMsg());
            }catch (PDOException $ex){
                echo $ex ->getMessage();
            }
        }
    }
    
function __destruct(){
    unset($_db);
}

function saveNews($title, $category, $description, $source){
    $dt=time();
    $sql = 'INSERT INTO msgs (title,category,description,source,datetime)VALUES('
	        .$this->_db->quote($title).','
			.$category.','
			.$this->_db->quote($description).','
			.$this->_db->quote($source).','
			.time().')';
    try{ 
        $this->_db->exec($sql);
        return true;
    }catch (PDOException $ex){
            echo $ex->getMessage();
            return false;
        }
}

function getNews(){
    $resul = $this->_db->query('SELECT msgs.id as id, title, category.name 
    as category, description, source, datetime
    FROM msgs, category
    WHERE category.id = msgs.category
    ORDER BY msgs.id DESC');
   return $resul->fetchAll(PDO::FETCH_ASSOC);
}

function showNews($id){
    $result = $this->_db->query("SELECT msgs.id, msgs.title,
    c.name AS category, msgs.description, msgs.source, msgs.datetime
    FROM msgs
    INNER JOIN category AS c ON msgs.category = c.id
    WHERE msgs.id = :id");
    return $res->fetchAll(PDO::FETCH_ASSOC);
}
}