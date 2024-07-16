/**
 * functions.js
 * 
 * @author Augusto dos Santos (Guto) Pereira
 * guto.pereira@live.com
 */

scriptsIncluded++;// helps to check if everything went OK

/**
 * getMe
 * 
 * retorna o elemento com o ID definido
 * 
 * @param {string} elem
 * 
 * @return {null|HTMLbject}
 */
function getMe(elem) {
  return document.getElementById(elem);
}

/**
 * removeAccents
 * 
 * replaces every instance of an accent in the input string to its related character
 * 
 * @param {string} str 
 * @return {string}
 * 
 * @example
 * input [str] = "Esta é a última Interrogação"
 * 
 * output -> "Esta e a ultima Interrogacao"
 */
function removeAccents(str) {
  var patterns = [
		/\&/gm, /á/gm, /à/gm, /â/gm, /ä/gm, /ã/gm, /é/gm, /è/gm, /ê/gm, /ë/gm, /í/gm, /ì/gm, /î/gm, /ï/gm, /ó/gm, /ò/gm, /ô/gm, /õ/gm, /ö/gm, /ú/gm, /ù/gm, /û/gm, /ü/gm, /ñ/gm, /ç/gm, /ý/gm, /ÿ/gm, /Á/gm, /À/gm, /Â/gm, /Ã/gm, /Ä/gm, /É/gm, /È/gm, /Ê/gm, /Ë/gm, /Í/gm, /Ì/gm, /Î/gm, /Ï/gm, /Ó/gm, /Ò/gm, /Ô/gm, /Õ/gm, /Ö/gm, /Ú/gm, /Ù/gm, /Û/gm, /Ü/gm, /Ñ/gm, /Ç/gm, /Ý/gm, /\//gm, /"/gm
  ];

  var replacements = [
		'And', 'a', 'a', 'a', 'a', 'a', 'e', 'e', 'e', 'e', 'i', 'i', 'i', 'i', 'o', 'o', 'o', 'o', 'o', 'u', 'u', 'u', 'u', 'n', 'c', 'y', 'y', 'A', 'A', 'A', 'A', 'A', 'E', 'E', 'E', 'E', 'I', 'I', 'I', 'I', 'O', 'O', 'O', 'O', 'O', 'U', 'U', 'U', 'U', 'N', 'C', 'Y', '-', ''
  ];

  for (let i = 0; i < patterns.length; i++) {
    str = str.replace(patterns[i], replacements[i]);
  }
  return str;
}

/**
 * strTrim
 * 
 * elimina os espaços brancos no início ou fim da string fornecida
 * 
 * @param {string} x
 * 
 * @return {string}
 */
function strTrim(x) {
  return x.replace(/^\s+|\s+$/gm,'');
}

/**
 * resolveBadImage
 * 
 * substitui a imagem não encontrada por uma padrão
 * 
 * @param {HTMLobject} elem 
 */
function resolveBadImage(elem) {
  console.log("resolveBadImage");
  console.log("Não foi possível encontrar imagem '"+ elem.src + "'");
  elem.src = SITE_BASE_URL + "/images/image-not-found.png";
}

/**
 * addMessage
 * 
 * adds a message to the stack 
 * @param {string} message - a message to be displayed
 */
function addMessage(message) {
  let container = getMe('flashContainer');
  let msg = document.createElement('div');
  container.appendChild(msg);
  let d = new Date();
  msg.id = "jsmsg-" + d.getHours() + d.getMinutes() + d.getSeconds() + d.getMilliseconds();
  msg.className = "flashMsg";
  let p = document.createElement('p');
  p.innerHTML = he.encode(message.trim());
  msg.appendChild(p);
  let btn = document.createElement('span');
  btn.className = "removeMsg";
  setTimeout(function(obj=btn){ obj.parentNode.parentNode.removeChild(obj.parentNode); },5000);
  btn.onclick = function() {
    this.parentNode.parentNode.removeChild(this.parentNode);
  };
  btn.innerHTML = "x";
  msg.appendChild(btn);
}