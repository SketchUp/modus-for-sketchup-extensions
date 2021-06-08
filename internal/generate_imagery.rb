# This snippet is used to generate imagery.
# This is saved here so it can be re-used for new images, e.g. when the style sheet changes.

# 1. Tweak path to where modus.min.css is located.
# 2. Swap out the HTML with that from the example in question.
# 3. Run code, screenshot and replace image.

html = <<-HTML
<html>
  <link href="file:///C:/Users/cenerot/Documents/Source/SketchUp%20Extensions/Modus%20for%20SketchUp%20Extensions/modus.min.css" rel="stylesheet">
  <body>
    <!-- Modus modal-content typically represents the full dialog.
    Setting height to 100% here to fill up the window we already have
    and disable the border as we already get one from the window. -->
    <div class="modal-content" style="height: 100%; border-style: none;">
      <!-- We are skipping the usual Modus header element as HtmlDialog
      provides a title bar. -->
      <div class="modal-body">
        Is this a rhetorical question?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-dark">
          No
        </button>
        <button type="button" class="btn btn-primary">
          Yes
        </button>
      </div>
    </div>
  </body>
</html>
HTML

dialog = UI::HtmlDialog.new(dialog_title: "Prompt", resizable: false)
dialog.set_html(html)
dialog.set_size(350, 200)
dialog.show