<!DOCTYPE HTML>
<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>SQLi Mezzanine</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">

							<!-- Logo -->
								<a href="index.php" class="logo">
									<span class="symbol"><img src="images/logo.svg" alt="" /></span><span class="title">SQLi Mezzanine</span>
								</a>

						</div>
					</header>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<h1>Six</h1>
							
						    <?php
						        session_start();
						        
						        $old_c = "covfefe";
						        if (!empty($_SESSION['csrf-c'])) {
						            $old_c = $_SESSION['csrf-c'];
                                }
                                $_SESSION['csrf-c'] = bin2hex(random_bytes(32));
                                setcookie('csrf-c', $_SESSION['csrf-c']);
                                
                                $old_f1 = "covfefe";
						        if (!empty($_SESSION['csrf-f1'])) {
						            $old_f1 = $_SESSION['csrf-f1'];
                                }
                                $_SESSION['csrf-f1'] = bin2hex(random_bytes(16));

                                $old_f2 = "covfefe";
						        if (!empty($_SESSION['csrf-f2'])) {
						            $old_f2 = $_SESSION['csrf-f2'];
                                }
                                $_SESSION['csrf-f2'] = bin2hex(random_bytes(16));
                                
                                $h = '';
                                $form = <<< HDOC
                                    <p>Enter a string to search our database of used access codes.</p>
                                    <form method="post">
                                        <input type="hidden" name="csrf-f1" value="{$_SESSION['csrf-f1']}" />
                                    	<div class="row uniform">
                                    		<div class="6u 12u$(xsmall)">
                                    			<input type="text" name="code" id="code" value="" />
                                    		</div>
							                <div class="12u$">
								                <input type="submit" value="Search" class="special" />
							                </div>
						                </div>
						                <input type="hidden" name="csrf-f2" value="{$_SESSION['csrf-f2']}" />
					                </form>
HDOC;
                                
                                // sqlmap in user-agent
                                if (strpos($_SERVER['HTTP_USER_AGENT'], 'sqlmap') !== false) {
                                
                                    $h .= $form;                                    
                                
                                // ok user-agent
                                } else {

                                    // poke request
                                    if (!empty($_POST['code']) && hash_equals($old_c, $_COOKIE['csrf-c']) && hash_equals($old_f1, $_POST['csrf-f1']) && hash_equals($old_f2, $_POST['csrf-f2'])) {
                                    
                                        define('DB_SERVER',   'localhost:3306');
                                        define('DB_USERNAME', 'db06');
                                        define('DB_PASSWORD', 'Jy8BqwAQHMEBRWJjTcP6');
                                        define('DB_DATABASE', 'db06');
                                        $db = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
                                        
                                        $code = $_POST['code'];
                                        
                                        // insert new code
                                        $sql = "SELECT code FROM codes WHERE code LIKE '%$code%';";
                                        $result = mysqli_query($db,$sql);
                                        
                                        if (mysqli_num_rows($result) > 0) {
                                            $h .= '<p>We located the following expired access codes.</p><ul class="alt">';
                                            while ($row = $result->fetch_assoc())
                                            {
                                                foreach($row as $value) {
                                                    $s =  substr($value, 0, 8);
                                                    $h .= "<li>$s</li>";
                                                }
                                            }
                                            $h .= '</ul>';
                                        
                                        // no results
                                        } else {
                                            $h = 'Sorry, there are no matching codes.';
                                        }
                                        
                                    // other request or bad csrf
                                    } else {
                                    
                                        $h = $form;
                                    }
                                }
                                
                                print $h;
                            ?>

						</div>
					</div>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="copyright">
								<li>&copy; <a href="https://twitter.com/realn0j" class="icon style1 fa-twitter"><span class="label"></span>n0j</a>. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>
