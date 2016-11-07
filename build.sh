#! /bin/bash
ARTICLES_LISTINGS=$(find ./articles/ -name "*.md" 2> /dev/null | sort)

cat "meta/main.html" > toc.html
markdown toc/1-toc-header.md >> toc.html

cat "meta/articles.html" > posts.html

cat "meta/main.html" > index.html
markdown index.md >> index.html
echo "    </body>
</html>" >> index.html

for ARTICLE in $ARTICLES_LISTINGS; do
	CLEANED_ARTICLE_PATH=$(echo $ARTICLE | sed 's|./||')
	CLEANED_ARTICLE=$(echo $ARTICLE | tr -d "123456789" | sed 's|./toc/||' | sed 's|./articles/||' | sed 's|.md||' | tr "_" " " | tr "-" " ")
	ARTICLE_CATEGORY=$( cut -d '/' -f 1 <<< "$CLEANED_ARTICLE" )
	ARTICLE_TITLE=$( cut -d '/' -f 2- <<< "$CLEANED_ARTICLE" )
	if ! grep "$ARTICLE_CATEGORY" toc.html ; then
		echo "$ARTICLE_CATEGORY" >> toc.html
	fi
	DIV_ID=$(echo "$ARTICLE_TITLE" | tr -d " ")
	echo "  * [$ARTICLE_TITLE](posts.html#$DIV_ID) " | markdown >> toc.html
	echo "<div id="$DIV_ID">" >> posts.html
	markdown $ARTICLE >> posts.html
	echo "</div>" >> posts.html
done

markdown toc/2-toc-footer.md >> toc.html
