#! /bin/bash
ARTICLES_LISTINGS=$(find ./articles/ -name "*.md" 2> /dev/null | sort)
rm articles/*.html
cat "meta/main.html" > toc.html
markdown toc/1-toc-header.md >> toc.html

cat "meta/main.html" > index.html
markdown index.md >> index.html
echo "    </body>
</html>" >> index.html

for ARTICLE in $ARTICLES_LISTINGS; do
	CLEANED_ARTICLE_PATH=$(echo $ARTICLE | sed 's|./||')
	CLEANED_ARTICLE=$(echo $ARTICLE | tr -d "123456789" | sed 's|./toc/||' | sed 's|./articles/||' | sed 's|.md||' | tr "_" " " | tr "-" " ")
	ARTICLE_CATEGORY=$(cut -d '/' -f 1 <<< "$CLEANED_ARTICLE")
	ARTICLE_CATEGORY_NOSPACES=$(echo $ARTICLE_CATEGORY | tr -d " ")
	ARTICLE_TITLE=$(cut -d '/' -f 2- <<< "$CLEANED_ARTICLE")
	cat "meta/articles.html" >> articles/$ARTICLE_CATEGORY_NOSPACES.html
	ls articles/$ARTICLE_CATEGORY_NOSPACES.html
	if ! grep "###$ARTICLE_CATEGORY" toc.html ; then
		echo "###$ARTICLE_CATEGORY" | markdown >> toc.html
	fi
	DIV_ID=$(echo "$ARTICLE_TITLE" | tr -d " ")
	echo "  * [$ARTICLE_TITLE](/articles/$ARTICLE_CATEGORY_NOSPACES.html#$DIV_ID) " | markdown >> toc.html
	echo "<div id="$DIV_ID">" >> articles/$ARTICLE_CATEGORY_NOSPACES.html
	markdown $ARTICLE >> articles/$ARTICLE_CATEGORY_NOSPACES.html
	echo "</div>" >> articles/$ARTICLE_CATEGORY_NOSPACES.html
done

markdown toc/2-toc-footer.md >> toc.html
