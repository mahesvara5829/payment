//function comment(){
  //const submit=document.getElementById("submit");
  //const posts = document.querySelectorAll(".ppp");
  //submit.addEventListener("click",(e)=>{
  //const postId = posts.getAttribute("data-id");
  //const formData=new FormData(document.getElementById("form"));
  //const XHR=new XMLHttpRequest();
  //XHR.open("POST",`/sp_payments/${postID}/comments`,true);
  //XHR.responseType="json";
  //XHR.send(formData);
  //XHR.onload=()=>{
    //if (XHR.status!=200){
      //alert(`Error ${XHR.status}: ${XHR.statusText}`);
      //return null
    //}
    //const comment=XHR.response.post;
    //const user=XHR.response.user;
    //const list=document.getEeventListener("list");
    //const formText=document.getEventListener("content");
    //const HTML=`
    //<div class="ppp" data-id=<%=comment.sp_payment_id%>>
    //<strong>${user.nickname}：</strong>
      //${comment.text}
    //</div>`;
    //list.insertAdjacentHTML("afterend",HTML);
    //formText.value="";
  //};
  //e.preventDefault();
//});
//}
//window.addEventListener("load",comment)