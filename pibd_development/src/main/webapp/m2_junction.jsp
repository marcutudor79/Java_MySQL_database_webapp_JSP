<!DOCTYPE html>
<html>
<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
<jsp:setProperty name="jb" property="*" />
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="wireframe.css">
  <title>Modify binding</title>
</head>
<body>
   <%
            jb.connect();
            int aux = java.lang.Integer.parseInt(request.getParameter("idjunction"));
            String idaniamls = request.getParameter("idanimals");
            String idcharacteristics = request.getParameter("idcharacteristics");         
            String[] valori = {idaniamls, idcharacteristics};
            String[] campuri = {"idanimals", "idcharacteristics"};
            jb.modifyTable("junction", "idjunction", aux, campuri, valori);
            jb.disconnect();
        %>
	<nav class="navbar navbar-expand-md navbar-dark bg-info">
    <div class="container">
      <a class="navbar-brand" href="#"><i class="fa d-inline fa-lg fa-bullseye"></i></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent" aria-controls="navbar2SupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-between" id="navbar2SupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link mx-2" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link mx-2" href="table_animals.jsp">Animals database</a>
          </li>
          <li class="nav-item">
            <a class="nav-link mx-2" href="table_characteristics.jsp">Characteristics database</a>
          </li>
          <li class="nav-item"><a class="nav-link" href="#">Animals characteristics database</a></li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <button class="btn btn-link my-2 my-sm-0" type="submit"></button>
        </form>
      </div>
    </div>
  </nav>
  <div class="py-5" style="	background-image: url(http://wallup.net/wp-content/uploads/2016/01/136660-animals-bears-forest.jpg);	background-position: top left;	background-size: 100%;	background-repeat: repeat;">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-light"><b>Modify animal's characteristics</b></h1>
        </div>
      </div>
    </div>
  </div>	  
  <div class="py-1" >
    <div class="container">
      <div class="row">
        <div class="col-md-12">        
          <h1 align="center"><a href="table_junction.jsp">Modification was successful!</a></h1>
          </div>
      </div>
    </div>
  </div>
  <div class="bg-info p-4">
    <div class="container">
      <div class="row">
        <div class="col-md-12 align-self-center p-4 " style="">
          <h4>Romanian databses.inc</h4>
          <p class="mb-4 text-primary">795 Bucuresti, Ilfov</p>
          <div class="row text-center">
            <div class="col-md-2 col-3">
              <a href="#" target="_blank"><i class="fa fa-facebook text-primary fa-2x"></i></a>
            </div>
            <div class="col-md-2 col-3">
              <a href="#" target="_blank"><i class="fa fa-twitter text-primary fa-2x"></i></a>
            </div>
            <div class="col-md-2 col-3">
              <a href="#" target="_blank"><i class="fa fa-instagram text-primary fa-2x"></i></a>
            </div>
            <div class="col-md-2 col-3">
              <a href="#" target="_blank"><i class="fa text-primary fa-2x fa-pinterest-p"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="bg-dark py-3" style="">
    <div class="container">
      <div class="row d-flex justify-content-between">
        <div class="col-lg-4 col-md-6">
          <p class="text-secondary mb-0">Copyright - Romanian databses.inc</p>
        </div>
        <div class="col-lg-4 col-md-6">
          <p class="text-secondary mb-0">2023</p>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo>
</body>

</html>
