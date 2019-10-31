Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFDBEAE71
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 31 Oct 2019 12:08:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AD066196F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 31 Oct 2019 11:08:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7C97A6197A; Thu, 31 Oct 2019 11:08:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,BIGNUM_EMAILS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,UNPARSEABLE_RELAY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C803861970;
	Thu, 31 Oct 2019 11:07:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 05F8D60E80
 for <linaro-mm-sig@lists.linaro.org>; Thu, 31 Oct 2019 11:07:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EED5861973; Thu, 31 Oct 2019 11:07:48 +0000 (UTC)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by lists.linaro.org (Postfix) with ESMTPS id E380660E80
 for <linaro-mm-sig@lists.linaro.org>; Thu, 31 Oct 2019 11:07:47 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9VB3cfj005331;
 Thu, 31 Oct 2019 11:07:44 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2vxwhfte6j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 31 Oct 2019 11:07:44 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9VB2Xkh072748;
 Thu, 31 Oct 2019 11:07:43 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2vyqpdw6bp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 31 Oct 2019 11:07:43 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9VB7gn7012134;
 Thu, 31 Oct 2019 11:07:42 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 31 Oct 2019 04:07:42 -0700
Date: Thu, 31 Oct 2019 14:07:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: john.stultz@linaro.org
Message-ID: <20191031110736.GD26612@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9426
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=788
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910310113
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9426
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=870 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910310113
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
Subject: [Linaro-mm-sig] [bug report] dma-buf: heaps: Add heap helpers
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGVsbG8gSm9obiBTdHVsdHosCgpUaGUgcGF0Y2ggN2I4N2VhNzA0ZmQ5OiAiZG1hLWJ1ZjogaGVh
cHM6IEFkZCBoZWFwIGhlbHBlcnMiIGZyb20gT2N0CjIxLCAyMDE5LCBsZWFkcyB0byB0aGUgZm9s
bG93aW5nIHN0YXRpYyBjaGVja2VyIHdhcm5pbmc6CgoJZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hl
YXAtaGVscGVycy5jOjE2NSBkbWFfaGVhcF92bV9mYXVsdCgpCgl3YXJuOiB1bmNhcHBlZCB1c2Vy
IGluZGV4ICdidWZmZXItPnBhZ2VzW3ZtZi0+cGdvZmZdJwoKZHJpdmVycy9kbWEtYnVmL2hlYXBz
L2hlYXAtaGVscGVycy5jCiAgIDE2MCAgc3RhdGljIHZtX2ZhdWx0X3QgZG1hX2hlYXBfdm1fZmF1
bHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpCiAgIDE2MSAgewogICAxNjIgICAgICAgICAgc3RydWN0
IHZtX2FyZWFfc3RydWN0ICp2bWEgPSB2bWYtPnZtYTsKICAgMTYzICAgICAgICAgIHN0cnVjdCBo
ZWFwX2hlbHBlcl9idWZmZXIgKmJ1ZmZlciA9IHZtYS0+dm1fcHJpdmF0ZV9kYXRhOwogICAxNjQg
IAogICAxNjUgICAgICAgICAgdm1mLT5wYWdlID0gYnVmZmVyLT5wYWdlc1t2bWYtPnBnb2ZmXTsK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXl5eXl5eXl5eXgpTbWF0
Y2ggZm9yIHNvbWUgcmVhc29uIHRoaW5rcyB0aGlzIG5lZWRzIHRvIGJlIGNoZWNrZWQuICBTbWF0
Y2ggYWxzbwpnZXRzIGNvbmZ1c2VkIGJ5IHRoZXNlIGZhdWx0IGhhbmRsZXJzIGFuZCB0aGlua3Mg
dGhlcmUgaXMgc29tZSByZWN1cnNpb24KaW52b2x2ZWQuLi4KCiAgIDE2NiAgICAgICAgICBnZXRf
cGFnZSh2bWYtPnBhZ2UpOwogICAxNjcgIAogICAxNjggICAgICAgICAgcmV0dXJuIDA7CiAgIDE2
OSAgfQogICAxNzAgIAogICAxNzEgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgdm1fb3BlcmF0aW9uc19z
dHJ1Y3QgZG1hX2hlYXBfdm1fb3BzID0gewogICAxNzIgICAgICAgICAgLmZhdWx0ID0gZG1hX2hl
YXBfdm1fZmF1bHQsCiAgIDE3MyAgfTsKICAgMTc0ICAKCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
