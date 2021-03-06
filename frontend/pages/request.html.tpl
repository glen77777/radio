{% extends "wrapper.tpl" %}

{% block title %}music requests{% endblock %}

{% block body %}
<div class="box">
  <header>
    <h1>Is something <strong>missing?</strong></h1>
  </header>

  <p>Requests should fit in one of the existing channels.</p>
  <p>If you think there should be a new channel, choose &quot;misc&quot; and specify in the notes.  For example, there may be a vapourwave channel in the future (and there's currently a bunch of vapourwave music on the &quot;everything&quot; channel).</p>
  <form action="/upload/request" method="post">
    <fieldset>
      <ol>
        <li>
          <label for="file">Artist <span class="alert">*</span></label>
          <input type="text" id="artist" name="artist" required>
        </li>
        <li>
          <label for="album">Album or Song <span class="alert">*</span></label>
          <input type="text" id="album" name="album" required>
        </li>
        <li>
          <label for="channel">Channel <span class="alert">*</span></label>
          <!-- this is a hard-coded channel list so the page works for non-javascript people -->
          <select name="channel" id="channel">
            {% for channel in channels %}
              <option value="{{ channel }}">{{ channel }}</option>
            {% endfor %}
          </select>
        </li>
        <li>
          <label for="url">URL</label>
          <input type="url" id="url" name="url">
        </li>
        <li>
          <label for="notes">Notes</label>
          <textarea id="notes" name="notes"></textarea>
        </li>
        <li>
          <input type="submit" value="Request it!">
        </li>
      </ol>
    </fieldset>
  </form>
</div>
{% endblock %}
