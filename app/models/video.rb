class Video < ApplicationRecord

	validates :url, presence:true #何も入力されてなければエラー表示(presence)
	validates :description, presence: true,
													length: { in: 6..140}#文字数6字から140字の間ならOK

	default_scope -> { order(created_at: :desc) } #記事の順番を作成日順に並べる/descはdescendingの略で降順の意味

	def iframe_url
		org = read_attribute(:url) 
		org.gsub("watch?v=", "embed/" ) if org.present? #watchをembedに変換(URLをiframe用に変換)
	end

	def thumbnail_youtube
		"http://i.ytimg.com/vi/#{youtubeId}/mqdefault.jpg"#サムネイル表示用のurl
	end

	def youtubeId
		# https://www.youtube.com/watch?v=n-zTeG1YsGM #urlの例
		md = url.match(/watch\?v\=(.*)/) #urlからIdのみを取り出す
		md[1] if md.present?
	end
end
