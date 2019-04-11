

let pdfjsLib = window['pdfjs-dist/build/pdf'];
// The workerSrc property
pdfjsLib.GlobalWorkerOptions.workerSrc = 'scripts/pdfjs-dist/build/pdf.worker.js';

class PDFdoc
{

  constructor(canvas_element)
  {

    this.pdfcanvas = canvas_element;
    this.pdfcontext = this.pdfcanvas.node().getContext('2d');

    this.pdfDoc = null;
    this.scale = 2;
    this.pageNum = 1;
    this.pageRendering = false;
    this.pageNumPending = null;


    this.setPDFref = this.setPDFref.bind(this);
    this.loadCallback = this.loadCallback.bind(this);
    this.renderCallbackQueueCheck = this.renderCallbackQueueCheck.bind(this);
    this.renderCallback = this.renderCallback.bind(this);
    this.renderPage = this.renderPage.bind(this);
    this.queueRenderPage = this.queueRenderPage.bind(this);

    this.prevPage = this.prevPage.bind(this);
    this.nextPage = this.nextPage.bind(this);

    this.onload = null;
  }


  /**
   * Asynchronously downloads PDF.
   */
  setPDFref ( filename ) 
  {
    pdfjsLib.getDocument(filename)
      .then( (pdfDoc_)=>{
        this.loadCallback(pdfDoc_);
      });
  }

  loadCallback (pdfDoc_) {

    this.pdfDoc = pdfDoc_;
    // Initial/first page rendering
    this.renderPage(this.pageNum);

    if( this.onload != null)
      this.onload();

  }

  renderCallbackQueueCheck() {
    this.pageRendering = false;
    if (this.pageNumPending !== null) {
      // New page rendering is pending
      this.renderPage(this.pageNumPending);
      this.pageNumPending = null;
    }
  }

  renderCallback(_page) {

    // size of pdf
    let viewport = _page.getViewport(this.scale);

    let mainDiv_bbox = main.node().getBoundingClientRect();

    // scale to fit

//    this.pdfcanvas.height = viewport.height;
    //this.pdfcanvas.width = viewport.width;
//    console.log(mainDiv_bbox.width, viewport.width);

    let adj_viewport = viewport;// _page.getViewport(this.scale * mainDiv_bbox.height /  viewport.height );
//            canvas.height = viewport.height;
    
    this.pdfcanvas.attr("height", adj_viewport.height)
      .attr("width", adj_viewport.width );


//    console.log(this.pdfcanvas.height, this.pdfcanvas.width);

    // Render PDF page into canvas context
    let renderContext = {
      canvasContext: this.pdfcontext,
      viewport: adj_viewport
    };

    let renderTask = _page.render(renderContext);

    // Wait for rendering to finish
    renderTask.promise.then( this.renderCallbackQueueCheck );
  }

  /**
   * Get page info from document, resize canvas accordingly, and render page.
   * @param num Page number.
   */
   renderPage (num) {
      this.pageRendering = true;
      this.pdfDoc.getPage(num).then( this.renderCallback );
  }



  /**
   * If another page rendering in progress, waits until the rendering is
   * finised. Otherwise, executes rendering immediately.
   */
  queueRenderPage (num) {
    if( num >= 1 && num <= this.pdfDoc.numPages )
    {
      if (this.pageRendering) {
        this.pageNumPending = num;
      } else {
        this.renderPage(num);
      }
    }

  }

  /**
   * Displays previous page.
   */
  prevPage () {
    if (this.pageNum <= 1 ) {
      return;
    }
    this.pageNum--;
    this.queueRenderPage(this.pageNum);
  }
  // document.getElementById('prev').addEventListener('click', onPrevPage);

  /**
   * Displays next page.
   */
  nextPage () {
    if (this.pageNum >= this.pdfDoc.numPages) {
      return;
    }
    this.pageNum++;
    this.queueRenderPage(this.pageNum);
  }
  // document.getElementById('next').addEventListener('click', onNextPage);
}
