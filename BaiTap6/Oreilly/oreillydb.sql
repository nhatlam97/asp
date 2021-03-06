USE [master]
GO
/****** Object:  Database [OreillyDb]    Script Date: 14/10/2017 7:15:22 AM ******/
CREATE DATABASE [OreillyDb] 
GO
USE [OreillyDb]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 14/10/2017 7:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[MaBaiViet] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NOT NULL,
	[TomTat] [nvarchar](250) NOT NULL,
	[TacGia] [nvarchar](100) NULL,
	[NgayDang] [datetime] NOT NULL,
	[HinhAnh] [nvarchar](250) NULL,
	[NoiDung] [ntext] NOT NULL,
	[MaChuyenMuc] [int] NOT NULL,
	[AnBai] [bit] NOT NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[MaBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenMuc]    Script Date: 14/10/2017 7:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMuc](
	[MaChuyenMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenChuyenMuc] [nvarchar](250) NOT NULL,
	[DaPhanCong] [bit] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[MaChuyenMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 14/10/2017 7:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](30) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 14/10/2017 7:15:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaSo] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMuc] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[NgayGiao] [datetime] NOT NULL,
	[NgayNop] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (3, N'Neuroevolution: A different kind of deep learning', N'The quest to evolve neural networks through evolutionary algorithms.', N'Kenneth O. Stanley', CAST(N'2017-02-13 00:00:00.000' AS DateTime), N'tractography_animated.jpg', N'Neuroevolution is making a comeback. Prominent artificial intelligence labs and researchers are experimenting with it, a string of new successes have bolstered enthusiasm, and new opportunities for impact in deep learning are emerging. Maybe you haven’t heard of neuroevolution in the midst of all the excitement over deep learning, but it’s been lurking just below the surface, the subject of study for a small, enthusiastic research community for decades. And it’s starting to gain more attention as people recognize its potential.

Put simply, neuroevolution is a subfield within artificial intelligence (AI) and machine learning (ML) that consists of trying to trigger an evolutionary process similar to the one that produced our brains, except inside a computer. In other words, neuroevolution seeks to develop the means of evolving neural networks through evolutionary algorithms.

Get O''Reilly''s AI newsletter


When I first waded into AI research in the late 1990s, the BaiViet that brains could be evolved inside computers resonated with my sense of adventure. At that time, it was an unusual, even obscure field, but I felt a deep curiosity and affinity. The result has been 20 years of my life thinking about this subject, and a slew of algorithms developed with outstanding colleagues over the years, such as NEAT, HyperNEAT, and novelty search. In this article, I hope to convey some of the excitement of neuroevolution as well as provide insight into its issues, but without the opaque technical jargon of scientific articles. I have also taken, in part, an autobiographical perspective, reflecting my own deep involvement within the field. I hope my story provides a window for a wider audience into the quest to evolve brains within computers.', 1, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (4, N'Contouring learning rate to optimize neural nets', N'Tips and tricks for treating learning rate as a hyperparameter, and using visualizations to see what’s really going on.', N' Siddha Ganju', CAST(N'2017-08-17 00:00:00.000' AS DateTime), N'main_art.jpg', N'Learning rate is the rate at which the accumulation of information in a neural network progresses over time. The learning rate determines how quickly (and whether at all) the network reaches the optimum, most conducive location in the network for the specific output desired. In plain Stochastic Gradient Descent (SGD), the learning rate is not related to the shape of the error gradient because a global learning rate is used, which is independent of the error gradient.

However, there are many modifications that can be made to the original SGD update rule that relates the learning rate to the magnitude and orientation of the error gradient.

Why contour the learning rate?

Contouring the learning rate over time is similar to contouring the speed of a car according to road conditions. On smooth, broad roads such as a highway, we can increase our speed (learning rate), but on narrow, hilly, or valley roads, we must slow down. Additionally, we don’t want to drive too slowly on highways, or we’ll take too long to reach the destination (longer training time because of improper parameters). Similarly, we don’t want to drive too fast on hilly and narrow roads (like ravines in the optimization loss surface), because we could easily lose control of the car (be caught in jitter, or create too much bounce with little improvement) or skip the destination (the optima).', 1, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (5, N'Why continuous learning is key to AI', N'A look ahead at the tools and methods for learning from sparse feedback.', N' Ben Lorica', CAST(N'2017-08-07 00:00:00.000' AS DateTime), N'11425420024_2c8bac3844_h_crop-0f36eed632fb59f67a5c53e446eea100.jpg', N'As more companies begin to experiment with and deploy machine learning in different settings, it’s good to look ahead at what future systems might look like. Today, the typical sequence is to gather data, learn some underlying structure, and deploy an algorithm that systematically captures what you’ve learned. Gathering, preparing, and enriching the right data—particularly training data—is essential and remains a key bottleneck among companies wanting to use machine learning.

I take for granted that future AI systems will rely on continuous learning as opposed to algorithms that are trained offline. Humans learn this way, and AI systems will increasingly have the capacity to do the same. Imagine visiting an office for the first time and tripping over an obstacle. The very next time you visit that scene—perhaps just a few minutes later—you’ll most likely know to look out for the object that tripped you.

Get O''Reilly''s AI newsletter


There are many applications and scenarios where learning takes on a similar exploratory nature. Think of an agent interacting with an environment while trying to learn what actions to take and which ones to avoid in order to complete some preassigned task. We’ve already seen glimpses of this with recent applications of reinforcement learning (RL). In RL, the goal is to learn how to map observations and measurements to a set of actions, while trying to maximize some long-term reward. (The term RL is frequently used to describe both a class of problems and a set of algorithms.) While deep learning gets more media attention, there are many interesting recent developments in RL that are well known within AI circles. Researchers have recently applied RL to game play, robotics, autonomous vehicles, dialog systems, text summarization, education and training, and energy utilization.', 1, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (6, N'Bringing gaming to life with AI and deep learning', N'Machine learning opens the door for the use of training rather than programming in game development.', N' Danny Lange', CAST(N'2017-08-23 00:00:00.000' AS DateTime), N'danny_lange_main_art.jpg', N'Game development is a complex and labor-intensive effort. Game environments, storylines, and character behaviors are carefully crafted, requiring graphics artists, storytellers, and software engineers to work in unison. Often, games end up with a delicate mix of hard-wired behavior in the form of traditional code and a somewhat more responsive behavior in the form of large collections of rules. Over the last few years, data intensive machine learning (ML) solutions have obliterated rule-based systems in the enterprise—think Amazon, Netflix, and Uber. At Unity, we have explored the use of some of these technologies, including deep learning in content creation and deep reinforcement learning in game development. We see great promise in the new wave of ML and AI.

To some data-driven large enterprises, ML is nothing new. In 2007, when Netflix famously launched the Netflix Prize as an open competition for the best collaborative filtering algorithm to predict user ratings for films, it was the opening shot to the wave of AI media coverage we experience today. But in early 2000, some large corporations had already dabbled with data-driven decision-making and ML in order to improve their businesses. Amazon had been hard at work on their own recommendation algorithms, trying to uncover user preferences to, in turn, convert those preferences into higher sales. Advertisement technologies were another early adopter that used ML to improve click-through rates (CTR). Over the years, ML technologies have matured and spread to many industries.

Get O''Reilly''s AI newsletter


Recommendation algorithms, for instance, have evolved from just recommending to probing for more information through a mixture of exploration and exploitation. The challenge is that when Amazon or Netflix use their recommendation systems to gather data, they get an incomplete view of the user preferences if they only present highly recommended items to users but none of the many other items in their catalogs. The solution is a subtle shift from pure exploitation to adding an element of exploration.', 1, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (7, N'Build a talking, face-recognizing doorbell for about $100', N'DIY with Amazon Echo and Raspberry PI: Recognize thousands of people at your door every month, for pennies.', N' Lukas Biewald', CAST(N'2017-03-16 00:00:00.000' AS DateTime), N'photo-montage.jpg', N'Recently, I set out to install a doorbell in my new house and thought: why doesn’t my doorbell tell me who is at the door?

Most of my DIY projects end up costing more than the equivalent product, even if I value my time at $0 per hour. Something about supply chains and economies of scale, I guess. (But I have way more fun making things myself.) In the course of this project, I built a door camera that is not only way cheaper than my Dropcam, but it has some genuinely useful features that, for some reason, aren’t available on the market yet.', 1, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (8, N'Fast track Apache Spark', N'6 lessons learned to get a quick start on productivity.', N'Tobi Bosede', CAST(N'2017-09-12 00:00:00.000' AS DateTime), N'3290272880_49a89a45ff_o_crop-5d8b9157112ae89984078b0cc5c76df4.jpg', N'My upcoming Strata Data NYC 2017 talk about big data analysis of futures trades is based on research done under the limited funding conditions of academia. This meant that I did not have an infrastructure team, therefore I had to set up a Spark environment myself. I was analyzing futures order books from the Chicago Mercantile Exchange (CME) spanning May 2, 2016, to November 18, 2016. The CME data included extended hours trading with the following fields: instrument name, maturity, date, time stamp, price, and quantity. Futures were comprised of 21 financial instruments spanning six markets—foreign exchange, metal, energy, index, bond, and agriculture. Trades were recorded roughly every half second. In the process of doing this research, I learned a lot of lessons. I want to help you avoid making the mistakes I did so you can start making an immediate impact in your organization with Spark. Here are the six lessons I learned:

You don’t need a database or data warehouse. It is common for Spark setups to use Apache Hadoop’s distributed file system (HDFS) and Hive for querying, but you can use text files and other accepted file formats in local directories if you don’t want to go through the hassle of setting up a database or warehouse. When I worked at Sprint, they had an on-premise cluster setup and stored data in HDFS, which provided me great exposure to learn new technologies. However, in my research with the CME, I had already been reading CSVs directly into Spark using the spark-csv package, which has since been merged into the main Spark project because of the fundamental capability the package provides.
You don’t need a cluster of machines. You can hit the ground running using your local machine or a single server. This is also helpful in that you do not have to consider what cluster manager to install—YARN or Mesos. You can simply use the standalone cluster manager that comes with Spark. Just make sure that, if you use one machine, it has multiple cores and enough memory to cache your data. In general, any time you build a distributed system you should first start with one machine. One of my mentors once told me that software engineering is like math. To build something, it is often useful to start at n=0, as in an inductive proof, and then generalize from there. That is one analogy that I can relate to!
Use a notebook. Don’t bother trying to configure an IDE or using the shell to write applications. Of course, using the shell is great if you are submitting an application or doing some basic coding. I used the shell when I was learning Spark to run some of the examples that come with Spark and follow along with tutorials. And, in theory, having all the features of an IDE might be a reflexive thing many programmers want for any coding they do. However, the pain of configuring an IDE with Spark is not worth the investment. A friend of mine once told me he had spent time struggling to set up an IDE for programming in Spark in vain. If only I had met him before then. I would have been able to share that all the programming I did in Spark for my research was either in the shell or a Jupyter Notebook. The latter being used the majority of the time, so an IDE was completely unnecessary. Although, every once in awhile, I would go old school and just use vi, a command line editor, to code.', 2, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (9, N'Load, search, and secure data in multiple formats', N'The O''Reilly Podcast: Dave Cassel on building a unified enterprise database to store and query any type of data.', N' Shannon Cutt', CAST(N'2017-09-15 00:00:00.000' AS DateTime), N'korea-andong-gwangheungsa-dancheong-04_crop-5a480c09437393b834529919c83b430b.jpg', N'Work on applications, as soon as you load the data

The BaiViet of ''load as-is'' is that your data already exists in some form, and that form can vary dramatically. It can be word documents or XML or JSON data. It can also be stuff that you''ve already got in relational databases. The BaiViet here is that if we can take that data in whatever form it currently exists and bring it into the database in that form, then we can start exploring it in the context of that database—rather than having to first build up some schema, some representation of it, do a bunch of ETL work, and only then be able to start working with it.

What that means is as soon as we get the data into the database, we can start actually working on our applications. The application is what actually delivers value—business value—to customers. By getting to work on that faster and being able to iterate on that, we''ve found we''ve got a much better time to value, and our customers have told us that repeatedly.', 2, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (10, N'The APIs for neural networks in TensorFlow', N'A look at the Layer API, TFLearn, and Keras.', N'Dana MatropoleRobert SchrollMichael Li', CAST(N'2017-09-11 00:00:00.000' AS DateTime), N'network-1246209_1920_crop-833aeddbf8be3537c628e4d63fec69fb.jpg', N'TensorFlow has gathered quite a bit of attention as the new hot toolkit for building neural networks. To the beginner, it may seem the only thing that rivals this interest is the number of different APIs that you can use. In this article, we go over a few of them, building the same neural network each time. We start with low-level TensorFlow math, and then show how to simplify that code with TensorFlow''s layer API. We also discuss two libraries built on top of TensorFlow: TFLearn and Keras.

The MNIST database is a collection of handwritten digits. Each is recorded in a 28x28 pixel grayscale image. We build a two-layer perceptron network to classify each image as a digit from zero to nine. The first layer will fully connect the 784 inputs to 64 hidden neurons, using a sigmoid activation. The second layer will connect those hidden neurons to 10 outputs, scaled with the softmax function. The network will be trained with stochastic gradient descent, on minibatches of 64, for 20 epochs. (These values are chosen not because they are the best, but because they produce reasonable results in a reasonable time.)

Get O''Reilly''s weekly data newsletter


We''ll start by loading the modules and the data, as well as setting up some constants we''ll use repeatedly.', 2, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (11, N'Solving real-world business problems with computer vision', N'Applications of CNNs for real-time image classification in the enterprise.', N' Josh PattersonKirit Basu', CAST(N'2017-09-07 00:00:00.000' AS DateTime), N'3638880464_2b6ca81fe0_o_crop-4913262c9931815ed8349dd89f5f7d55.jpg', N'The process of data integration has traditionally been done using structured and semistructured data in batch-oriented use cases. In the last few years, real-time data has become the new frontier for many enterprises, and real-time streaming of unstructured or binary data has been a particularly tough nut to crack. In fact, many enterprises have large volumes of binary data that are not used to their full potential because of the inherent complexity of ingesting and processing such data.

Here are a few examples of how one might work with binary data :

Get O''Reilly''s weekly data newsletter


Performing speech-to-text recognition of audio files, recognizing individual speakers, and automatically cataloging files with enriched metadata so that audio recorded in interactive voice response systems is indexed and searchable.
Automatically classifying image files based on the actual content of the image, such as recognizing products, faces, or other objects in the scene.
Of course, there are many other use cases. The good news is that working with binary data does not have to be that complicated. In this post, we’ll show how companies are using advances in computer vision, integrated with modern data ingestion technologies, to solve real-world business problems.', 2, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (13, N'Integrating convolutional neural networks into enterprise applications', N'Building a production-grade real-time image classification system.', N' Josh PattersonKirit Basu', CAST(N'2017-09-07 00:00:00.000' AS DateTime), N'figure_1-2ad52dd00213f8e3058abd55d3fce1ff.jpg', N'Integrating neural networks and convolutional neural networks into a production-ready enterprise application can be a challenge in itself, separate from the modelling task. In addition to the infrastructure aspects mentioned in our higher-level post “Solving real-world business problems with computer vision,” we need to consider a number of tasks:

What kind of convolutional architecture do we want to use for this computer vision problem?
Where will we train the model?
What data does the model need and what type of security constraints do we have on the training data?
Where does the model live once it’s trained so the applications can query the model for predictions?
How do we account for new versions of the model over time and ensure we have the right model providing predictions to the application?
How do we account for the above items when we have 20 different machine learning models serving multiple applications?', 2, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (14, N'Hot data meets big data to make real-time, real-world decisions', N'Why machine learning needs real-time data infrastructure.', N' Ciara Byrne', CAST(N'2017-09-06 00:00:00.000' AS DateTime), N'time-1738083_1920_crop-bfa4acb3a7cffdded8020a46ade9227a.jpg', N'“Hot data” is the most recent snapshot of the real world. It’s the real-time data continuously streaming in from IoT device sensors, user clickstreams, and mobile game-play activity. Hot data becomes big data when it comes to rest in a data warehouse, and that data warehouse is traditionally where data science happens.

Machine learning models are typically trained on batches of big data at rest, but many operational use cases require hot data. If you are serving video ads to mobile gamers, supporting sales people walking into a meeting, or operating an oil drill, using the latest data is crucial for success. Machine learning models must be combined with real-time data to make many real-world decisions, and real-time data needs a real-time data infrastructure.

The mobile gaming advertising company Tapjoy has had to confront the challenges of using hot data (full disclosure: Tapjoy is a customer of MemSQL). While users interact with mobile apps or play games, Tapjoy identifies which users are most likely to install a particular app and serves up a video ad for that app.

Get O''Reilly''s weekly data newsletter


Robin Li, the director of data engineering, explains: “Due to the nature of our business, it''s absolutely essential that we service all the decisions in real time as requests come in. Our predictions are not just a bunch of numbers sitting on some sales pitch stack.”

Advertisers pay per video view, so Tapjoy finds the users who are the best match for a target app, based on their interests and activity, and serves them a video ad. One percent or less of users, on average, go straight from video to install. However, BaiVietlly advertisers want to target users who will not just install the app, but also take actions, such as registering or making an in-app purchase. The task of Tapjoy’s data science team is to identify those users and serve them the right video ad in real time.', 2, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (16, N'The current state of applied data science', N'Recent trends in practical use and a discussion of key bottlenecks in supervised machine learning.', N' Ben Lorica', CAST(N'2017-08-24 00:00:00.000' AS DateTime), N'pendulum-1934311_1920_crop-deeb9a1e9a102abf6b297b630de16442.jpg', N'As we enter the latter part of 2017, it’s time to take a look at the common challenges faced by companies interested in using data science and machine learning (ML). Let’s assume your organization is already collecting data at a scale that justifies the use of analytic tools, and that you’ve managed to identify and prioritize use cases where data science can be transformative (including improvements to decision-making or business operations, increasing revenue, etc.). Data gathering and identifying interesting problems are non-trivial, but assuming you’ve gotten a healthy start on these tasks, what challenges remain?

Data science is a large topic, so I’ll offer a disclaimer: this post is mainly about the use of supervised machine learning today, and it draws from a series of conversations over the last few months. I’ll have more to say about AI systems in future posts, but such systems clearly rely on more than just supervised learning.', 2, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (17, N'Big data''s biggest secret: Hyperparameter tuning', N'The toughest part of machine learning with Spark isn''t what you think it is.', N' Frank Kane', CAST(N'2017-08-23 00:00:00.000' AS DateTime), N'istock-512455457-(1)-13878bfce1f6671e58e14870ded87aec.jpg', N'Machine learning may seem magical to the uninitiated. Practitioners who apply machine learning to massive real-world data sets know there is indeed some magic involved—but not the good kind. A set of “magic numbers,” called hyperparameters, is often crucial to obtaining usable results, and a given machine learning algorithm may have several of them. Choosing the best hyperparameters for a given algorithm and a given set of data is one of the most challenging parts of machine learning, and yet it’s often glossed over while learning these techniques. Even courses I’ve produced myself are guilty of this.

Let’s imagine you’re tasked with a simple logistic regression on some big data set, using Apache Spark’s machine learning library MLlib. All you’re trying to do is classify some new data given the trends found in your training data. You’ll soon find that Spark’s LogisticRegression class wants you to initialize it with several parameters: the ElasticNet mixing parameter, the regularization parameter, threshold values, the convergence tolerance, and more. What’s worse, you’ll find that the documentation on what these values mean and what to set them to are non-existent. There is no documentation because there is no right answer—the values that produce the best results will depend on your particular data.', 2, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (18, N'A multi-cloud strategy is the foundation for digital transformation', N'Using a single cloud provider is a thing of the past.', N' Maliha Balala', CAST(N'2017-08-14 00:00:00.000' AS DateTime), N'mammatus_clouds_regina_sk_june_2012_crop-b19ffdf5bf790714ef1339243e8d599b.jpg', N'When news broke that Amazon was acquiring Whole Foods, brick and mortar retailers panicked. Many industries are feeling pressure to undergo digital transformation for fear of being “Amazoned” (acquired by an online competitor). The International Data Corporation (IDC) forecasts worldwide spending on digital transformation technologies will grow to more than $1.2 trillion in 2017 (an increase of 17.8% over 2016. IDC’s Worldwide Semiannual Digital Transformation Spending Guide reports that many industries have been affected by the frenzy, too, with manufacturing leading the pack, followed by retail, health care, insurance, and banking. No one wants to be “disrupted.”

Defining digital transformation

Surprisingly, despite the anxiety around digital transformation and the money being invested, the term is not well defined. George Westerman, principal research scientist with the MIT Sloan Initiative on the Digital Economy, defines digital transformation as “using technology to radically improve the performance and reach of an organization.” Technology, however, is accelerating at such a fast pace that it makes it difficult for businesses to keep up and stay ahead of the curve.

Get O''Reilly''s weekly data newsletter


Digital transformation, in practice

How do businesses unlock the power of rapidly evolving technology to maximize their investment? One answer, according to the 2017 Digital IQ survey, which looked at top performing IT and business leaders across industries is to focus less on one specific technology and more on the human experience. Focusing on the human experience means organizations will have to re-examine their customers’ experiences, employees’ experiences, and their entire organizational culture. In developing a better understanding of the human experience that surrounds digital technology, companies are better equipped to continuously adapt and anticipate marketplace changes.', 2, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (19, N'How to choose a cloud provider', N'Practical questions to help you make a decision.', N' Jesse Anderson', CAST(N'2017-08-11 00:00:00.000' AS DateTime), N'33339221704_81f1dee3e7_k_crop-73941c04154955b22f6ceefd1311a755.jpg', N'If you look up the phrase “boiling the ocean,” it’s defined as writing a post on choosing a cloud provider—there are so many different facets and use cases, and each variable complicates your choice. The key is to narrow the field to your specific situation and needs. In this article, I share some of the early questions and decisions I use when working with a team to choose a cloud provider.

Simple pass/fails

I recently worked with a large financial organization who was considering a move to the cloud. When I started the engagement, we began with quick pass/fail decisions to see if a cloud move was feasible. These pass/fail choices allowed the team to make an initial go-forward decision before they went too deep down the rabbit hole. The following considerations helped mitigate their risk.

Get O''Reilly''s weekly data newsletter


Can we use the cloud?

This might sound like an easy one, but some teams actually forget this step. There may be an outright prohibition on using the cloud at your organization, or the political climate may be so terrible that you decide not to fight that battle.

Will the technologies work for your use case?

Can the cloud technologies do what you need them to do? With small data problems, this isn’t usually an issue: they can handle almost anything. With big data problems, however, capability can be a sticky issue—there are bigger tradeoffs that the technology designers had to make.

I’ve written some in-depth posts covering some of these tradeoffs and comparisons. For example, I compared Amazon Kinesis and Apache Kafka, and Google Cloud Pub/Sub and Apache Kafka. You’ll notice there are subtle differences. In the lens of a use case, these differences can make a requirement of your use case impossible to implement with a technology.', 2, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (20, N'How to get practical results from design thinking', N'For design thinking to fulfill its promise, you can’t stop when you’re finished with the thinking.', N' Richard Banfield', CAST(N'2017-06-23 00:00:00.000' AS DateTime), N'10299874793_bed53dff1a_k_crop-72fea3fb6f3f675f58895c9016858637.jpg', N'There are two questions I’d like to try to answer in this post:

Can design thinking processes be useful to product makers?
What’s missing from current design thinking practices?
Can design thinking be practical?

By definition, design thinking refers to the creative thinking strategies designers utilize during the process of designing. However, design thinking is now used by a broader range of people than just designers, and it has become an approach used to resolve problems more broadly than just in the design environment. Design consultancies, like my firm Fresh Tilled Soil, are hired to apply design thinking to a wide range of business and social issues.

My concern, which is shared by other product leaders, is that design thinking is becoming another buzzword associated with theory and not practice. A lot of smart people like design legends Don Norman and Jared Spool have written about how the value of design thinking has been misappropriated. Others have suggested replacing these thinking processes with doing processes. I highly recommend reading the awesome suggestions by Tim Malbon, Don Norman, and Nikkel Blasse. The theme running through these reactions to general design thinking is the same:

Get O''Reilly''s weekly design newsletter


Where are the people?

To get practical results out of design thinking, it turns out that you need to have people thinking and doing.

The origins of design thinking

In essence, design thinking is an extension of the scientific method. It’s a proven process by which you make observations, create a hypothesis, and then test its validity.', 3, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (21, N'How to apply design thinking in your organization', N'Design thinking helps organizations grow, innovate, and improve financial performance.', N' Jonathan FollettMary Treseler', CAST(N'2017-06-22 00:00:00.000' AS DateTime), N'fractals-18727_crop-d6e357b3bf0dd1ff7c1af2be3dca27b0.jpg', N'Design thinking is a process that uses design principles for solving complex problems. It helps organizations identify opportunities, unlock innovation, and improve their businesses.

Market leaders as varied as Apple, IBM, Intuit, Kaiser Permanente, and Nike have used design thinking to gain a competitive advantage, applying it to create innovative products and services. Within an organization, design thinking is a tool for unlocking cultural change. It makes companies more flexible, more responsive to their customers, and ultimately, more successful.

What are the elements of design thinking?

Although the name and number of its key principles may vary depending on how you apply them, the basic elements of design thinking always include some variation on the following: researching and defining the problem, BaiVietting, and prototyping and iterating.

Get O''Reilly''s weekly design newsletter


Researching and defining the problem: Design thinking draws upon user-centered research techniques, including ethnographic analysis, for understanding customers and users. During the research phase of the design thinking process, the goal is to understand and empathize with the people for whom you’re designing.

BaiVietting: During the BaiViettion phase of the design thinking process, the goal is to generate a large number of interesting BaiViets that represent potential solutions. Techniques for BaiViettion may include sketching, brainstorming, and mind mapping to create high-level concepts.

Prototyping and iterating: Making BaiViets tangible is critical to the design thinking process, as are the iteration cycles required to test and refine those BaiViets. Design has a bias toward making things, and prototyping is the technique that pushes the making process forward. You’ll create prototypes for demonstrating and validating your basic designs that are based on the best concepts from your BaiViettion exercises. To properly evaluate a design concept, you’ll want to prototype it in the same environment and context in which it will eventually function. Prototypes can be low or high fidelity, interactive or static. What matters is that the prototypes must convey the experience flow.', 3, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (22, N'AI and the future of design: What will the designer of 2025 look like?', N'Designers may well provide the missing link between AI and humanity.', N' Rob Girling', CAST(N'2017-01-04 00:00:00.000' AS DateTime), N'orange-fractal_crop-309beaae356a7161d4f898488c9ac5a0.jpg', N'or anyone doubting that AI is here, the New York Times recently reported that Carnegie Mellon University plans to create a research center that focuses on the ethics of artificial intelligence. Harvard Business Review started laying the foundation for what it means for management, and CNBC started analyzing promising AI stocks. I made the relatively optimistic case that design in the short term is safe from AI because good design demands creative and social intelligence.

But this short-term positive outlook did not alleviate all of my concerns. This year, my daughter started college, pursuing a degree in interaction design. As I began to explore how AI would affect design, I started wondering what advice I would give my daughter and a generation of future designers to help them not only be relevant, but thrive in the future AI world.

Get O''Reilly''s weekly design newsletter


Here is what I think they should expect and be prepared for in 2025.', 3, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (23, N'How to build—and grow—a strong design practice', N'5 questions for Aarron Walter: Shaping products, growing teams, and managing through change.', N' Mary Treseler', CAST(N'2017-02-09 00:00:00.000' AS DateTime), N'3949856872_8ca706e44d_o_crop-7b0ac6c91a9246eea29717af6ab4eae4.jpg', N'I recently asked Aarron Walter, VP of design education at InVision and author of Designing for Emotion, to discuss what he has learned through his years of building and managing design teams. At the O’Reilly Design Conference, Aaron will be presenting a session, Hard-learned lessons in leading design.

Your talk at the upcoming O''Reilly Design Conference is titled Hard-learned lessons in leading design. Tell me what attendees should expect.

I had the unique opportunity of watching a company grow from just a handful of people to more than 550 over the course of eight years at MailChimp. When I started we had a few thousand customers, but when I left in February of 2016, there were more than 10 million worldwide. We saw tremendous growth, and I learned so much in my time there. In my talk, I''ll be sharing the most salient lessons I learned along the way—how to shape a product, grow a team, how a company changes and how it changes people''s careers, and a lot more.

Get O''Reilly''s weekly design newsletter


What are some of the challenges that come along with building and leading a design team in a strong growth period?

As a company grows, the people who run it have to grow, too. There''s a steep learning curve. When you''re a small team it''s easy to make decisions and get things done. But when a company grows, clear processes are needed, more people need to be brought into the planning process, and rapport has to be developed between teams and key individuals.

The trick is you never really know what stage the company is in, so there''s always uncertainty about whether you''re doing the right thing. Everyone has to adapt and change with each new stage, and that can be hard for some people.

What are some of the more memorable lessons you learned along the way?

Early on as the director of UX, I thought my most important job was designing a great product. That was true but only until we needed to start building teams. Then my most important job was hiring great people. That remained my top priority for years to come, and I see it as my lasting legacy within the company. There are so many smart, talented people at MailChimp. I''m proud to have played a part in hiring and mentoring a number of people who''ve gone on to lead their own teams.

In the early years of the product, we were focused on the future, toward new features and new BaiViets. But as the product and company matured, we had to master the art of refinement. Feature production is a treadmill: there will always be something else you can build. But if those features are half-baked or unrefined, you can end up with a robust product that is too complicated or too broken to use. Phil Libin said it best, "The best product companies in the world have figured out how to make constant quality improvements part of their essential DNA."

You will be speaking about the importance of building a strong design practice. Can you explain what this looks like?

A strong design practice has these things going for it:

A product vision that makes it clear to everyone how the product fits into the lives of the audience.
A rigorous process for understanding the problem through research, customer interaction, and debate.
A culture of feedback where designers can continue to grow and the work gets pushed to its potential.
Strong relationship with other teams. Design is a continuum, not just a step in the process. You have to work with everyone in the process to produce great products.
You''re speaking at the O''Reilly Design Conference in March. What sessions are you interested in attending?

I''m excited to hear Alan Cooper speak. His book The Inmates are Running the Asylum made a big impression on me. I''m also looking forward to hearing Dan Hill talk about the UX of buildings, cities, and infrastructure. Architecture and city planning are ripe with lessons for the UX practice.

It''s an incredible line up of speakers!', 3, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (25, N'Improving security through data analysis and visualizations', N'Five questions for Charles Givre on building effective security analytics programs.', N' Courtney AllenCharles Givre', CAST(N'2017-08-24 00:00:00.000' AS DateTime), N'social_network_analysis_visualization-da9b382a510e0ea2db818b7dbb92e2ef.png', N'I recently sat down with Charles Givre, data scientist, to discuss the characteristics of successful security analytics programs, principles for effective data visualizations, and how effective data visualizations can reduce response time. Here are some highlights from our talk.

Defenders are increasingly employing data analysis to help protect their organizations with varying levels of success. What characteristics define the organizations that have the most successful security analytics programs?

In my opinion, it isn’t enough for a company to simply have a security analytics program. This isn’t unique to security analytics, but the companies that truly maximize the benefit of any analytics program are the ones that have a culture of data literacy from top to bottom. You can have a killer analytics program, but if the C-Suite or other stakeholders don’t understand the analytics being presented to them, the resulting recommendations are not likely to be implemented or acted upon.

What I’m getting at is if companies want to have successful analytics programs, the entire organization needs to build a culture that embraces data. On a practical level, this means educating your engineers about data science and analytics and encouraging them to conduct their own experiments. It also means making sure they have access to, and knowledge of, the latest data science tools and techniques. They, like all learners, need to have the permission to experiment and fail. Analytics and data science are more akin to research than software development and it’s inevitable that some experiments will fail.', 4, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (27, N'Recognizing and evaluating scientific claims in security', N'Five questions for Josiah Dykstra on techniques to expose and invalidate misleading claims.', N' Courtney AllenJosiah Dykstra', CAST(N'2017-09-20 00:00:00.000' AS DateTime), N'fish-174293_1920-de73b4d4766e69ff194b6add56709fd4.jpg', N'I recently sat down with Josiah Dykstra, Senior Security Researcher at the Department of Defense, to discuss the topics of both accidental and intended misleading communications in security, common pitfalls made in evaluating scientific claims, and the questions you should ask when evaluating scientific claims and third-party vendor solutions.

What are some basic tips for recognizing and understanding scientific claims in security marketing, journalism, or other security-related materials?

People and companies use a variety and spectrum of truly scientific, possibly-scientific, and unscientific statements to talk about products and services. Some are trying to persuade you to buy something, others are simply trying to communicate information. Though scientists themselves can produce misleading and manipulative results, I am generally more concerned about the potential damage caused from seemingly scientific-sounding claims by other sources.

In this context, “scientific claims” are those that could be, or appear to be, based on the scientific method. This happens in part because of deliberate word choice and linguistic ambiguity, particularly with short statements used to grab your attention. Here are a few examples of claims that imply supporting data or science-based discovery:

“Our product significantly outperforms our peers”
“Product X stops known and unknown malware with greater than 99.5% efficacy”
“Seven out of ten websites we scanned on the Internet are vulnerable to XYZ attack”
Security professionals should employ healthy scientific skepticism and seek further clarification when confronted with comparisons, performance, evaluation, and when results seem too good to be true.

What are some common pitfalls that defenders should be aware as they consider the veracity of claims made by vendors, media, or others?

We often forget that we’re all fallible human beings. Human factors, including cognitive bias, play a big part in how we process and evaluate claims. Try to be aware of situations when a sales pitch is appealing to emotion and not your rational evaluation. Learn about different types of cognitive bias, especially confirmation bias and fundamental attribution error.

Surveys, which are common in infosec, are a fertile ground for abuse. Among the red flags you should watch for are surveys that fail to disclose the survey methodology, sample size, and margin of error. These details may be hidden in small print and difficult to locate.

What should defenders keep in mind when reviewing graphics and visualizations specifically?

Graphics and visualizations can certainly help us to understand information more quickly and efficiently. Research shows, however, that people are sometimes persuaded by even trivial graphs because those visualizations “seem” scientific. Defenders should be aware of this cognitive tendency, and take time to understand and assess how a graphic is being used and what it actually shows.

Be aware that the human brain is better and worse at understanding different types of graphs. For example, pie charts can be particularly challenging for the brain to interpret (consider bar charts instead). Even the choice of colors in a visualization can carry cultural symbolism. For example, red is conveys good luck in China but caution in the United States.

What questions should defenders ask as they assess claims or results provided by vendors or peers?

Here are three questions I frequently use when evaluating a new claim:

Who conducted and/or paid for the work? Compared with evaluations or results that came from the vendor, independent analysis and results are less prone to seeking evidence that simply confirms a desired result.
What was the size and composition of the data sample? I have low trust and confidence in results and claims based on representatively small sample sizes (e.g. anti-malware tests using 20 samples when there are millions of malware files in existence) or selectively-chosen data points – both of which my over (or under) inflate the true claim.
What do the adverbs and adjectives mean? Statements that use subjective, imprecise words such as “significantly” or “substantially” might carry a different meaning or judgement than my own.', 4, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (28, N'Recognizing and evaluating scientific claims in security', N'Five questions for Josiah Dykstra on techniques to expose and invalidate misleading claims.', N' Courtney AllenJosiah Dykstra', CAST(N'2017-09-20 00:00:00.000' AS DateTime), N'fish-174293_1920-de73b4d4766e69ff194b6add56709fd4.jpg', N'I recently sat down with Josiah Dykstra, Senior Security Researcher at the Department of Defense, to discuss the topics of both accidental and intended misleading communications in security, common pitfalls made in evaluating scientific claims, and the questions you should ask when evaluating scientific claims and third-party vendor solutions.

What are some basic tips for recognizing and understanding scientific claims in security marketing, journalism, or other security-related materials?

People and companies use a variety and spectrum of truly scientific, possibly-scientific, and unscientific statements to talk about products and services. Some are trying to persuade you to buy something, others are simply trying to communicate information. Though scientists themselves can produce misleading and manipulative results, I am generally more concerned about the potential damage caused from seemingly scientific-sounding claims by other sources.

In this context, “scientific claims” are those that could be, or appear to be, based on the scientific method. This happens in part because of deliberate word choice and linguistic ambiguity, particularly with short statements used to grab your attention. Here are a few examples of claims that imply supporting data or science-based discovery:

“Our product significantly outperforms our peers”
“Product X stops known and unknown malware with greater than 99.5% efficacy”
“Seven out of ten websites we scanned on the Internet are vulnerable to XYZ attack”
Security professionals should employ healthy scientific skepticism and seek further clarification when confronted with comparisons, performance, evaluation, and when results seem too good to be true.

What are some common pitfalls that defenders should be aware as they consider the veracity of claims made by vendors, media, or others?

We often forget that we’re all fallible human beings. Human factors, including cognitive bias, play a big part in how we process and evaluate claims. Try to be aware of situations when a sales pitch is appealing to emotion and not your rational evaluation. Learn about different types of cognitive bias, especially confirmation bias and fundamental attribution error.

Surveys, which are common in infosec, are a fertile ground for abuse. Among the red flags you should watch for are surveys that fail to disclose the survey methodology, sample size, and margin of error. These details may be hidden in small print and difficult to locate.

What should defenders keep in mind when reviewing graphics and visualizations specifically?

Graphics and visualizations can certainly help us to understand information more quickly and efficiently. Research shows, however, that people are sometimes persuaded by even trivial graphs because those visualizations “seem” scientific. Defenders should be aware of this cognitive tendency, and take time to understand and assess how a graphic is being used and what it actually shows.

Be aware that the human brain is better and worse at understanding different types of graphs. For example, pie charts can be particularly challenging for the brain to interpret (consider bar charts instead). Even the choice of colors in a visualization can carry cultural symbolism. For example, red is conveys good luck in China but caution in the United States.

What questions should defenders ask as they assess claims or results provided by vendors or peers?

Here are three questions I frequently use when evaluating a new claim:

Who conducted and/or paid for the work? Compared with evaluations or results that came from the vendor, independent analysis and results are less prone to seeking evidence that simply confirms a desired result.
What was the size and composition of the data sample? I have low trust and confidence in results and claims based on representatively small sample sizes (e.g. anti-malware tests using 20 samples when there are millions of malware files in existence) or selectively-chosen data points – both of which my over (or under) inflate the true claim.
What do the adverbs and adjectives mean? Statements that use subjective, imprecise words such as “significantly” or “substantially” might carry a different meaning or judgement than my own.', 4, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (29, N'Recognizing and evaluating scientific claims in security', N'Five questions for Josiah Dykstra on techniques to expose and invalidate misleading claims.', N' Courtney AllenJosiah Dykstra', CAST(N'2017-09-20 00:00:00.000' AS DateTime), N'fish-174293_1920-de73b4d4766e69ff194b6add56709fd4.jpg', N'I recently sat down with Josiah Dykstra, Senior Security Researcher at the Department of Defense, to discuss the topics of both accidental and intended misleading communications in security, common pitfalls made in evaluating scientific claims, and the questions you should ask when evaluating scientific claims and third-party vendor solutions.

What are some basic tips for recognizing and understanding scientific claims in security marketing, journalism, or other security-related materials?

People and companies use a variety and spectrum of truly scientific, possibly-scientific, and unscientific statements to talk about products and services. Some are trying to persuade you to buy something, others are simply trying to communicate information. Though scientists themselves can produce misleading and manipulative results, I am generally more concerned about the potential damage caused from seemingly scientific-sounding claims by other sources.

In this context, “scientific claims” are those that could be, or appear to be, based on the scientific method. This happens in part because of deliberate word choice and linguistic ambiguity, particularly with short statements used to grab your attention. Here are a few examples of claims that imply supporting data or science-based discovery:

“Our product significantly outperforms our peers”
“Product X stops known and unknown malware with greater than 99.5% efficacy”
“Seven out of ten websites we scanned on the Internet are vulnerable to XYZ attack”
Security professionals should employ healthy scientific skepticism and seek further clarification when confronted with comparisons, performance, evaluation, and when results seem too good to be true.

What are some common pitfalls that defenders should be aware as they consider the veracity of claims made by vendors, media, or others?

We often forget that we’re all fallible human beings. Human factors, including cognitive bias, play a big part in how we process and evaluate claims. Try to be aware of situations when a sales pitch is appealing to emotion and not your rational evaluation. Learn about different types of cognitive bias, especially confirmation bias and fundamental attribution error.

Surveys, which are common in infosec, are a fertile ground for abuse. Among the red flags you should watch for are surveys that fail to disclose the survey methodology, sample size, and margin of error. These details may be hidden in small print and difficult to locate.

What should defenders keep in mind when reviewing graphics and visualizations specifically?

Graphics and visualizations can certainly help us to understand information more quickly and efficiently. Research shows, however, that people are sometimes persuaded by even trivial graphs because those visualizations “seem” scientific. Defenders should be aware of this cognitive tendency, and take time to understand and assess how a graphic is being used and what it actually shows.

Be aware that the human brain is better and worse at understanding different types of graphs. For example, pie charts can be particularly challenging for the brain to interpret (consider bar charts instead). Even the choice of colors in a visualization can carry cultural symbolism. For example, red is conveys good luck in China but caution in the United States.

What questions should defenders ask as they assess claims or results provided by vendors or peers?

Here are three questions I frequently use when evaluating a new claim:

Who conducted and/or paid for the work? Compared with evaluations or results that came from the vendor, independent analysis and results are less prone to seeking evidence that simply confirms a desired result.
What was the size and composition of the data sample? I have low trust and confidence in results and claims based on representatively small sample sizes (e.g. anti-malware tests using 20 samples when there are millions of malware files in existence) or selectively-chosen data points – both of which my over (or under) inflate the true claim.
What do the adverbs and adjectives mean? Statements that use subjective, imprecise words such as “significantly” or “substantially” might carry a different meaning or judgement than my own.', 4, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (30, N'Recognizing and evaluating scientific claims in security', N'Five questions for Josiah Dykstra on techniques to expose and invalidate misleading claims.', N' Courtney Allen and Josiah Dykstra', CAST(N'2017-09-20 00:00:00.000' AS DateTime), N'fish-174293_1920-de73b4d4766e69ff194b6add56709fd4.jpg', N'I recently sat down with Josiah Dykstra, Senior Security Researcher at the Department of Defense, to discuss the topics of both accidental and intended misleading communications in security, common pitfalls made in evaluating scientific claims, and the questions you should ask when evaluating scientific claims and third-party vendor solutions.

What are some basic tips for recognizing and understanding scientific claims in security marketing, journalism, or other security-related materials?

People and companies use a variety and spectrum of truly scientific, possibly-scientific, and unscientific statements to talk about products and services. Some are trying to persuade you to buy something, others are simply trying to communicate information. Though scientists themselves can produce misleading and manipulative results, I am generally more concerned about the potential damage caused from seemingly scientific-sounding claims by other sources.

In this context, “scientific claims” are those that could be, or appear to be, based on the scientific method. This happens in part because of deliberate word choice and linguistic ambiguity, particularly with short statements used to grab your attention. Here are a few examples of claims that imply supporting data or science-based discovery:

“Our product significantly outperforms our peers”
“Product X stops known and unknown malware with greater than 99.5% efficacy”
“Seven out of ten websites we scanned on the Internet are vulnerable to XYZ attack”
Security professionals should employ healthy scientific skepticism and seek further clarification when confronted with comparisons, performance, evaluation, and when results seem too good to be true.', 4, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (31, N'Animating movement with translate3d', N'Reliably smooth animations with help from your GPU.', N'Kirupa Chinnathambi', CAST(N'2017-06-16 00:00:00.000' AS DateTime), N'tunnel-of-light-2080709_1920-102c9c700150411fdd1df05d5864e76c.jpg', N'When animating elements to make them move around the screen, you want the animation to look smooth. You want it to run at 60 frames per second and run without showing any jittering or tearing. All of that seems straightforward, but it becomes less so when you think about all the various devices your content will be viewed on:



Some devices like laptops and desktops are powerful and have no problems with whatever animation we throw at it, whereas some devices like mobile phones are less powerful and require additional care. What we want to do is ensure that all devices can view our animation with all the performance bells and whistles users expect (and maybe even demand!). In this post, I’ll show you an awesome trick for doing just that.

Onwards!', 6, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (32, N'Putting web accessibility front and center', N'Learn to make your sites and apps accessible to all users with this Learning Path at Fluent 2017.', N' Tammy Everts', CAST(N'2017-03-27 00:00:00.000' AS DateTime), N'verden-of-all-1226125_1920-e46197dddd1aefd6c026f89411bd1022.jpg', N'“Building a better web” is the theme of this year''s O''Reilly Fluent Conference, and hopefully it’s the goal of everyone who attends. But how do you define “a better web”? Some of the building blocks are no-brainers to most of us: the web should be fast, available, and secure. But if we build websites that are literally unusable for a huge number of people, then speed, availability, and security don’t mean much.

Here are some stats about disabilities that affect how people interact with the web:

15-20% of people in the US have significant reading disabilities, such as dyslexia.
7% of working adults in the US have severe dexterity issues.
3-4% of people can’t see well enough to read online.
Get O''Reilly''s weekly Web newsletter


These numbers aren’t trivial, yet 70% (or more) of sites fail to meet the web content accessibility guidelines set by the W3C.', 6, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (34, N'Growth hacking in SEO', N'A look at the successes and failures of a company using experimental SEO practices.', N' Anne Ahola Ward', CAST(N'2017-07-19 00:00:00.000' AS DateTime), NULL, N'Classic Growth Hackin''

This project was one of those during which we kept high-fiving constantly because the money was rolling in steadily. When the chemistry is right for both agency and client, magical things can happen', 6, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (35, N'5 things to learn before learning React', N'Level up your skills set before diving into React.', N' Nicole Chung', CAST(N'2017-05-24 00:00:00.000' AS DateTime), N'fire-2188159_1920-760712cb99b8a766da557ea1bd130b0e.jpg', N'If you haven’t built a single-page application before, React really forces you to level-up your skill set. React as a library has a lot to offer - you can build shareable components that have a clear flow of data (which makes debugging much, much easier). Many times, React just lets you write JavaScript to get your work done.

For the last year or so, I''ve been writing apps with React and Redux, and working at a coding bootcamp part-time, where I help people learn React and Redux. After watching people struggle with out-of-date tutorials and blog posts, and the JavaScript ecosystem in general, I compiled a list of things you might want to know BEFORE you start learning React. The list below may sound exhaustive, but once you feel fluent in these concepts and skills, it will make building your first app in React easier and more fun.', 6, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (36, N'Serverless on Google with Cloud Functions and React', N'Combining serverless architecture with a React frontend means you can spin up applications with minimal administrative overhead.', N' Andrew Odewahn', CAST(N'2017-06-27 00:00:00.000' AS DateTime), NULL, N'Cloud Functions is Google''s entry into the serverless computing craze. The promise of serverless architecture is that it dramatically reduces the cost and complexity of developing, scaling, and operating a range of applications. While there are still a host of issues to resolve, the potential benefits are enormous, especially for microservices, IoT, and mobile.

This article and companion github repo show how to use Cloud Functions as the backend for a React app that can be deployed as a static website. While frameworks like Serverless provide more features, such as built-in deployment and a variety of useful plugins, the approach presented here is a simple and quick way to get a basic frontend and backend up and running quickly.

The following sections will walk you through the setup of a simple example that uses Cloud Functions to query an API (the list of articles on oreilly.com), and an accompanying React frontend that will let you page through the data. Figure 1 shows typical output from our simple application.

Get O''Reilly''s weekly Web newsletter


', 6, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [TomTat], [TacGia], [NgayDang], [HinhAnh], [NoiDung], [MaChuyenMuc], [AnBai]) VALUES (37, N'Thriving in a post-browser world', N'How can web professionals succeed in a world where the browser is declining in relevance?', N'Jonathan Stark', CAST(N'2017-07-17 00:00:00.000' AS DateTime), NULL, N'For decades, every networked computing device has had a graphical web browser installed by default. With the rise of mobile computing, wearable tech, and the Internet of Things, this is no longer a safe assumption. Jonathan Stark explores what web professionals can do to thrive in a world where the browser is declining in relevance.

This excerpt from Jonathan''s full talk explores what web developers can do to today: specialize, specialize, specialize. The day of the generalist is done, and it’s time to develop horizontal specialization. Jonathan suggests JavaScript, CMS, and Rest.

Topics from the entire session include:

6 skills that won’t go out of style for at least a decade.
How to succeed in an industry that changes almost daily.
Why the browser is declining in relevance (and why it’s no big deal).
What the digital landscape will look like in the next few years.
Where the web is going.', 6, 1)
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
SET IDENTITY_INSERT [dbo].[ChuyenMuc] ON 

INSERT [dbo].[ChuyenMuc] ([MaChuyenMuc], [TenChuyenMuc], [DaPhanCong]) VALUES (1, N'Ai', 1)
INSERT [dbo].[ChuyenMuc] ([MaChuyenMuc], [TenChuyenMuc], [DaPhanCong]) VALUES (2, N'Data', 0)
INSERT [dbo].[ChuyenMuc] ([MaChuyenMuc], [TenChuyenMuc], [DaPhanCong]) VALUES (3, N'Design', 0)
INSERT [dbo].[ChuyenMuc] ([MaChuyenMuc], [TenChuyenMuc], [DaPhanCong]) VALUES (4, N'Security', 0)
INSERT [dbo].[ChuyenMuc] ([MaChuyenMuc], [TenChuyenMuc], [DaPhanCong]) VALUES (5, N'Software architecture', 0)
INSERT [dbo].[ChuyenMuc] ([MaChuyenMuc], [TenChuyenMuc], [DaPhanCong]) VALUES (6, N'Web programming', 0)
INSERT [dbo].[ChuyenMuc] ([MaChuyenMuc], [TenChuyenMuc], [DaPhanCong]) VALUES (7, N'Business', 0)
INSERT [dbo].[ChuyenMuc] ([MaChuyenMuc], [TenChuyenMuc], [DaPhanCong]) VALUES (8, N'Economy', 1)
INSERT [dbo].[ChuyenMuc] ([MaChuyenMuc], [TenChuyenMuc], [DaPhanCong]) VALUES (9, N'Operations', 0)
INSERT [dbo].[ChuyenMuc] ([MaChuyenMuc], [TenChuyenMuc], [DaPhanCong]) VALUES (10, N'Software Engineering', 0)
SET IDENTITY_INSERT [dbo].[ChuyenMuc] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (1, N'Nguyễn Trọng Dương', N'Hà Nội', N'0913245423')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (2, N'Trần Đức Mạnh', N'Hà Nội', N'01697345622')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (3, N'Nguyến Thùy Linh', N'Hải Phòng', N'091123456')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (4, N'Nguyễn Đức Thành', N'Hòa Bình', N'0973245555')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (5, N'Ngô Minh Thắng', N'Thanh Hóa', N'0913885423')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (6, N'Bùi Thu Hằng', N'Nghệ An', N'0917775423')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai]) VALUES (7, N'Hoàng Minh Hùng', N'Hà Nội', NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[PhanCong] ON 

INSERT [dbo].[PhanCong] ([MaSo], [MaChuyenMuc], [MaNV], [NgayGiao], [NgayNop]) VALUES (1, 6, 1, CAST(N'2017-10-10 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[PhanCong] ([MaSo], [MaChuyenMuc], [MaNV], [NgayGiao], [NgayNop]) VALUES (2, 1, 3, CAST(N'2017-10-10 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[PhanCong] ([MaSo], [MaChuyenMuc], [MaNV], [NgayGiao], [NgayNop]) VALUES (3, 8, 5, CAST(N'2017-10-10 00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[PhanCong] OFF
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD FOREIGN KEY([MaChuyenMuc])
REFERENCES [dbo].[ChuyenMuc] ([MaChuyenMuc])
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD FOREIGN KEY([MaChuyenMuc])
REFERENCES [dbo].[ChuyenMuc] ([MaChuyenMuc])
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
USE [master]
GO
ALTER DATABASE [OreillyDb] SET  READ_WRITE 
GO
