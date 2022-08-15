server {
        listen 80;
        listen [::]:80;
        server_name  sebas.example.com;
        
        location /compose {
            return 301 http://192.168.56.6:5000;
        }
        location /apache {
  		    return 301 http://192.168.56.3:8080;
  	    }
}
