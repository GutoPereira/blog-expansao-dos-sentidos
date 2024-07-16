document.addEventListener('DOMContentLoaded', async function() {
    const contents = await fetch('data/contents.json').then(response => response.json())
    const posts = await fetch('data/posts.json').then(response => response.json())
    const images = await fetch('data/images.json').then(response => response.json())
    
    const postsSection = document.getElementById('posts-wrapper');
    console.log(posts)

    for (let i = posts.length-1; i >= 0; i--) {
        console.log(i)
          const postCard = document.createElement('a');
          postCard.href = `post.html?name=${posts[i].post_url}`;
          postCard.innerHTML = `
            <div class="card transparent z-depth-0 col m6 l4 s12">
              <div class="z-depth-1 white">
                <div class="card-image waves-effect waves-block waves-light" title="${images[i].title}">
                  <img src="images/posts/${images[i].name}" alt="${images[i].description}">
                </div>
                <div class="card-content">
                  <span class="card-title">${contents[i].post_name}</span>
                </div>
              </div>
            </div>
          `;
        postsSection.appendChild(postCard);
    }
})