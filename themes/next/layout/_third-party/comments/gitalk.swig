{% if page.comments && theme.gitalk.enable %}
  <link rel="stylesheet" href="https://unpkg.com/gitalk/dist/gitalk.css">
  <script src="https://geektutu.github.io/hexo-theme-geektutu/js/gitalk.min.js"></script>

  <script type="text/javascript">
    var gitalk = new Gitalk({
      repo: '{{ theme.gitalk.repo }}',
      owner: '{{ theme.gitalk.owner }}',
      admin: {{ theme.gitalk.adminUser }},
      id: {{ theme.gitalk.id }},
      labels: {{ theme.gitalk.labels }},
      language: '{{ theme.gitalk.language }}',
      perPage: {{ theme.gitalk.perPage }},
      distractionFreeMode: {{ theme.gitalk.distractionFreeMode }}
      pagerDirection: '{{ theme.gitalk.pagerDirection }}',
      accessToken: '{{ theme.gitalk.accessToken }}'
    })
    gitalk.render('gitalk-container')           
  </script>
{% endif %}