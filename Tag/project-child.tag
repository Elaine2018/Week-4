<project-child>
	<video width="840" height="720" controls>
		<source src={url} type="video/mp4">
	</video>
		<h3>{ caption }</h3>
		<button type="button" onclick={ project1.remove }>Remove Project</button>
<style>
	:scope {
		display: block;
		text-align: center;
	}

</style>

	<script>
	  var that = this
			this.remove=function(event){
				var obj= event.item;
				var index= that.myProjects.indexOf(obj);
				that.myProjects.splice(index,1);
				that.update;
			}
	</script>


</project-child>
