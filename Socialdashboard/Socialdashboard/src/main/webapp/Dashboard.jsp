<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Social Media Dashboard</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f8f9fa;
	color: #333;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
}

header {
	background-color: #007bff;
	color: #fff;
	text-align: center;
	padding: 20px;
	width: 100%;
}

section {
	margin: 20px;
	padding: 20px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 80%;
	max-width: 600px;
	box-sizing: border-box;
}

h2 {
	color: #007bff;
}

.feed-item {
	margin-bottom: 20px;
}

.feed-item img {
	width: 100%;
	border-radius: 8px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

.feed-content {
	margin-top: 10px;
}

footer {
	text-align: center;
	padding: 10px;
	background-color: #007bff;
	color: #fff;
	width: 100%;
}

.actions {
	margin-top: 10px;
}

.comments {
	display: block; /* Set to block to show comments by default */
	margin-top: 10px;
}

button {
	background-color: #007bff;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

button:hover {
	background-color: #0056b3;
}

#profile-info {
	display: none;
	color: #333;
	margin-top: 10px;
}

button.liked {
	background-color: pink;
}

.feed-item {
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<header>
		<h1>SocialFlow</h1>
	</header>

	<section id="feeds">
		<div class="feed-item">

			<!-- Video -->
			<div class="feed-item">
				<iframe width="100%" height="315"
					src="https://www.youtube.com/embed/bSrm9RXwBaI" frameborder="0"
					allowfullscreen></iframe>
				<div class="feed-content">
					<p>
						<strong>Shraddha</strong> posted a new video
					</p>
					<p class="timestamp">Java OOPs in One Shot | Object Oriented
						Programming | Java Language | Placement Course</p>
					<div class="actions">
						<button onclick="likePost(9)">Like</button>
						<button onclick="toggleComments(9)">Comments</button>
					</div>
					<div id="comments-7" class="comments">
						<ul id="comments-list-7"></ul>
						<input type="text" id="comment-input-7"
							placeholder="Write a comment">
						<button onclick="addComment(9)">Add Comment</button>
					</div>
				</div>
			</div>


			<a
				href="https://www.jansatta.com/wp-content/uploads/2024/01/Ram-Janmbhoomi.jpg?w=768"
				target="_blank"> <img
				src="https://www.jansatta.com/wp-content/uploads/2024/01/Ram-Janmbhoomi.jpg?w=768"
				alt="User Photo">
			</a>
			<div class="feed-content">
				<p>
					<strong>Kedar</strong> posted a new photo
				</p>
				<p class="timestamp">
					<strong>Ayodhya Ram Mandir </strong> is almost ready for the
					tourists and they can visit it on the inauguration day on 24
					January 2024. The Mandala Utsava at Ayodhya will take place from
					January 23 to March 10. The day following Lord Sri Rama’s Prana
					Pratistha (consecration).
				</p>
				<div class="actions">
					<button onclick="likePost(1)">Like</button>
					<button onclick="toggleComments(1)">Comments</button>
				</div>
				<div id="comments-1" class="comments">
					<ul id="comments-list-1"></ul>
					<input type="text" id="comment-input-1"
						placeholder="Write a comment">
					<button onclick="addComment(1)">Add Comment</button>
				</div>
			</div>
		</div>

		<!-- Feed Item 2 -->
		<div class="feed-item">
			<a
				href="https://indiaobservers.com/wp-content/uploads/2022/04/most-beautiful-indian-women-cricketers-in-india.jpg"
				target="_blank"> <img
				src="https://indiaobservers.com/wp-content/uploads/2022/04/most-beautiful-indian-women-cricketers-in-india.jpg"
				alt="User Photo">
			</a>
			<div class="feed-content">
				<p>
					<strong>Suraj Kumar</strong> posted a new photo
				</p>
				<p class="timestamp">
					<strong>Women in Blue </strong>The India women's national cricket
					team, also known as 'Women in Blue',[8] represents India in women's
					international cricket. It is governed by the Board of Control for
					Cricket in India (BCCI), and is a full member of International
					Cricket Council (ICC) with Women's Test cricket, Women's One Day
					International (WODI), and Women's Twenty20 International (WT20I)
					status.
				</p>
				<div class="actions">
					<button onclick="likePost(2)">Like</button>
					<button onclick="toggleComments(2)">Comments</button>
				</div>
				<div id="comments-2" class="comments">
					<ul id="comments-list-2"></ul>
					<input type="text" id="comment-input-2"
						placeholder="Write a comment">
					<button onclick="addComment(2)">Add Comment</button>
				</div>
			</div>
		</div>

		<!-- Video -->
		<div class="feed-item">
			<iframe width="100%" height="315"
				src="https://www.youtube.com/embed/iviYixpXUm8" frameborder="0"
				allowfullscreen></iframe>
			<div class="feed-content">
				<p>
					<strong>Tejaswini</strong> posted a new video
				</p>
				<p class="timestamp">Learn how to Print Pattern in C programming
					language.</p>
				<div class="actions">
					<button onclick="likePost(9)">Like</button>
					<button onclick="toggleComments(9)">Comments</button>
				</div>
				<div id="comments-7" class="comments">
					<ul id="comments-list-7"></ul>
					<input type="text" id="comment-input-7"
						placeholder="Write a comment">
					<button onclick="addComment(9)">Add Comment</button>
				</div>
			</div>
		</div>

		<!-- Feed Item 3 -->
		<div class="feed-item">
			<a
				href="https://www.achieveriasclasses.com/wp-content/uploads/2021/07/swachhbharat.png"
				target="_blank"> <img
				src="https://www.achieveriasclasses.com/wp-content/uploads/2021/07/swachhbharat.png"
				alt="User Photo">
			</a>
			<div class="feed-content">
				<p>
					<strong>Aditya</strong> posted a new photo
				</p>
				<p class="timestamp">
					<strong>Swachh Bharat Abhiyan </strong>Swachh Bharat Abhiyan is a
					movement run by the Indian Government that seeks to create a clean
					India. The campaign is divided into two sub-missions: Swachh Bharat
					Abhiyan (Gramin) under Ministry of Drinking Water and Sanitation
					and Swachh Bharat Abhiyan (Urban) under Ministry of Housing and
					Urban Affairs. Launched on October 2, 2014, it is the largest
					cleanliness drive of India that involves over three million
					government employees, students of schools and colleges and other
					common people.
				</p>
				<div class="actions">
					<button onclick="likePost(3)">Like</button>
					<button onclick="toggleComments(3)">Comments</button>
				</div>
				<div id="comments-3" class="comments">
					<ul id="comments-list-3"></ul>
					<input type="text" id="comment-input-3"
						placeholder="Write a comment">
					<button onclick="addComment(3)">Add Comment</button>
				</div>
			</div>
		</div>

		<!-- Video -->
		<div class="feed-item">
			<iframe width="100%" height="315"
				src="https://www.youtube.com/embed/L1NfeFLdwqY" frameborder="0"
				allowfullscreen></iframe>
			<div class="feed-content">
				<p>
					<strong>Amit</strong> posted a new video
				</p>
				<p class="timestamp">Yet another Virat Kohli masterclass,
					showcasing why he's the Gold Standard of ODI batting! His knock of
					122* against Pakistan had everything, from mesmerizing boundaries,
					to amazing shots over the rope!</p>
				<div class="actions">
					<button onclick="likePost(9)">Like</button>
					<button onclick="toggleComments(9)">Comments</button>
				</div>
				<div id="comments-7" class="comments">
					<ul id="comments-list-7"></ul>
					<input type="text" id="comment-input-7"
						placeholder="Write a comment">
					<button onclick="addComment(9)">Add Comment</button>
				</div>
			</div>
		</div>


		<!-- Feed Item 4 -->
		<div class="feed-item">
			<a
				href="https://content.tupaki.com/en/feeds/2023/12/01/212181-animal.webp"
				target="_blank"> <img
				src="https://content.tupaki.com/en/feeds/2023/12/01/212181-animal.webp"
				alt="User Photo">
			</a>
			<div class="feed-content">
				<p>
					<strong>Gupta</strong> posted a new photo
				</p>
				<p class="timestamp">
					<strong>Animal </strong> The film stars Ranbir Kapoor, Anil Kapoor,
					Bobby Deol, Rashmika Mandanna and Triptii Dimri. In the film,
					Ranvijay Singh, a violent young man, learns about an assassination
					attempt on his father and sets out to exact revenge. The film was
					officially announced in January 2021, along with the title of the
					film.
				</p>
				<div class="actions">
					<button onclick="likePost(4)">Like</button>
					<button onclick="toggleComments(4)">Comments</button>
				</div>
				<div id="comments-4" class="comments">
					<ul id="comments-list-4"></ul>
					<input type="text" id="comment-input-4"
						placeholder="Write a comment">
					<button onclick="addComment(4)">Add Comment</button>
				</div>
			</div>
		</div>

		<!-- Video -->
		<div class="feed-item">
			<iframe width="100%" height="315"
				src="https://www.youtube.com/embed/oD5J1a3XU48" frameborder="0"
				allowfullscreen></iframe>
			<div class="feed-content">
				<p>
					<strong>Mr.Abhishek</strong> posted a new video
				</p>
				<p class="timestamp">This video will help you to prepare for how
					to crack TCS Campus Placement as well as Campus Interview. How to
					clear this TCS Job and be a part of Successful Career.</p>
				<div class="actions">
					<button onclick="likePost(9)">Like</button>
					<button onclick="toggleComments(9)">Comments</button>
				</div>
				<div id="comments-7" class="comments">
					<ul id="comments-list-7"></ul>
					<input type="text" id="comment-input-7"
						placeholder="Write a comment">
					<button onclick="addComment(9)">Add Comment</button>
				</div>
			</div>
		</div>


		<!-- Feed Item 5 -->
		<div class="feed-item">
			<a
				href="https://c.ndtvimg.com/2022-11/cp7qohks_narendra-modi-italian-pm-giorgia-meloni_625x300_16_November_22.jpg?im=Resize=(1230,900)"
				target="_blank"> <img
				src="https://c.ndtvimg.com/2022-11/cp7qohks_narendra-modi-italian-pm-giorgia-meloni_625x300_16_November_22.jpg?im=Resize=(1230,900)8"
				alt="User Photo">
			</a>
			<div class="feed-content">
				<p>
					<strong>Raghav Reddy</strong> posted a new photo
				</p>
				<p class="timestamp">
					<strong></strong> Meloni posted a selfie with PM Modi on her social
					media account and wrote, "Good friends at COP28. #Melodi." At the
					time of writing this story, the post garnered over 3,62,000 likes
					and numerous comments.
				</p>
				<div class="actions">
					<button onclick="likePost(5)">Like</button>
					<button onclick="toggleComments(5)">Comments</button>
				</div>
				<div id="comments-5" class="comments">
					<ul id="comments-list-5"></ul>
					<input type="text" id="comment-input-5"
						placeholder="Write a comment">
					<button onclick="addComment(5)">Add Comment</button>
				</div>
			</div>
		</div>

		<!-- Video -->
		<div class="feed-item">
			<iframe width="100%" height="315"
				src="https://www.youtube.com/embed/o1V18yR8ULM" frameborder="0"
				allowfullscreen></iframe>
			<div class="feed-content">
				<p>
					<strong>India Today</strong> posted a new video
				</p>
				<p class="timestamp">Ram Temple Ayodhya| India Today Live</p>
				<div class="actions">
					<button onclick="likePost(8)">Like</button>
					<button onclick="toggleComments(8)">Comments</button>
				</div>
				<div id="comments-7" class="comments">
					<ul id="comments-list-7"></ul>
					<input type="text" id="comment-input-7"
						placeholder="Write a comment">
					<button onclick="addComment(8)">Add Comment</button>
				</div>
				   
			</div>
		</div>



		<!-- Feed Item 6 -->
		<div class="feed-item">
			<a
				href="https://www.sportsadda.com/static-assets/waf-images/28/af/fc/16-9/nWA9qdC9pF.jpg?v=1.6&w=420%20420w"
				target="_blank"> <img
				src="https://www.sportsadda.com/static-assets/waf-images/28/af/fc/16-9/nWA9qdC9pF.jpg?v=1.6&w=420%20420w"
				alt="User Photo">
			</a>
			<div class="feed-content">
				<p>
					<strong>Aaradhya </strong> posted a new photo
				</p>
				<p class="timestamp">
					<strong>#Rohit Sharma</strong> is the only player with three ODI
					double centuries having scored 209, 264 and 208*. On 10 December
					2022, Ishan Kishan became the fourth Indian batsman to score a
					double century.
				</p>
				<div class="actions">
					<button onclick="likePost(6)">Like</button>
					<button onclick="toggleComments(6)">Comments</button>
				</div>
				<div id="comments-6" class="comments">
					<ul id="comments-list-6"></ul>
					<input type="text" id="comment-input-6"
						placeholder="Write a comment">
					<button onclick="addComment(6)">Add Comment</button>
				</div>
			</div>
		</div>


		<!-- Videos -->

		<div class="feed-item">
			<iframe width="100%" height="315"
				src="https://www.youtube.com/embed/QGyIQiOl4Ow" frameborder="0"
				allowfullscreen></iframe>
			<div class="feed-content">
				<p>
					<strong>Codenera</strong> posted a new video
				</p>
				<p class="timestamp">We provide a 100% Job Guarantee not only
					verbally, but on a registered legal agreement in writing, makes it
					trustworthy and add values to i www.codenera.in holds expertise in
					providing IT training services to freshers and Corporate employees
					10 hours of Daily Hustle Daily and Weekly mocks by industry experts
					Assignments to build you strong for the IT industry Excellent
					trainers with 10+ years of experience Our hardwork Your Career
					Refundable Policy - Special classes for Non - IT background
					Students - 2 Trainers Available per Batch dedicatedly. and Much
					more to explore ! Join us in this beautiful and life changing
					journey !</p>
				<div class="actions">
					<button onclick="likePost(7)">Like</button>
					<button onclick="toggleComments(7)">Comments</button>
				</div>
				<div id="comments-7" class="comments">
					<ul id="comments-list-7"></ul>
					<input type="text" id="comment-input-7"
						placeholder="Write a comment">
					<button onclick="addComment(7)">Add Comment</button>
				</div>
			</div>
		</div>

		<!-- Continue the pattern for additional feed items -->

		<!-- Placeholder for additional feed items -->
		<div class="feed-item">
			<!-- ... (repeat the structure for additional feed items) ... -->
		</div>
	</section>

	<footer>
		<p>&copy; 2024 Your Social Media Dashboard</p>
	</footer>

	<script>
		// Function to load comments from localStorage
		function loadComments(feedId) {
			var storedComments = localStorage.getItem("comments-" + feedId);
			if (storedComments) {
				var commentsList = document.getElementById("comments-list-"
						+ feedId);
				commentsList.innerHTML = storedComments;
				showLimitedComments(feedId);
			}
		}

		// Function to save comments to localStorage
		function saveComments(feedId, comments) {
			localStorage.setItem("comments-" + feedId, comments);
		}

		// Function to add a new comment
		function addComment(feedId) {
			var commentInput = document.getElementById("comment-input-"
					+ feedId);
			var commentText = commentInput.value.trim();
			if (commentText !== "") {
				var commentsList = document.getElementById("comments-list-"
						+ feedId);
				var newComment = document.createElement("li");
				newComment.innerText = commentText;
				commentsList.appendChild(newComment);

				// Save comments to localStorage
				saveComments(feedId, commentsList.innerHTML);

				commentInput.value = "";
			}
		}

		// Function to show a limited number of comments initially
		function showLimitedComments(feedId) {
			var commentsList = document.getElementById("comments-list-"
					+ feedId);
			var allComments = commentsList.children;

			// Display only the first, let's say, 2 comments initially
			for (var i = 0; i < allComments.length; i++) {
				if (i < 2) {
					allComments[i].style.display = "block";
					allComments[i].style.marginBottom = "10px"; // Add margin between comments
				} else {
					allComments[i].style.display = "none";
				}
			}

			// Display "See More" button if there are more than 2 comments
			if (allComments.length > 2) {
				var seeMoreButton = document.createElement("button");
				seeMoreButton.innerText = "See More";
				seeMoreButton.onclick = function() {
					// Show all comments when "See More" is clicked
					for (var i = 2; i < allComments.length; i++) {
						allComments[i].style.display = "block";
					}
					seeMoreButton.style.display = "none"; // Hide the "See More" button
				};
				commentsList.appendChild(seeMoreButton);
			}
		}

		// Function to handle page load
		function onPageLoad() {
			// Load comments for each feed item
			loadComments(1); // Load comments for the first feed item
			loadComments(2); // Load comments for the second feed item
			loadComments(3); // Load comments for the third feed item
			loadComments(4); // Load comments for the fourth feed item
			loadComments(5); // Load comments for the fifth feed item
			loadComments(6); // Load comments for the sixth feed item
			// Repeat for additional feed items as needed
		}

		// Call onPageLoad when the page is loaded
		window.onload = onPageLoad;

		function redirectToProfile() {
			// Replace "profile.html" with the actual URL of your profile page
			window.location.href = "profilepage.jsp";
		}
		function likePost(feedId) {
			var likeButton = document.querySelector("#comments-" + feedId
					+ " button:nth-child(1)");
			likeButton.classList.toggle("liked");
		}

		function likePost(feedId) {
			var likeButton = document.querySelector("#comments-" + feedId
					+ " button:nth-child(1)");
			var likeCountElement = document.querySelector("#comments-" + feedId
					+ " .like-count");

			likeButton.classList.toggle("liked");

			// Update like count
			var isLiked = likeButton.classList.contains("liked");
			var currentLikes = parseInt(likeCountElement.innerText);

			if (isLiked) {
				currentLikes++;
			} else {
				currentLikes--;
			}

			likeCountElement.innerText = currentLikes + " Likes";
		}

		document.addEventListener('DOMContentLoaded', function() {
			onPageLoad();
		});
	</script>


</body>
</html>
