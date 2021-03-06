<style type="text/css">
      body {
        font-family: Verdana, Helvetica, Arial, sans-serif;
        font-size: 100.01%;
        margin: 5px;
      }
      .shell{
        width:100%;
        border:0px solid #000000;
      }
      .shell a, shell a:link, shell a:visited, shell td a, shell td a:link,  shell td a:visited
      {
        text-decoration:none;
        color:#666666;
      }
      .shell a:hover{
        text-decoration:none;
        color:#000000;
      }
      .head {
        border-bottom:1px solid #A0A0A0;
        font-size:14px;
        height:27px;
      }
      .menu{
        margin-left:10px;
        padding-top:5px;
        float:left;
      }
      .menu a {
        margin-left: 5px;
      }
      .sign{
        float:right;
        margin-right: 20px;
      }
      .content {
        clear: both;
        margin-right:50px;
        padding:20px 20px 20px 20px;
        font-size: 12px;
      }
    </style>
    
     <script type="text/javascript">
      $(document).ready(function() {
        /**
         * set menu type
         * @param {string} key name
         * @return {object} 
         */
        var Menu = function(key) {
          var p = new RegExp(key + "=([^&]*)", "i").exec(window.location.search); //get URL parameter
          p = p && p[1] ? p[1] : 'rm';
          var m = 0;
          if (p.indexOf('r') + 1) {
            m += 1;
          }
          if (p.indexOf('m') + 1 || p.indexOf('n') + 1) {
            m += 2;
          }
          var r = {mode: m};
          r.main = (p.indexOf('m') === -1) ? '' : '.menu';//displaying no/classname
          return r;
        };
        
        var menu = Menu('mode');  //get menu type

        /* create the tree */
        $('#filer_0').jsfiler({menuMode: menu.mode, mainMenu: menu.main});  //activate
        $('#filer_0').jsfiler({knotRemove: 2});//adjust deletion mode
      });
    </script>
    
    
     <div class="shell">
      <div class="head">
        <div class="menu"><noscript>JavaScript is disabled. Please enable and reload the page</noscript></div>
      </div>
      
     
      <div class="content">
        <div id="filer_0"></div>
      </div>
    </div> 