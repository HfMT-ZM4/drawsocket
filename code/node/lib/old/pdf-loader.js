
// file muse be specified in the HTML file like:
// <script src="pdf-loader.js" id="pdf-loader" PDFfile="./piano-flint.pdf"></script>

//var url = document.getElementById("pdf-loader").getAttribute("PDFfile");

// Loaded via <script> tag, create shortcut to access PDF.js exports.
var pdfjsLib = window['pdfjs-dist/build/pdf'];

// The workerSrc property shall be specified.
pdfjsLib.GlobalWorkerOptions.workerSrc = 'scripts/pdfjs-dist/build/pdf.worker.js';

var pdfDoc = null,
    scale = 2,
    pageNum = 1,
    pageRendering = false,
    pageNumPending = null,
    pdfcanvas = document.getElementById('pdfcanvas'),
    pdfcontext = pdfcanvas.getContext('2d');

/**
 * Get page info from document, resize canvas accordingly, and render page.
 * @param num Page number.
 */
function renderPage(num) {
  pageRendering = true;
  // Using promise to fetch the page
  pdfDoc.getPage(num).then( function(page) {

    var viewport = page.getViewport(scale);

    pdfcanvas.height = viewport.height;
    pdfcanvas.width = viewport.width;

    // Render PDF page into canvas context
    var renderContext = {
      canvasContext: pdfcontext,
      viewport: viewport
    };
    var renderTask = page.render(renderContext);

    // Wait for rendering to finish
    renderTask.promise.then(function() {
      pageRendering = false;
      if (pageNumPending !== null) {
        // New page rendering is pending
        renderPage(pageNumPending);
        pageNumPending = null;
      }
    });
  });

  // Update page counters (not in use now)
  // document.getElementById('page_num').textContent = num;
}

/**
 * If another page rendering in progress, waits until the rendering is
 * finised. Otherwise, executes rendering immediately.
 */
function queueRenderPage(num) {

  if (pageRendering) {
    pageNumPending = num;
  } else {
    renderPage(num);
  }
}
//window.addEventListener('resize', queueRenderPage(pageNum), true);

function safe_loadpage( num )
{
  if( num > 0 && num <= pdfDoc.numPages )
  {
    pageNum = num;
    queueRenderPage(pageNum);

  }
}

/**
 * Displays previous page.
 */
function onPrevPage() {
  if (pageNum <= 1 ) {
    return;
  }
  pageNum--;
  queueRenderPage(pageNum);
}
// document.getElementById('prev').addEventListener('click', onPrevPage);

/**
 * Displays next page.
 */
function onNextPage() {
  if (pageNum >= pdfDoc.numPages) {
    return;
  }
  pageNum++;
  queueRenderPage(pageNum);
}
// document.getElementById('next').addEventListener('click', onNextPage);

/**
 * Asynchronously downloads PDF.
 */
function setPDFref( filename )
{
  url = filename;
  console.log( "loading " + url );
  pdfjsLib.getDocument(url).then( function(pdfDoc_) {
    pdfDoc = pdfDoc_;
    // document.getElementById('page_count').textContent = pdfDoc.numPages;

    // Initial/first page rendering
    renderPage(pageNum);
  });
}

// setPDFref( url );
