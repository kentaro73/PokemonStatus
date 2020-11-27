$(function () {
  $('button').on('click', () => {
      $('p').show();
  });
});
function doReload() {
     
  // reloadメソッドによりページをリロード
  window.location.reload();
}

window.addEventListener('load', function () {

  // ページ表示完了した5秒後にリロード
  setTimeout(doReload, 5000);
});

