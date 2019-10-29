Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 248D9E8F55
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Oct 2019 19:32:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 427946196E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Oct 2019 18:32:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 35F746196F; Tue, 29 Oct 2019 18:32:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY,UNPARSEABLE_RELAY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF0666196C;
	Tue, 29 Oct 2019 18:32:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 61CCC61967
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 18:32:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4DD936196C; Tue, 29 Oct 2019 18:32:02 +0000 (UTC)
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by lists.linaro.org (Postfix) with ESMTPS id 5056E6196B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 18:32:01 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9TIOwfb171648;
 Tue, 29 Oct 2019 18:31:55 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2vve3qb4ae-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2019 18:31:54 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9TISme2036943;
 Tue, 29 Oct 2019 18:29:54 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2vxpfdh4tj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Oct 2019 18:29:54 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9TITq3g015039;
 Tue, 29 Oct 2019 18:29:52 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 29 Oct 2019 11:29:51 -0700
Date: Tue, 29 Oct 2019 21:29:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 John Stultz <john.stultz@linaro.org>
Message-ID: <20191029182943.GD17569@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910290161
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9425
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910290161
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Liam Mark <lmark@codeaurora.org>, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, Brian Starkey <Brian.Starkey@arm.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Fix a warning message in
	dma_heap_buffer_destroy()
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

VGhlIGZpcnN0IGFyZ3VtZW50IG9mIFdBUk4oKSBpcyBhIGNvbmRpdGlvbiBzbyB0aGlzIHdpbGwg
anVzdCBwcmludCB0aGUKZnVuY3Rpb24gbmFtZSBpbnN0ZWFkIG9mIHRoZSB3aG9sZSB3YXJuaW5n
IG1lc3NhZ2UuCgpGaXhlczogN2I4N2VhNzA0ZmQ5ICgiZG1hLWJ1ZjogaGVhcHM6IEFkZCBoZWFw
IGhlbHBlcnMiKQpTaWduZWQtb2ZmLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9y
YWNsZS5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jIGIvZHJpdmVycy9kbWEt
YnVmL2hlYXBzL2hlYXAtaGVscGVycy5jCmluZGV4IDc1MGJlZjRlOTAyZC4uYTMxNjg0YzBkNWIy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jCkBAIC01Miw3ICs1Miw3IEBAIHN0
YXRpYyB2b2lkICpkbWFfaGVhcF9tYXBfa2VybmVsKHN0cnVjdCBoZWFwX2hlbHBlcl9idWZmZXIg
KmJ1ZmZlcikKIHN0YXRpYyB2b2lkIGRtYV9oZWFwX2J1ZmZlcl9kZXN0cm95KHN0cnVjdCBoZWFw
X2hlbHBlcl9idWZmZXIgKmJ1ZmZlcikKIHsKIAlpZiAoYnVmZmVyLT52bWFwX2NudCA+IDApIHsK
LQkJV0FSTigiJXM6IGJ1ZmZlciBzdGlsbCBtYXBwZWQgaW4gdGhlIGtlcm5lbFxuIiwgX19mdW5j
X18pOworCQlXQVJOKDEsICIlczogYnVmZmVyIHN0aWxsIG1hcHBlZCBpbiB0aGUga2VybmVsXG4i
LCBfX2Z1bmNfXyk7CiAJCXZ1bm1hcChidWZmZXItPnZhZGRyKTsKIAl9CiAKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
