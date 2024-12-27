const sortFunctions = {
    Ascending : sortAscending,
    Descending : sortDescending,
    Default: sortDefault,
    Newest: sortNew,
    Oldest: sortOld,
    Graded: sortGraded,
    NotGraded: sortNotGraded
};

function sort(){
    var option = document.getElementById("optionButton").value;
    const sortFunction = sortFunctions[option];
    sortFunction();
}

function sortDefault(){
    sortPresentations((a,b) => 
        a.dataset.id.localeCompare(b.dataset.id));
}

function sortAscending(){
    sortPresentations((a,b) =>
        a.dataset.title.localeCompare(b.dataset.title));
}

function sortDescending(){
    sortPresentations((a,b) =>
        b.dataset.title.localeCompare(a.dataset.title));
}

function sortNew(){
    sortPresentations((a,b) =>
        new Date(a.dataset.date) - new Date(b.dataset.date));
}

function sortOld(){
    sortPresentations((a,b) =>
        new Date(b.dataset.date) - new Date(a.dataset.date));
}

function sortGraded(){
    sortPresentations((a,b) =>
        b.dataset.graded - a.dataset.graded);
}

function sortNotGraded(){
    sortPresentations((a,b) =>
        a.dataset.graded - b.dataset.graded);
}

function sortPresentations(compare){
    var presentationElement = document.getElementById("presentations");
    var presentationArray = Array.from(presentationElement.getElementsByClassName("presentation-list"));
    console.log(presentationArray);
    presentationArray.sort(compare);
    presentationElement.innerHTML = "";
    presentationArray.forEach((presentation) => 
        presentationElement.appendChild(presentation)
    );
    console.log(presentationElement);
}

window.sort = sort;