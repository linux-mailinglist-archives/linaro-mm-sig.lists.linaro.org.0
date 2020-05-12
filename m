Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0371CF1DE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:45:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9580860723
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:45:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 886BA61892; Tue, 12 May 2020 09:45:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBDD566543;
	Tue, 12 May 2020 09:08:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CF20D65FA9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:07:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BFBF866533; Tue, 12 May 2020 09:07:42 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id C7EFF65FA9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:27 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090126euoutp01fafc4baf1bd2bfc78391e1f17f69d3ae~OPFyPRhaI2643526435euoutp01I
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090126euoutp01fafc4baf1bd2bfc78391e1f17f69d3ae~OPFyPRhaI2643526435euoutp01I
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090126eucas1p1ad3aa81a22272b2f8362c0e54cc28da1~OPFx219V53053030530eucas1p1w;
 Tue, 12 May 2020 09:01:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 19.7B.60698.6E56ABE5; Tue, 12
 May 2020 10:01:26 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090125eucas1p1f9eae024a33e92bf1468f2af4e5a1b0a~OPFxWZlID0608306083eucas1p1W;
 Tue, 12 May 2020 09:01:25 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090125eusmtrp20f8cd9809ad7b4259581f2a15175de0b~OPFxVhpQw0472704727eusmtrp2V;
 Tue, 12 May 2020 09:01:25 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-55-5eba65e6c2fb
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 0D.45.08375.5E56ABE5; Tue, 12
 May 2020 10:01:25 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090124eusmtip175a978494a4435069084cff88dec0811~OPFwkp7sM1352513525eusmtip1O;
 Tue, 12 May 2020 09:01:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:51 +0200
Message-Id: <20200512090058.14910-31-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa1CMURzG5+x7bbW8VnQml1iTwUgqckxEbnM+JcYHw4jFO9XUVna7yLis
 YodVEo0uurmmC11kaVWrSNdJRKSyJeSWUjIVym6vy7ff//k/z3nOnDksIe2jbFjfgGBeGSD3
 l9FiUvdw6JH9O17vtag/gkPR9dUi1PPLSKP8hFwKHfkyG43qYglUXDfMoKcDPTSKvJRLo8zs
 ChFKN7iiq2o7lFk8KELfnnaIUEFnE4Ua9ck0uv6gjUG6HDWFynrfUKimrZ9B6U3DzCorrLur
 o3BOag7Av1K+EvhV6X0Sl3xPJ/GFvgEKtzYV0/j293YKG1JyGGw8WSnCNy8fxi0jnQQ++yID
 4LvNahr3lD6j8anCLOA5cat4+R7e3zeUVzq47RT73GmtZYI6JPteFi9Tg+5xWmDBQm4xjH77
 mtICMSvlrgFYWPcWCMM3AKtbH9DC0A/gFU2i6G/kyuNaQlhkAFhUW/o/MtIVyZhdNOcItd1a
 2sxW3DEAq6ItzSaCi6Lgh7y8scUkDsEfHRFjTHJ2UBdTRplZwrlBTWwcI9TZwuy8e4SZLUy6
 Me0naT4IcoksPFc3SAqmtTDR8IkWeBL8WFn4JzwNjhaliYRAJIAd9dcZYYgCsDEiAQguV9ha
 P2xKs6b7zYO5egdBdofJ541jMuTGwxfdE80yYcIzunhCkCXwuEYquOfApMob/2rLGp4QAmOY
 klT157kqALyXepM5DWyT/pelA5AFrPkQlcKbVzkH8GELVXKFKiTAe+HuQEUBMP3E2pHKgTug
 9OeucsCxQGYpOe5U5CWl5KGqcEU5gCwhs5Ic9TVJkj3y8P28MnCHMsSfV5WDqSwps5Y4X/yw
 Xcp5y4N5P54P4pV/tyLWwkYNWNLJEJUvrpGFhlcUejq6KTY7THbZb3Dd0rlhZgzBSM5OcfH1
 qV+jL9q7Qr9g09CE5/EuuStLzrxfn1juvGI1LaOOelivCTvkl6lpOHAw2cd/47Ilw/lxsXuf
 tRs1szxmyE5EZXQxfXNvxLVPz4jWjW5rse+9ZVu19LN787pIRW+Mu4xU+cgd5xNKlfw3k49x
 g4UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsVy+t/xu7pPU3fFGczv0LHoPXeSyeL93/ts
 FhtnrGe1aHynbPF/20Rmiz1nfrFbXPn6ns2iefF6NouVq48yWSzYb22xrEHVYuWeH0wWX648
 ZLLY9Pgaq8XlXXPYLNYeuctusW1NA6vFwQ9PWC1O3f3MbrHg2i92BxGPbbu3sXqsmbeG0ePv
 3I/MHvf2HWbx2PttAYvHwk9fWT3uXNvD5rH92wNWj/1z17B73O8+zuSxeUm9x+1/j5k9Jt9Y
 zuix+2YDm8f7fVfZPPq2rGIMEIzSsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIy
 VdK3s0lJzcksSy3St0vQy9hx5zR7wUPeilt7LBsY33J3MXJySAiYSCy9eJq5i5GLQ0hgKaNE
 Y89mZoiEjMTJaQ2sELawxJ9rXWwQRZ8YJbbfmwCWYBMwlOh6C5EQEehklJjW/ZEdxGEWmMEq
 se7APXaQKmEBC4nfD5vYQGwWAVWJbf0Hwbp5Bewk2iZOYYdYIS+xesMBsNWcQPH78/+wgNhC
 AoUSj66+ZZnAyLeAkWEVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYIRuO/Zz8w7GSxuDDzEK
 cDAq8fB2GO2ME2JNLCuuzD3EKMHBrCTC25IJFOJNSaysSi3Kjy8qzUktPsRoCnTURGYp0eR8
 YPLIK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAmB69ZeIug+Zj
 TLvXC11he7nJ9s/tDQxNgs43Cqqv+TJYrzd+krIq0FaFyT7PYl1+kvt25rl77m593Xvq3lpu
 iZALYrmLQ3zuGvRe0XnQX9eQ3ZCwcu9+Rw92D/ecO99Oi6jLOe+VFtxnFGJ0bqleeShLbs1p
 i5jTiTal9y6LKS/hy/r7KuuKEktxRqKhFnNRcSIAzswn4+YCAAA=
X-CMS-MailID: 20200512090125eucas1p1f9eae024a33e92bf1468f2af4e5a1b0a
X-Msg-Generator: CA
X-RootMTR: 20200512090125eucas1p1f9eae024a33e92bf1468f2af4e5a1b0a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090125eucas1p1f9eae024a33e92bf1468f2af4e5a1b0a
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090125eucas1p1f9eae024a33e92bf1468f2af4e5a1b0a@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 Daniel Vetter <daniel@ffwll.ch>, Joel Fernandes <joel@joelfernandes.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 31/38] staging: ion: remove dead code
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

aW9uX2hlYXBfcGFnZXNfemVybygpIGZ1bmN0aW9uIGlzIG5vdCB1c2VkIGF0IGFsbCwgc28gcmVt
b3ZlIGl0IHRvCnNpbXBsaWZ5IHRoZSBpb25faGVhcF9zZ2xpc3RfemVybygpIGZ1bmN0aW9uIGxh
dGVyLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1
bmcuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENIIHY0IDAwLzM4XSBE
Uk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVudHMgbWlzdXNlJyB0aHJl
YWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDIwMDUxMjA4NTcxMC4xNDY4
OC0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwotLS0KIGRyaXZlcnMvc3RhZ2luZy9hbmRy
b2lkL2lvbi9pb24uaCAgICAgIHwgMSAtCiBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9u
X2hlYXAuYyB8IDkgLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDEwIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uaCBiL2RyaXZlcnMv
c3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uaAppbmRleCA3NDkxNGEyLi5jMTk5ZTg4IDEwMDY0NAot
LS0gYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmgKKysrIGIvZHJpdmVycy9zdGFn
aW5nL2FuZHJvaWQvaW9uL2lvbi5oCkBAIC0xNzcsNyArMTc3LDYgQEAgc3RydWN0IGlvbl9oZWFw
IHsKIGludCBpb25faGVhcF9tYXBfdXNlcihzdHJ1Y3QgaW9uX2hlYXAgKmhlYXAsIHN0cnVjdCBp
b25fYnVmZmVyICpidWZmZXIsCiAJCSAgICAgIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKTsK
IGludCBpb25faGVhcF9idWZmZXJfemVybyhzdHJ1Y3QgaW9uX2J1ZmZlciAqYnVmZmVyKTsKLWlu
dCBpb25faGVhcF9wYWdlc196ZXJvKHN0cnVjdCBwYWdlICpwYWdlLCBzaXplX3Qgc2l6ZSwgcGdw
cm90X3QgcGdwcm90KTsKIAogLyoqCiAgKiBpb25faGVhcF9pbml0X3Nocmlua2VyCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX2hlYXAuYyBiL2RyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb25faGVhcC5jCmluZGV4IDA3NTViMTEuLjljMjNiMjMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25faGVhcC5jCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb25faGVhcC5jCkBAIC0xNDUsMTUgKzE0NSw2IEBAIGlu
dCBpb25faGVhcF9idWZmZXJfemVybyhzdHJ1Y3QgaW9uX2J1ZmZlciAqYnVmZmVyKQogCXJldHVy
biBpb25faGVhcF9zZ2xpc3RfemVybyh0YWJsZS0+c2dsLCB0YWJsZS0+bmVudHMsIHBncHJvdCk7
CiB9CiAKLWludCBpb25faGVhcF9wYWdlc196ZXJvKHN0cnVjdCBwYWdlICpwYWdlLCBzaXplX3Qg
c2l6ZSwgcGdwcm90X3QgcGdwcm90KQotewotCXN0cnVjdCBzY2F0dGVybGlzdCBzZzsKLQotCXNn
X2luaXRfdGFibGUoJnNnLCAxKTsKLQlzZ19zZXRfcGFnZSgmc2csIHBhZ2UsIHNpemUsIDApOwot
CXJldHVybiBpb25faGVhcF9zZ2xpc3RfemVybygmc2csIDEsIHBncHJvdCk7Ci19Ci0KIHZvaWQg
aW9uX2hlYXBfZnJlZWxpc3RfYWRkKHN0cnVjdCBpb25faGVhcCAqaGVhcCwgc3RydWN0IGlvbl9i
dWZmZXIgKmJ1ZmZlcikKIHsKIAlzcGluX2xvY2soJmhlYXAtPmZyZWVfbG9jayk7Ci0tIAoxLjku
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
