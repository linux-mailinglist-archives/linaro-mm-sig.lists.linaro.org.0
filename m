Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E11D1CF181
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:23:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50AF2619AC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:23:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 416BC619CF; Tue, 12 May 2020 09:23:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A363165F8A;
	Tue, 12 May 2020 09:05:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C17A4617CF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:05:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B34DE619F1; Tue, 12 May 2020 09:05:02 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id B52DB617CF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:11 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090110euoutp01b15a161da3b09ca13546ac5f60c9d82a~OPFjfCWVK2629726297euoutp01E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090110euoutp01b15a161da3b09ca13546ac5f60c9d82a~OPFjfCWVK2629726297euoutp01E
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090110eucas1p1cabc5748153cf2472ef7c15eb199c85b~OPFjE_waF2839628396eucas1p1u;
 Tue, 12 May 2020 09:01:10 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id F7.57.61286.6D56ABE5; Tue, 12
 May 2020 10:01:10 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090110eucas1p1fdf69509f401e425c45e958430a99b65~OPFityUFr1182811828eucas1p1v;
 Tue, 12 May 2020 09:01:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090110eusmtrp24b11072e269222a224b0da020ae635db~OPFitBH8S0472704727eusmtrp23;
 Tue, 12 May 2020 09:01:10 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-50-5eba65d65066
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C5.35.08375.5D56ABE5; Tue, 12
 May 2020 10:01:09 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090109eusmtip14c63f12fe5b3b587c7213e8f5c8431fa~OPFiGnKy71352813528eusmtip1C;
 Tue, 12 May 2020 09:01:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:25 +0200
Message-Id: <20200512090058.14910-5-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMKsWRmVeSWpSXmKPExsWy7djP87rXUnfFGXxfKGXRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o7hsUlJzMstSi/TtErgyuic2sRdsEq14PvcYYwPj
 UsEuRk4OCQETida5F1m7GLk4hARWMEp09exlhHC+MEr83PSGDcL5zCgx88Y9li5GDrCWnwti
 QbqFBJYzSuzvDIZr2P3zACtIgk3AUKLrbRcbiC0i0MoocaKXB6SIWWABs8TPz22MIAlhgWSJ
 R5962UFsFgFVid1nQRZwcvAK2EpsuPKXCeI+eYnVGw4wg9icAnYS9+f/YQEZJCFwjV3i4rIj
 LBBFLhIf775mh7CFJV4d3wJly0j83zmfCaKhmVHi4bm17BBOD6PE5aYZjBBV1hJ3zv1iA/mN
 WUBTYv0ufYiwo0TLjNfMEC/zSdx4Cw4wZiBz0rbpUGFeiY42IYhqNYlZx9fBrT144RIzhO0h
 seLzFmj4HmWU2DFjFuMERvlZCMsWMDKuYhRPLS3OTU8tNsxLLdcrTswtLs1L10vOz93ECExa
 p/8d/7SD8eulpEOMAhyMSjy8HUY744RYE8uKK3MPMUpwMCuJ8LZkAoV4UxIrq1KL8uOLSnNS
 iw8xSnOwKInzGi96GSskkJ5YkpqdmlqQWgSTZeLglGpgNDc4dkSZYeXr464u21+s6rkyuWXN
 yqMKha/SD4briP841vI9/GJTbm53dfXhmSY22wv9OT7dtpWa5tyWWq0xd+7UBhuRPVde3ol5
 2tt4LXc2L+/1Q+WL7t4vknu3/jjD1cYl341mv5GplZ0U1byjTutf4JSJG/UPzn9r+dxuQv7+
 zTdEonw705RYijMSDbWYi4oTATJVDspWAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xu7pXU3fFGUz6ZGPRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFgs/bmWxaOtcxmpx
 8MMTVostbyayOvB5rJm3htFj77cFLB6bVnWyeWz/9oDVY97JQI/73ceZPDYvqfe4/e8xs8fk
 G8sZPXbfbGDz6NuyitFj8+lqj8+b5AJ4o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyN
 zWOtjEyV9O1sUlJzMstSi/TtEvQyuic2sRdsEq14PvcYYwPjUsEuRg4OCQETiZ8LYrsYuTiE
 BJYySkyY/p+pi5ETKC4jcXJaAyuELSzx51oXG0TRJ0aJSxtes4Ak2AQMJbreQiREBDoZJaZ1
 f2QHcZgFVjBLvNo3F6xKWCBR4lDDerCxLAKqErvP3gOL8wrYSmy48hdqnbzE6g0HmEFsTgE7
 ifvz/4DVCAkUSjy6+pZlAiPfAkaGVYwiqaXFuem5xYZ6xYm5xaV56XrJ+bmbGIFRtO3Yz807
 GC9tDD7EKMDBqMTD22G0M06INbGsuDL3EKMEB7OSCG9LJlCINyWxsiq1KD++qDQntfgQoynQ
 UROZpUST84ERnlcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgbG2
 XK6mLZrJwNfKWf23+iMZ3deO8nYvY5Ltpd0ZeRX3e012PvdmljjDhxXBzhl3ZRVKr35ry2da
 9+PzjEfNxuc4b/36J7v4c8is+kppB49Ztzc+2dhhZZ0VdvXqz1MhF/4ye84zvLlioXj16+Ct
 8hX3OfKdAtNjogLtb0h3PLBxNb0gfXytqhJLcUaioRZzUXEiALsfSue4AgAA
X-CMS-MailID: 20200512090110eucas1p1fdf69509f401e425c45e958430a99b65
X-Msg-Generator: CA
X-RootMTR: 20200512090110eucas1p1fdf69509f401e425c45e958430a99b65
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090110eucas1p1fdf69509f401e425c45e958430a99b65
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090110eucas1p1fdf69509f401e425c45e958430a99b65@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 05/38] drm: prime: use sgtable iterators
 in drm_prime_sg_to_page_addr_arrays()
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

UmVwbGFjZSB0aGUgY3VycmVudCBoYW5kLWNyYWZ0ZWQgY29kZSBmb3IgZXh0cmFjdGluZyBwYWdl
cyBhbmQgRE1BCmFkZHJlc3NlcyBmcm9tIHRoZSBnaXZlbiBzY2F0dGVybGlzdCBieSB0aGUgbXVj
aCBtb3JlIHJvYnVzdApjb2RlIGJhc2VkIG9uIHRoZSBnZW5lcmljIHNjYXR0ZXJsaXN0IGl0ZXJh
dG9ycyBhbmQgcmVjZW50bHkKaW50cm9kdWNlZCBzZ190YWJsZS1iYXNlZCB3cmFwcGVycy4gVGhl
IHJlc3VsdGluZyBjb2RlIGlzIHNpbXBsZSBhbmQKZWFzeSB0byB1bmRlcnN0YW5kLCBzbyB0aGUg
Y29tbWVudCBkZXNjcmliaW5nIHRoZSBvbGQgY29kZSBpcyBubwpsb25nZXIgbmVlZGVkLgoKU2ln
bmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgot
LS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENIIHY0IDAwLzM4XSBEUk06IGZpeCBz
dHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cmh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDIwMDUxMjA4NTcxMC4xNDY4OC0xLW0uc3p5
cHJvd3NraUBzYW1zdW5nLmNvbS9ULwotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyB8
IDQ3ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUu
YwppbmRleCAxZDJlNWZlLi5kZmRmNGQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X3ByaW1lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCkBAIC05ODUsNDUgKzk4
NSwyNiBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmRybV9nZW1fcHJpbWVfaW1wb3J0KHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCiBpbnQgZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMo
c3RydWN0IHNnX3RhYmxlICpzZ3QsIHN0cnVjdCBwYWdlICoqcGFnZXMsCiAJCQkJICAgICBkbWFf
YWRkcl90ICphZGRycywgaW50IG1heF9lbnRyaWVzKQogewotCXVuc2lnbmVkIGNvdW50OwotCXN0
cnVjdCBzY2F0dGVybGlzdCAqc2c7Ci0Jc3RydWN0IHBhZ2UgKnBhZ2U7Ci0JdTMyIHBhZ2VfbGVu
LCBwYWdlX2luZGV4OwotCWRtYV9hZGRyX3QgYWRkcjsKLQl1MzIgZG1hX2xlbiwgZG1hX2luZGV4
OworCXN0cnVjdCBzZ19kbWFfcGFnZV9pdGVyIGRtYV9pdGVyOworCXN0cnVjdCBzZ19wYWdlX2l0
ZXIgcGFnZV9pdGVyOworCXN0cnVjdCBwYWdlICoqcCA9IHBhZ2VzOworCWRtYV9hZGRyX3QgKmEg
PSBhZGRyczsKIAotCS8qCi0JICogU2NhdHRlcmxpc3QgZWxlbWVudHMgY29udGFpbnMgYm90aCBw
YWdlcyBhbmQgRE1BIGFkZHJlc3NlcywgYnV0Ci0JICogb25lIHNob3VkIG5vdCBhc3N1bWUgMTox
IHJlbGF0aW9uIGJldHdlZW4gdGhlbS4gVGhlIHNnLT5sZW5ndGggaXMKLQkgKiB0aGUgc2l6ZSBv
ZiB0aGUgcGh5c2ljYWwgbWVtb3J5IGNodW5rIGRlc2NyaWJlZCBieSB0aGUgc2ctPnBhZ2UsCi0J
ICogd2hpbGUgc2dfZG1hX2xlbihzZykgaXMgdGhlIHNpemUgb2YgdGhlIERNQSAoSU8gdmlydHVh
bCkgY2h1bmsKLQkgKiBkZXNjcmliZWQgYnkgdGhlIHNnX2RtYV9hZGRyZXNzKHNnKS4KLQkgKi8K
LQlwYWdlX2luZGV4ID0gMDsKLQlkbWFfaW5kZXggPSAwOwotCWZvcl9lYWNoX3NnKHNndC0+c2ds
LCBzZywgc2d0LT5uZW50cywgY291bnQpIHsKLQkJcGFnZV9sZW4gPSBzZy0+bGVuZ3RoOwotCQlw
YWdlID0gc2dfcGFnZShzZyk7Ci0JCWRtYV9sZW4gPSBzZ19kbWFfbGVuKHNnKTsKLQkJYWRkciA9
IHNnX2RtYV9hZGRyZXNzKHNnKTsKLQotCQl3aGlsZSAocGFnZXMgJiYgcGFnZV9sZW4gPiAwKSB7
Ci0JCQlpZiAoV0FSTl9PTihwYWdlX2luZGV4ID49IG1heF9lbnRyaWVzKSkKKwlpZiAocGFnZXMp
IHsKKwkJZm9yX2VhY2hfc2d0YWJsZV9wYWdlKHNndCwgJnBhZ2VfaXRlciwgMCkgeworCQkJaWYg
KHAgLSBwYWdlcyA+PSBtYXhfZW50cmllcykKIAkJCQlyZXR1cm4gLTE7Ci0JCQlwYWdlc1twYWdl
X2luZGV4XSA9IHBhZ2U7Ci0JCQlwYWdlKys7Ci0JCQlwYWdlX2xlbiAtPSBQQUdFX1NJWkU7Ci0J
CQlwYWdlX2luZGV4Kys7CisJCQkqcCsrID0gc2dfcGFnZV9pdGVyX3BhZ2UoJnBhZ2VfaXRlcik7
CiAJCX0KLQkJd2hpbGUgKGFkZHJzICYmIGRtYV9sZW4gPiAwKSB7Ci0JCQlpZiAoV0FSTl9PTihk
bWFfaW5kZXggPj0gbWF4X2VudHJpZXMpKQorCX0KKwlpZiAoYWRkcnMpIHsKKwkJZm9yX2VhY2hf
c2d0YWJsZV9kbWFfcGFnZShzZ3QsICZkbWFfaXRlciwgMCkgeworCQkJaWYgKGEgLSBhZGRycyA+
PSBtYXhfZW50cmllcykKIAkJCQlyZXR1cm4gLTE7Ci0JCQlhZGRyc1tkbWFfaW5kZXhdID0gYWRk
cjsKLQkJCWFkZHIgKz0gUEFHRV9TSVpFOwotCQkJZG1hX2xlbiAtPSBQQUdFX1NJWkU7Ci0JCQlk
bWFfaW5kZXgrKzsKKwkJCSphKysgPSBzZ19wYWdlX2l0ZXJfZG1hX2FkZHJlc3MoJmRtYV9pdGVy
KTsKIAkJfQogCX0KKwogCXJldHVybiAwOwogfQogRVhQT1JUX1NZTUJPTChkcm1fcHJpbWVfc2df
dG9fcGFnZV9hZGRyX2FycmF5cyk7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
