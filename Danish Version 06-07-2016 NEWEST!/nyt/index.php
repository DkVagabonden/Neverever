<!DOCTYPE html>
<html>

<!-- Her indskrives spørgsmålet -->
<p>Tilføjning af et "jeg har aldrig" spørgsmål.<p>
<p>Husk ikke at skrive "jeg har aldrig"<p>
<form action="nyt.php" method="post">
<p>Spørgsmål:</p> <input type="text" name="spm" id="nytspm" /><br><br>


<input type ="submit" value="submit" onClick="return tom()" />
</form>

</html>


<script type="text/javascript">
function tom() {
    var x;
    x = document.getElementById("nytspm").value;
    if (x == "") {
        alert("Du mangler at indskrive et spørgsmål!");
        return false;
    };
}
    </script>