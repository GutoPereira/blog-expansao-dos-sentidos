document.addEventListener('DOMContentLoaded', async function() {
    const urlParams = new URLSearchParams(window.location.search);
    const postURL = urlParams.get('name');
      
    if (!postURL) {
      window.location.href = '404.html';
      return;
    }

    const contents = await fetch('data/contents.json').then(response => response.json())
    const posts = await fetch('data/posts.json').then(response => response.json())
    const images = await fetch('data/images.json').then(response => response.json())
    
    const postSection = document.getElementById('main-content');
    console.log(posts)
          const post = posts.find(p => p.post_url == postURL);
          if (!post) {
            window.location.href = '404.html';
            return;
          }
          const image = images.find(i => i.post_id == post.post_id)
          const content = contents.find(c => c.post_id == post.post_id)

          document.title = `${content.post_name} • Expansão dos Sentidos`;
          const mainContent = document.getElementById('main-content');
          mainContent.innerHTML = `
            <div class="parallax-container" title="${image.title}">
              <div class="parallax">
                <img src="images/posts/${image.name}" alt="${image.description}">
                <h2 class="white-text">${content.post_name}</h2>
              </div>
            </div>
            <article id="fetched-text">
              <div>por <strong>Guto Pereira</strong></div>
              <div>${content.post_text}</div>
            </article>
          `;

          M.AutoInit();
})