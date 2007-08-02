<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib uri="http://pebble.sourceforge.net/pebble" prefix="pebble" %>

<%--
  Displays the recent entries from the community.
--%>
<%@ attribute name="name"%>

<c:if test="${not empty blog.recentNewsFeedEntries}">
<div class="sidebarItem">
  <div class="sidebarItemTitle"><span>${name}</span></div>
  <div class="sidebarItemBody">
    <c:forEach var="entry" items="${blog.recentNewsFeedEntries}" >
      <a href="${entry.link}">${entry.title}</a> - <a href="${entry.feed.link}">${entry.feed.title}</a> <a href="${entry.feed.url}"><img src="common/images/feed-icon-10x10.png" alt="RSS feed" border="0" /></a>
      <br />${entry.truncatedBody}
      <br /><br />
    </c:forEach>
  </div>
</div>
</c:if>