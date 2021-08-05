var img = [],
    i = 0,
    j = 0;

function getFileSelected() {
    f = ['jpg', 'jfif', 'png', 'JPG', 'PNG', 'JFIF'];
    var k;
    var sel = document.getElementById("file");
    for (k = 0; k < sel.files.length; k++) {
        sele = sel.files.item(i).name;
        a = sele.split(".");
        if (f.includes(a[1])) {
            img[i++] = sele;
            alr = document.getElementById("text").value;
            if (alr != '')
                sele = alr + "," + sele;
            document.getElementById("text").value = sele;
        } else {
            alert("please select image files");
        }
    }
}

function showCollage() {
    document.getElementById('container').style.display = 'none';
    document.getElementById('after').style.display = 'block';
    var n = img.length;


    var rows = parseInt(n / 3);
    var rem = n % 3;

    if (rows != 0) {
        if (rem != 0)
            var h = parseInt(95 / (rows + 1));
        else
            var h = parseInt(95 / (rows));
        var w = parseInt(95 / 3);
        for (i = 0; i < rows; i++) {
            for (j = 0; j < 3; j++) {
                var para = document.createElement("img");
                para.setAttribute("src", img[i * 3 + j]);
                para.setAttribute("width", w + "%");
                para.setAttribute("height", h + "%");
                para.setAttribute("border-radius", "15px");
                para.setAttribute("margin", "20px");
                var ele = document.getElementById("flexy");
                ele.appendChild(para);
            }
        }
        if (rem != 1)
            w = parseInt(95 / rem);
        else
            w = h;
        for (j = 0; j < rem; j++) {
            var para = document.createElement("img");
            para.setAttribute("src", img[rows * 3 + j]);
            para.setAttribute("width", w + "%");
            para.setAttribute("height", h + "%");
            para.setAttribute("border-radius", "15px");
            para.setAttribute("margin", "20px");
            var ele = document.getElementById("flexy");
            ele.appendChild(para);
        }
    } else {
        var h = parseInt(95 / 1);
        var w = parseInt(95 / rem);
        for (j = 0; j < rem; j++) {
            var para = document.createElement("img");
            para.setAttribute("src", img[j]);
            para.setAttribute("width", w + "%");
            para.setAttribute("height", h + "%");
            para.setAttribute("border-radius", "15px");
            para.setAttribute("margin", "20px");
            para.setAttribute("overflow", "none");
            var ele = document.getElementById("flexy");
            ele.appendChild(para);
        }
    }
}

function carousel() {
    document.getElementById('after').style.display = 'none';
    document.getElementById('carousel').style.display = 'block';

    // st=`
    //     <div class="carousel-item active">
    //             <img src="${img[0]}">
    //     </div>
    // `
    // img.forEach((x,idx)=> {
    //     if(idx===0)
    //         continue;
    //     st=st+
    //     `
    //         <div class="carousel-item ">
    //             <img src="${x}">
    //         </div>
    //     `
    // })
    // console.log(st)


    var a = $(".carousel-inner")
    var b = $(`<div class="carousel-item active">
                <img src="${img[0]}" class="d-block w-100" alt="...">
              </div>`)
    a.append(b)
    var c = $(".carousel-indicators")
    var d = $(`<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>`)
    c.append(d)

    for (var idx = 1; idx < img.length; idx++) {
        a = $(".carousel-inner")
        b = $(`<div class="carousel-item">
                    <img src="${img[idx]}" class="d-block w-100" alt="...">
              </div>`)
        a.append(b)

        c = $(".carousel-indicators")
        d = $(`<li data-target="#carouselExampleIndicators" data-slide-to="${idx}"></li>`)
        c.append(d)
    }



}
