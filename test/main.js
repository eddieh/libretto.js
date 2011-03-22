require('framework.js');

main = function () {
  Framework.script1();
  Framework.script2();
  
  window.document.body.innerHTML = 
    'This app is built with Framework ' + Framework.version;
};

