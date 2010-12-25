
    

  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>smart-tab.el at master from sroccaserra's emacs - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />

    <link href="https://assets1.github.com/stylesheets/bundle_common.css?ac67cac1f98b15ff2b0e1f9b50ff0c39b573d734" media="screen" rel="stylesheet" type="text/css" />
<link href="https://assets0.github.com/stylesheets/bundle_github.css?ac67cac1f98b15ff2b0e1f9b50ff0c39b573d734" media="screen" rel="stylesheet" type="text/css" />

    <script type="text/javascript" charset="utf-8">
      var GitHub = {}
      var github_user = null
      
    </script>
    <script src="https://assets2.github.com/javascripts/jquery/jquery-1.4.2.min.js?ac67cac1f98b15ff2b0e1f9b50ff0c39b573d734" type="text/javascript"></script>
    <script src="https://assets3.github.com/javascripts/bundle_common.js?ac67cac1f98b15ff2b0e1f9b50ff0c39b573d734" type="text/javascript"></script>
<script src="https://assets3.github.com/javascripts/bundle_github.js?ac67cac1f98b15ff2b0e1f9b50ff0c39b573d734" type="text/javascript"></script>


        <script type="text/javascript" charset="utf-8">
      GitHub.spy({
        repo: "sroccaserra/emacs"
      })
    </script>

    
  
    
  

  <link href="https://github.com/sroccaserra/emacs/commits/master.atom" rel="alternate" title="Recent Commits to emacs:master" type="application/atom+xml" />

        <meta name="description" content="My emacs related code" />
    <script type="text/javascript">
      GitHub.nameWithOwner = GitHub.nameWithOwner || "sroccaserra/emacs";
      GitHub.currentRef = 'master';
      GitHub.commitSHA = "4e16b7058c15f78fcc92be1b193e769f1007ab2b";
      GitHub.currentPath = "smart-tab.el";
      GitHub.masterBranch = "master";

      
    </script>
  

            <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-3769691-2']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();
    </script>

  </head>

  

  <body class="logged_out ">
    

    
      <script type="text/javascript">
        var _kmq = _kmq || [];
        function _kms(u){
          var s = document.createElement('script'); var f = document.getElementsByTagName('script')[0]; s.type = 'text/javascript'; s.async = true;
          s.src = u; f.parentNode.insertBefore(s, f);
        }
        _kms('//i.kissmetrics.com/i.js');_kms('//doug1izaerwt3.cloudfront.net/406e8bf3a2b8846ead55afb3cfaf6664523e3a54.1.js');
      </script>
    

    

    

    

    <div class="subnavd" id="main">
      <div id="header" class="true">
        
          <a class="logo boring" href="https://github.com">
            <img src="/images/modules/header/logov3.png?changed" class="default" alt="github" />
            <![if !IE]>
            <img src="/images/modules/header/logov3-hover.png" class="hover" alt="github" />
            <![endif]>
          </a>
        
        
        <div class="topsearch">
  
    <ul class="nav logged_out">
      <li class="pricing"><a href="/plans">Pricing and Signup</a></li>
      <li><a href="/explore">Explore GitHub</a></li>
      <li><a href="/features">Features</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="https://github.com/login">Login</a></li>
    </ul>
  
</div>

      </div>

      
      
        
    <div class="site">
      <div class="pagehead repohead vis-public   ">

      

      <div class="title-actions-bar">
        <h1>
          <a href="/sroccaserra">sroccaserra</a> / <strong><a href="https://github.com/sroccaserra/emacs">emacs</a></strong>
          
          
        </h1>

        
    <ul class="actions">
      

      
        <li class="for-owner" style="display:none"><a href="https://github.com/sroccaserra/emacs/admin" class="minibutton btn-admin "><span><span class="icon"></span>Admin</span></a></li>
        <li>
          <a href="/sroccaserra/emacs/toggle_watch" class="minibutton btn-watch " id="watch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '97ddfd3792403b1ecfb57215058820107674f16d'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Watch</span></a>
          <a href="/sroccaserra/emacs/toggle_watch" class="minibutton btn-watch " id="unwatch_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '97ddfd3792403b1ecfb57215058820107674f16d'); f.appendChild(s);f.submit();return false;" style="display:none"><span><span class="icon"></span>Unwatch</span></a>
        </li>
        
          
            <li class="for-notforked" style="display:none"><a href="/sroccaserra/emacs/fork" class="minibutton btn-fork " id="fork_button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '97ddfd3792403b1ecfb57215058820107674f16d'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>
            <li class="for-hasfork" style="display:none"><a href="#" class="minibutton btn-fork " id="your_fork_button"><span><span class="icon"></span>Your Fork</span></a></li>
          

          
        
      
      
      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers"><a href="/sroccaserra/emacs/watchers" title="Watchers" class="tooltipped downwards">3</a></li>
          <li class="forks"><a href="/sroccaserra/emacs/network" title="Forks" class="tooltipped downwards">0</a></li>
        </ul>
      </li>
    </ul>

      </div>

        
  <ul class="tabs">
    <li><a href="https://github.com/sroccaserra/emacs" class="selected" highlight="repo_source">Source</a></li>
    <li><a href="https://github.com/sroccaserra/emacs/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/sroccaserra/emacs/network" highlight="repo_network">Network</a></li>
    <li><a href="/sroccaserra/emacs/pulls" highlight="repo_pulls">Pull Requests (0)</a></li>

    

    
      
      <li><a href="/sroccaserra/emacs/issues" highlight="issues">Issues (0)</a></li>
    

            
    <li><a href="/sroccaserra/emacs/graphs" highlight="repo_graphs">Graphs</a></li>

    <li class="contextswitch nochoices">
      <span class="toggle leftwards" >
        <em>Branch:</em>
        <code>master</code>
      </span>
    </li>
  </ul>

  <div style="display:none" id="pl-description"><p><em class="placeholder">click here to add a description</em></p></div>
  <div style="display:none" id="pl-homepage"><p><em class="placeholder">click here to add a homepage</em></p></div>

  <div class="subnav-bar">
  
  <ul>
    <li>
      <a href="#" class="dropdown">Switch Branches (1)</a>
      <ul>
        
          
            <li><strong>master &#x2713;</strong></li>
            
      </ul>
    </li>
    <li>
      <a href="#" class="dropdown defunct">Switch Tags (0)</a>
      
    </li>
    <li>
    
    <a href="/sroccaserra/emacs/branches" class="manage">Branch List</a>
    
    </li>
  </ul>
</div>

  
  
  
  
  
  



        
    <div id="repo_details" class="metabox clearfix">
      <div id="repo_details_loader" class="metabox-loader" style="display:none">Sending Request&hellip;</div>

        <a href="/sroccaserra/emacs/downloads" class="download-source" id="download_button" title="Download source, tagged packages and binaries."><span class="icon"></span>Downloads</a>

      <div id="repository_desc_wrapper">
      <div id="repository_description" rel="repository_description_edit">
        
          <p>My emacs related code
            <span id="read_more" style="display:none">&mdash; <a href="#readme">Read more</a></span>
          </p>
        
      </div>

      <div id="repository_description_edit" style="display:none;" class="inline-edit">
        <form action="/sroccaserra/emacs/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="97ddfd3792403b1ecfb57215058820107674f16d" /></div>
          <input type="hidden" name="field" value="repository_description">
          <input type="text" class="textfield" name="value" value="My emacs related code">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>

      
      <div class="repository-homepage" id="repository_homepage" rel="repository_homepage_edit">
        <p><a href="http://" rel="nofollow"></a></p>
      </div>

      <div id="repository_homepage_edit" style="display:none;" class="inline-edit">
        <form action="/sroccaserra/emacs/admin/update" method="post"><div style="margin:0;padding:0"><input name="authenticity_token" type="hidden" value="97ddfd3792403b1ecfb57215058820107674f16d" /></div>
          <input type="hidden" name="field" value="repository_homepage">
          <input type="text" class="textfield" name="value" value="">
          <div class="form-actions">
            <button class="minibutton"><span>Save</span></button> &nbsp; <a href="#" class="cancel">Cancel</a>
          </div>
        </form>
      </div>
      </div>
      <div class="rule "></div>
            <div id="url_box" class="url-box">
        <ul class="clone-urls">
          
            
            <li id="http_clone_url"><a href="https://github.com/sroccaserra/emacs.git" data-permissions="Read-Only">HTTP</a></li>
            <li id="public_clone_url"><a href="git://github.com/sroccaserra/emacs.git" data-permissions="Read-Only">Git Read-Only</a></li>
          
          
        </ul>
        <input type="text" spellcheck="false" id="url_field" class="url-field" />
              <span style="display:none" id="url_box_clippy"></span>
      <span id="clippy_tooltip_url_box_clippy" class="clippy-tooltip tooltipped" title="copy to clipboard">
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="14"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://assets2.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=url_box_clippy&amp;copied=&amp;copyto=">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://assets2.github.com/flash/clippy.swf?v5"
             width="14"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=url_box_clippy&amp;copied=&amp;copyto="
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      </span>

        <p id="url_description">This URL has <strong>Read+Write</strong> access</p>
      </div>
    </div>


        

      </div><!-- /.pagehead -->

      









<script type="text/javascript">
  GitHub.currentCommitRef = 'master'
  GitHub.currentRepoOwner = 'sroccaserra'
  GitHub.currentRepo = "emacs"
  GitHub.downloadRepo = '/sroccaserra/emacs/archives/master'
  GitHub.revType = "master"

  GitHub.controllerName = "blob"
  GitHub.actionName     = "show"
  GitHub.currentAction  = "blob#show"

  

  
</script>








  <div id="commit">
    <div class="group">
        
  <div class="envelope commit">
    <div class="human">
      
        <div class="message"><pre><a href="/sroccaserra/emacs/commit/4e16b7058c15f78fcc92be1b193e769f1007ab2b">smart-compile: save excursion before switching to clojure test file</a> </pre></div>
      

      <div class="actor">
        <div class="gravatar">
          
          <img src="https://secure.gravatar.com/avatar/665a6ade9036bac2651362fba5e8dd0c?s=140&d=https%3A%2F%2Fgithub.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="30" height="30"  />
        </div>
        <div class="name"><a href="/sroccaserra">sroccaserra</a> <span>(author)</span></div>
        <div class="date">
          <abbr class="relatize" title="2010-10-04 14:19:29">Mon Oct 04 14:19:29 -0700 2010</abbr>
        </div>
      </div>

      

    </div>
    <div class="machine">
      <span>c</span>ommit&nbsp;&nbsp;<a href="/sroccaserra/emacs/commit/4e16b7058c15f78fcc92be1b193e769f1007ab2b" hotkey="c">4e16b7058c15f78fcc92</a><br />
      <span>t</span>ree&nbsp;&nbsp;&nbsp;&nbsp;<a href="/sroccaserra/emacs/tree/4e16b7058c15f78fcc92be1b193e769f1007ab2b/smart-tab.el" hotkey="t">7a9b5165c020cc179e63</a><br />
      
        <span>p</span>arent&nbsp;
        
        <a href="/sroccaserra/emacs/commit/3f20b1dd9273d37dd669df47695f3d808255da9c" hotkey="p">3f20b1dd9273d37dd669</a>
      

    </div>
  </div>

    </div>
  </div>



  <div id="slider">

  
    <div class="breadcrumb" data-path="smart-tab.el/">
      <b><a href="/sroccaserra/emacs/tree/4e16b7058c15f78fcc92be1b193e769f1007ab2b">emacs</a></b> / smart-tab.el       <span style="display:none" id="clippy_2239">smart-tab.el</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://assets2.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_2239&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://assets2.github.com/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_2239&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div class="frames">
      <div class="frame frame-center" data-path="smart-tab.el/">
        <div id="files">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><img alt="Txt" height="16" src="https://assets3.github.com/images/icons/txt.png?ac67cac1f98b15ff2b0e1f9b50ff0c39b573d734" width="16" /></span>
                <span class="mode" title="File Mode">100644</span>
                
                  <span>36 lines (30 sloc)</span>
                
                <span>1.182 kb</span>
              </div>
              <ul class="actions">
                
                  <li><a class="file-edit-link" href="#" rel="/sroccaserra/emacs/file-edit/__ref__/smart-tab.el">edit</a></li>
                
                <li><a href="/sroccaserra/emacs/raw/master/smart-tab.el" id="raw-url">raw</a></li>
                
                  <li><a href="/sroccaserra/emacs/blame/master/smart-tab.el">blame</a></li>
                
                <li><a href="/sroccaserra/emacs/commits/master/smart-tab.el">history</a></li>
              </ul>
            </div>
            
  <div class="data type-scheme">
    
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td>
            <pre class="line_numbers"><span id="LID1" rel="#L1">1</span>
<span id="LID2" rel="#L2">2</span>
<span id="LID3" rel="#L3">3</span>
<span id="LID4" rel="#L4">4</span>
<span id="LID5" rel="#L5">5</span>
<span id="LID6" rel="#L6">6</span>
<span id="LID7" rel="#L7">7</span>
<span id="LID8" rel="#L8">8</span>
<span id="LID9" rel="#L9">9</span>
<span id="LID10" rel="#L10">10</span>
<span id="LID11" rel="#L11">11</span>
<span id="LID12" rel="#L12">12</span>
<span id="LID13" rel="#L13">13</span>
<span id="LID14" rel="#L14">14</span>
<span id="LID15" rel="#L15">15</span>
<span id="LID16" rel="#L16">16</span>
<span id="LID17" rel="#L17">17</span>
<span id="LID18" rel="#L18">18</span>
<span id="LID19" rel="#L19">19</span>
<span id="LID20" rel="#L20">20</span>
<span id="LID21" rel="#L21">21</span>
<span id="LID22" rel="#L22">22</span>
<span id="LID23" rel="#L23">23</span>
<span id="LID24" rel="#L24">24</span>
<span id="LID25" rel="#L25">25</span>
<span id="LID26" rel="#L26">26</span>
<span id="LID27" rel="#L27">27</span>
<span id="LID28" rel="#L28">28</span>
<span id="LID29" rel="#L29">29</span>
<span id="LID30" rel="#L30">30</span>
<span id="LID31" rel="#L31">31</span>
<span id="LID32" rel="#L32">32</span>
<span id="LID33" rel="#L33">33</span>
<span id="LID34" rel="#L34">34</span>
<span id="LID35" rel="#L35">35</span>
<span id="LID36" rel="#L36">36</span>
</pre>
          </td>
          <td width="100%">
            
              
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">;;;</span></div><div class='line' id='LC2'><span class="c1">;; Smart Tab</span></div><div class='line' id='LC3'><br/></div><div class='line' id='LC4'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">smart-tab-using-hippie-expand</span> <span class="nv">t</span></div><div class='line' id='LC5'>&nbsp;&nbsp;<span class="s">"turn this on if you want to use hippie-expand completion."</span><span class="p">)</span></div><div class='line' id='LC6'><br/></div><div class='line' id='LC7'><span class="p">(</span><span class="nf">defun</span> <span class="nv">smart-tab</span> <span class="p">(</span><span class="nf">prefix</span><span class="p">)</span></div><div class='line' id='LC8'>&nbsp;&nbsp;<span class="s">"Needs `transient-mark-mode&#39; to be on. This smart tab is</span></div><div class='line' id='LC9'><span class="s">  minibuffer compliant: it acts as usual in the minibuffer.</span></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'><span class="s">  In all other buffers: if PREFIX is \\[universal-argument], calls</span></div><div class='line' id='LC12'><span class="s">  `smart-indent&#39;. Else if point is at the end of a symbol,</span></div><div class='line' id='LC13'><span class="s">  expands it. Else calls `smart-indent&#39;."</span></div><div class='line' id='LC14'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span> <span class="s">"P"</span><span class="p">)</span></div><div class='line' id='LC15'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">labels</span> <span class="p">((</span><span class="nf">smart-tab-must-expand</span> <span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">prefix</span><span class="p">)</span></div><div class='line' id='LC16'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">unless</span> <span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">consp</span> <span class="nv">prefix</span><span class="p">)</span></div><div class='line' id='LC17'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">mark-active</span><span class="p">)</span></div><div class='line' id='LC18'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">looking-at</span> <span class="s">"\\_&gt;"</span><span class="p">))))</span></div><div class='line' id='LC19'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">cond </span><span class="p">((</span><span class="nf">minibufferp</span><span class="p">)</span></div><div class='line' id='LC20'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">minibuffer-complete</span><span class="p">))</span></div><div class='line' id='LC21'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">smart-tab-must-expand</span> <span class="nv">prefix</span><span class="p">)</span></div><div class='line' id='LC22'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">smart-tab-using-hippie-expand</span></div><div class='line' id='LC23'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">hippie-expand</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC24'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">dabbrev-expand</span> <span class="nv">nil</span><span class="p">)))</span></div><div class='line' id='LC25'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">smart-indent</span><span class="p">)))))</span></div><div class='line' id='LC26'><br/></div><div class='line' id='LC27'><span class="p">(</span><span class="nf">defun</span> <span class="nv">smart-indent</span> <span class="p">()</span></div><div class='line' id='LC28'>&nbsp;&nbsp;<span class="s">"Indents region if mark is active, or current line otherwise."</span></div><div class='line' id='LC29'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC30'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">mark-active</span></div><div class='line' id='LC31'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">indent-region</span> <span class="p">(</span><span class="nf">region-beginning</span><span class="p">)</span></div><div class='line' id='LC32'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">region-end</span><span class="p">))</span></div><div class='line' id='LC33'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">indent-for-tab-command</span><span class="p">)))</span></div><div class='line' id='LC34'><br/></div><div class='line' id='LC35'><span class="p">(</span><span class="nf">provide</span> <span class="ss">&#39;smart-tab</span><span class="p">)</span></div><div class='line' id='LC36'><br/></div></pre></div>
              
            
          </td>
        </tr>
      </table>
    
  </div>


          </div>
        </div>
      </div>
    </div>
  

  </div>



<div class="frame frame-loading" style="display:none;">
  <img src="/images/modules/ajax/big_spinner_336699.gif">
</div>
    </div>
  
      
    </div>

    <div id="footer" class="clearfix">
      <div class="site">
        <div class="sponsor">
          <a href="http://www.rackspace.com" class="logo">
            <img alt="Dedicated Server" src="https://assets0.github.com/images/modules/footer/rackspace_logo.png?v2?ac67cac1f98b15ff2b0e1f9b50ff0c39b573d734" />
          </a>
          Powered by the <a href="http://www.rackspace.com ">Dedicated
          Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
          Computing</a> of Rackspace Hosting<span>&reg;</span>
        </div>

        <ul class="links">
          <li class="blog"><a href="https://github.com/blog">Blog</a></li>
          <li><a href="http://support.github.com">Support</a></li>
          <li><a href="https://github.com/training">Training</a></li>
          <li><a href="http://jobs.github.com">Job Board</a></li>
          <li><a href="http://shop.github.com">Shop</a></li>
          <li><a href="https://github.com/contact">Contact</a></li>
          <li><a href="http://develop.github.com">API</a></li>
          <li><a href="http://status.github.com">Status</a></li>
        </ul>
        <ul class="sosueme">
          <li class="main">&copy; 2010 <span id="_rrt" title="0.42135s from fe5.rs.github.com">GitHub</span> Inc. All rights reserved.</li>
          <li><a href="/site/terms">Terms of Service</a></li>
          <li><a href="/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
        </ul>
      </div>
    </div><!-- /#footer -->

    
      
      
        <!-- current locale:  -->
        <div class="locales">
          <div class="site">

            <ul class="choices clearfix limited-locales">
              <li><span class="current">English</span></li>
              
                  <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
              
                  <li><a rel="nofollow" href="?locale=fr">Français</a></li>
              
                  <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
              
                  <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
              
                  <li><a rel="nofollow" href="?locale=ru">Русский</a></li>
              
                  <li><a rel="nofollow" href="?locale=zh">中文</a></li>
              
              <li class="all"><a href="#" class="minibutton btn-forward js-all-locales"><span><span class="icon"></span>See all available languages</span></a></li>
            </ul>

            <div class="all-locales clearfix">
              <h3>Your current locale selection: <strong>English</strong>. Choose another?</h3>
              
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=en">English</a></li>
                  
                      <li><a rel="nofollow" href="?locale=af">Afrikaans</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ca">Català</a></li>
                  
                      <li><a rel="nofollow" href="?locale=cs">Čeština</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=de">Deutsch</a></li>
                  
                      <li><a rel="nofollow" href="?locale=es">Español</a></li>
                  
                      <li><a rel="nofollow" href="?locale=fr">Français</a></li>
                  
                      <li><a rel="nofollow" href="?locale=hr">Hrvatski</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=id">Indonesia</a></li>
                  
                      <li><a rel="nofollow" href="?locale=it">Italiano</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ja">日本語</a></li>
                  
                      <li><a rel="nofollow" href="?locale=nl">Nederlands</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=no">Norsk</a></li>
                  
                      <li><a rel="nofollow" href="?locale=pl">Polski</a></li>
                  
                      <li><a rel="nofollow" href="?locale=pt-BR">Português (BR)</a></li>
                  
                      <li><a rel="nofollow" href="?locale=ru">Русский</a></li>
                  
                </ul>
              
                <ul class="choices">
                  
                      <li><a rel="nofollow" href="?locale=sr">Српски</a></li>
                  
                      <li><a rel="nofollow" href="?locale=sv">Svenska</a></li>
                  
                      <li><a rel="nofollow" href="?locale=zh">中文</a></li>
                  
                </ul>
              
            </div>

          </div>
          <div class="fade"></div>
        </div>
      
    

    <script>window._auth_token = "97ddfd3792403b1ecfb57215058820107674f16d"</script>
    <div id="keyboard_shortcuts_pane" style="display:none">
  <h2>Keyboard Shortcuts</h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column middle">
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>t</dt>
        <dd>Open tree</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>p</dt>
        <dd>Open parent</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column last">
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.columns.last -->
  </div><!-- /.columns.equacols -->

  <div class="rule"></div>

  <h3>Issues</h3>

  <div class="columns threecols">
    <div class="column first">
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>x</dt>
        <dd>Toggle select target</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column middle">
      <dl class="keyboard-mappings">
        <dt>I</dt>
        <dd>Mark selected as read</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>U</dt>
        <dd>Mark selected as unread</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>e</dt>
        <dd>Close selected</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Remove selected from view</dd>
      </dl>
    </div><!-- /.column.middle -->
    <div class="column last">
      <dl class="keyboard-mappings">
        <dt>c</dt>
        <dd>Create issue</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>l</dt>
        <dd>Create label</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>i</dt>
        <dd>Back to inbox</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>u</dt>
        <dd>Back to issues</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>/</dt>
        <dd>Focus issues search</dd>
      </dl>
    </div>
  </div>

  <div class="rule"></div>

  <h3>Network Graph</h3>
  <div class="columns equacols">
    <div class="column first">
      <dl class="keyboard-mappings">
        <dt>← <em>or</em> h</dt>
        <dd>Scroll left</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>→ <em>or</em> l</dt>
        <dd>Scroll right</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>↑ <em>or</em> k</dt>
        <dd>Scroll up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>↓ <em>or</em> j</dt>
        <dd>Scroll down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>t</dt>
        <dd>Toggle visibility of head labels</dd>
      </dl>
    </div><!-- /.column.first -->
    <div class="column last">
      <dl class="keyboard-mappings">
        <dt>shift ← <em>or</em> shift h</dt>
        <dd>Scroll all the way left</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift → <em>or</em> shift l</dt>
        <dd>Scroll all the way right</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift ↑ <em>or</em> shift k</dt>
        <dd>Scroll all the way up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>shift ↓ <em>or</em> shift j</dt>
        <dd>Scroll all the way down</dd>
      </dl>
    </div><!-- /.column.last -->
  </div>

</div>
    

    <!--[if IE 8]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie8")
    </script>
    <![endif]-->

    <!--[if IE 7]>
    <script type="text/javascript" charset="utf-8">
      $(document.body).addClass("ie7")
    </script>
    <![endif]-->

    <script type="text/javascript">
      _kmq.push(['trackClick', 'entice-signup-button', 'Entice banner clicked']);
      
    </script>
    
  </body>
</html>

