<project1>
	<div id="header">
 	 <h1>Creative Technology and Design</h1>
  </div>

	<div class="projectDisplay">

		<input type="text" ref="urlEl" placeholder="Enter url">
		<input type="text" ref="captionEl" placeholder="Enter caption">

		<button type="button" onclick={ addProject }>Add Project</button>
	</div>

	<div show={ myProjects.length == 0 }>
		<p>NO Project</p>
	</div>

	<project-child each={ myProjects }>
	</project-child>

	<script>

		console.log(this);

		this.myProjects = [
		{
			url: "./Video/Final-Space Exploration TFU.mp4",
			caption: "Space Exploration" },
		{
			url: "./Video/Coded Music-Makey Makey Concert.mp4",
			caption:"Makey Makey Concert" },
		{
			url: "./Video/TurtleStitch Design.mp4",
			caption: "TurtleStitch" }
		];

		var that  =  this;

		this.remove = function(event) {
			console.log('EVENT:', event);
			// console.log('EVENT.ITEM', event.item);
			var Obj = event.item;
			//in this context, since this function is invoked by child.tag. so this == child

			var index = that.myProjects.indexOf(Obj);
			//remember the remove button is called by child. so we cannot type this to refer to the parent
			//we have to give it a new name
			that.myProjects.splice(index, 1);
			//try to comment out this line and see what happens
			//in riot, js object data value only gets updated by user event trigger.
			//since in this case, event is triggered by child, parent data won't be updated until
			//we call it to update manually.
			that.update();
		};

		this.addProject = function(event) {
			console.log(event);
			var url = this.refs.urlEl.value;
			var caption = this.refs.captionEl.value;
			var newProject = { url: url, caption: caption };
			// We are adding a book object to the source of truth array.
			this.myProjects.push(newProject);
			// RESET INPUTS this.refs.urlEl.value = "";
			this.refs.captionEl.value = "";
		};
	</script>

	<style>
		:scope {
			display: block;
			background: #cddc39;
			padding: 15px;
		}
		img {
			width: 80%;
		}
		#header {
			text-align:center;
		}
	</style>
</project1>
