<div class="sidebarItem">
  <div class="sidebarItemTitle"><span>Archives</span></div>
  <div class="sidebarItemBody">
    <table width="99%" cellpadding="0" cellspacing="0">
      <c:forEach var="year" items="${archives}" varStatus="status">
        <c:if test="${status.count % 2 == 1}">
        <tr>
        </c:if>
        <td valign="top">
          <b><fmt:formatDate value="${year.date}" pattern="yyyy"/></b><br />
          <c:forEach var="month" items="${year.archives}">
          <a href="${month.permalink}"><fmt:formatDate value="${month.date}" pattern="MMMM"/></a> (<fmt:formatNumber value="${month.numberOfBlogEntries}" type="number" />)
          <br />
          </c:forEach>
          <br />
        </td>
        <c:if test="${status.count % 2 == 0}">
        </tr>
        </c:if>
      </c:forEach>
    </table>
  </div>
</div>