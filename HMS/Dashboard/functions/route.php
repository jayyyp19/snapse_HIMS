<?php
function checkAccess() {
  if($_SESSION["role"]==0){
    header("Location: ../login.php");
  }
  elseif($_SESSION["role"]==1){
    header("Location: ../index.php");
  }
}
function getTotalValue($value) {
  include "config.php";
  switch ($value) {
    case 'user':
      $query = "select max(User_id) as max from user;";
      break;
      
    case 'book':
      $query = "select max(id) as max from book;";
      break;

    case 'totalissuedbooktillnow':
        $query = "select max(id) as max from user_book;";
        break;
    
    default:
      # code...
      break;
  }
  $result = mysqli_query($conn, $query);
  while ($row = mysqli_fetch_assoc($result)) {
    echo $row['max'];
}

}

function UserTable($role) {
  $conn = mysqli_connect("localhost", "root", "root", "cafe");

if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}

  $i=0;
  $query = "SELECT * FROM user where Role_id = $role";
  $result = mysqli_query($conn, $query);
  
  while ($row = mysqli_fetch_assoc($result)) {
      $i++;
      echo "<tr>";
      echo "<td>".$i."</td>";
      echo "<td>".$row['address']."</td>";
      echo "<td>".$row['city']."</td>";
      echo "<td>".$row['country']."</td>";
      echo "<td>".$row['email']."</td>";
      echo "<td>".$row['firstname']."</td>";
      echo "</tr>";
  }
  
  // echo "</table>";
  mysqli_close($conn);
}
  
?>