Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8542E25DA11
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 15:39:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B03FF66767
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Sep 2020 13:39:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A146A66770; Fri,  4 Sep 2020 13:39:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4654F66747;
	Fri,  4 Sep 2020 13:35:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4476260F48
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:35:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 39CE666748; Fri,  4 Sep 2020 13:35:03 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 1DEC660F48
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:56 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200904133455euoutp02e106f707b101e7de3b9d9b544a81a81a~xmAZDJ5pV2890128901euoutp02V
 for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Sep 2020 13:34:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200904133455euoutp02e106f707b101e7de3b9d9b544a81a81a~xmAZDJ5pV2890128901euoutp02V
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200904133454eucas1p2848e5dea17908fc582aede4e5e9c64af~xmAYsavbL0143201432eucas1p2d;
 Fri,  4 Sep 2020 13:34:54 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 57.01.06456.E72425F5; Fri,  4
 Sep 2020 14:34:54 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200904133454eucas1p249ecc981d26cee5cde2a6bbe05324769~xmAYW9kIA1447014470eucas1p2g;
 Fri,  4 Sep 2020 13:34:54 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200904133454eusmtrp140dca417cbf260aeaf25d5b36805e7e9~xmAYWLxkB0766507665eusmtrp1x;
 Fri,  4 Sep 2020 13:34:54 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-27-5f52427e024e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 72.AE.06314.E72425F5; Fri,  4
 Sep 2020 14:34:54 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200904133453eusmtip122b58df76f076f03ad4681e352b953a6~xmAXshNqb1924719247eusmtip1Z;
 Fri,  4 Sep 2020 13:34:53 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri,  4 Sep 2020 15:16:43 +0200
Message-Id: <20200904131711.12950-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904131711.12950-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGuZ3OMEVKxoLhBogkNWA0YYtER9lR45hgREh4MCgUmQCRzRZQ
 IChRqKyG5YElBGpFwQKipYCgKFSkxcYGAQ0IxCIoQthkM/BAbRnQt+/c8//nPzm5OMJ7h9rg
 MfFJtDBeEMvHzNhtfZtap9v+QWGuXS3uZKG2n0W+KG9GSX1bMUIOry9h5NOG9yxS8taDXBue
 ZJHyqS8oOdRZhZFNvROm5MPfrWxSnPsEJXuWp1FSMV+M+lpQjdWNgOrakLApuSwXo9o3dChV
 3X+J+pavYlEttXeose0phCodqQPUq9FMjHqgkAGqRZNOrcoPBnIvm3lG0rExKbTQxTvcLLq3
 0yFRbXVL36TDMsEHIg9wcEi4Q1VvPSsPmOE8oh5AmXYaY4o1ABvHJgBTrAIo0dew9iy1ktds
 plEHYHn/nspg+aHTAKMKI9xg3kIeZmQrIhtAdaG5UYQQEgRurop3RJZEJNTk9CFGZhMO8Luu
 ATUyl/CCS5MtCBNnDxued+8wh/CGreXTqHEQJL6awk8aBWBEZ+Dj8TFThi3hnEqxy3ZQU1rA
 Zgz3AJzUNpkyRQGAQ3fLd90ecFy7ZdgVN+x3BDZ3uhgREn5wRnmRQQs4srDfKEYMWNJWhjDP
 XJgj5jEzHGGl6tm/1J6Bwd31KSiukiDMgYoBlA5sYUXAvvJ/lgQAGbCmk0VxUbTILZ6+6SwS
 xImS46OcryXEyYHha2m2VSsvwfpghBIQOOCbc018gsJ4qCBFlBqnBBBH+FZc/4+aqzxupCA1
 jRYmhAmTY2mREtjibL4195h09gqPiBIk0ddpOpEW7nVZOMcmE7QX9FisrLvbqpZLT9vYZc1v
 Kf18U7Ky8y+EBvz5mVYabKLziTgZfTi0xFP9qPJUX9G+xbPhHcHdHa4hQQnOzhll0gNv1DWf
 O9PFyRWzJ87PlM0dvz8a4XUjAAmMPad3dLJ1WKympSaHMhXyepvC4QyOzFJRsfIL9WyOCnHR
 L5PdfLYoWuB2FBGKBH8BAV+Bs1YDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKIsWRmVeSWpSXmKPExsVy+t/xu7p1TkHxBofvylr0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hs1h75C67xcKPW1ks2jqXsVoc
 /PCE1WLLm4msDnwea+atYfTY+20Bi8emVZ1sHtu/PWD1mHcy0ON+93Emj81L6j1u/3vM7DH5
 xnJGj903G9g8+rasYvTYfLra4/MmuQDeKD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj
 81grI1MlfTublNSczLLUIn27BL2MI7tUC06IVPxf+4CtgfGUQBcjJ4eEgInEkgV7WLoYuTiE
 BJYyStycdJIRIiEjcXJaAyuELSzx51oXG0TRJ0aJ429/s4Ek2AQMJbreQiREBDoZJaZ1f2QH
 cZgFVjBLvNo3lwWkSlggSeJV4zEmEJtFQFXi0YPVYGN5BWwl3j/czAyxQl5i9YYDYDangJ3E
 1hlPwGqEgGo+zFnMMoGRbwEjwypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAKNp27OfmHYyX
 NgYfYhTgYFTi4WWwD4oXYk0sK67MPcQowcGsJMLrdPZ0nBBvSmJlVWpRfnxRaU5q8SFGU6Cj
 JjJLiSbnAyM8ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDo6zd
 6SnVr05qPtsrc+G6UrfJ/N2r+P99az5w5gz3/JeHVJ6/frrVO8JcUqPoL5/2FRm7LGXuJfsu
 HLV6xsn2ZJHjjcUXOpK2bJjSIBlZ+X6qt3PMi/YT2w/9zzu/bhXHjXvFv7uO23fIfZ5h0/mt
 TFdKNPGVRbqkhnX5rz1ffFq0p7TVr1r4c4kSS3FGoqEWc1FxIgBfM8CxuAIAAA==
X-CMS-MailID: 20200904133454eucas1p249ecc981d26cee5cde2a6bbe05324769
X-Msg-Generator: CA
X-RootMTR: 20200904133454eucas1p249ecc981d26cee5cde2a6bbe05324769
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200904133454eucas1p249ecc981d26cee5cde2a6bbe05324769
References: <20200904131711.12950-1-m.szyprowski@samsung.com>
 <CGME20200904133454eucas1p249ecc981d26cee5cde2a6bbe05324769@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v10 02/30] drm: prime: use sgtable iterators
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
bmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgpS
ZXZpZXdlZC1ieTogQW5kcnplaiBIYWpkYSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQt
Ynk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2RybV9wcmltZS5jIHwgNDkgKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fcHJpbWUuYwppbmRleCA0ZWQ1ZWQxZjA3OGMuLmM1ZTc5NmQ0YTQ4OSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJp
bWUuYwpAQCAtOTkwLDQ1ICs5OTAsMjYgQEAgRVhQT1JUX1NZTUJPTChkcm1fZ2VtX3ByaW1lX2lt
cG9ydCk7CiBpbnQgZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXMoc3RydWN0IHNnX3Rh
YmxlICpzZ3QsIHN0cnVjdCBwYWdlICoqcGFnZXMsCiAJCQkJICAgICBkbWFfYWRkcl90ICphZGRy
cywgaW50IG1heF9lbnRyaWVzKQogewotCXVuc2lnbmVkIGNvdW50OwotCXN0cnVjdCBzY2F0dGVy
bGlzdCAqc2c7Ci0Jc3RydWN0IHBhZ2UgKnBhZ2U7Ci0JdTMyIHBhZ2VfbGVuLCBwYWdlX2luZGV4
OwotCWRtYV9hZGRyX3QgYWRkcjsKLQl1MzIgZG1hX2xlbiwgZG1hX2luZGV4OwotCi0JLyoKLQkg
KiBTY2F0dGVybGlzdCBlbGVtZW50cyBjb250YWlucyBib3RoIHBhZ2VzIGFuZCBETUEgYWRkcmVz
c2VzLCBidXQKLQkgKiBvbmUgc2hvdWQgbm90IGFzc3VtZSAxOjEgcmVsYXRpb24gYmV0d2VlbiB0
aGVtLiBUaGUgc2ctPmxlbmd0aCBpcwotCSAqIHRoZSBzaXplIG9mIHRoZSBwaHlzaWNhbCBtZW1v
cnkgY2h1bmsgZGVzY3JpYmVkIGJ5IHRoZSBzZy0+cGFnZSwKLQkgKiB3aGlsZSBzZ19kbWFfbGVu
KHNnKSBpcyB0aGUgc2l6ZSBvZiB0aGUgRE1BIChJTyB2aXJ0dWFsKSBjaHVuawotCSAqIGRlc2Ny
aWJlZCBieSB0aGUgc2dfZG1hX2FkZHJlc3Moc2cpLgotCSAqLwotCXBhZ2VfaW5kZXggPSAwOwot
CWRtYV9pbmRleCA9IDA7Ci0JZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBj
b3VudCkgewotCQlwYWdlX2xlbiA9IHNnLT5sZW5ndGg7Ci0JCXBhZ2UgPSBzZ19wYWdlKHNnKTsK
LQkJZG1hX2xlbiA9IHNnX2RtYV9sZW4oc2cpOwotCQlhZGRyID0gc2dfZG1hX2FkZHJlc3Moc2cp
OwotCi0JCXdoaWxlIChwYWdlcyAmJiBwYWdlX2xlbiA+IDApIHsKLQkJCWlmIChXQVJOX09OKHBh
Z2VfaW5kZXggPj0gbWF4X2VudHJpZXMpKQorCXN0cnVjdCBzZ19kbWFfcGFnZV9pdGVyIGRtYV9p
dGVyOworCXN0cnVjdCBzZ19wYWdlX2l0ZXIgcGFnZV9pdGVyOworCXN0cnVjdCBwYWdlICoqcCA9
IHBhZ2VzOworCWRtYV9hZGRyX3QgKmEgPSBhZGRyczsKKworCWlmIChwYWdlcykgeworCQlmb3Jf
ZWFjaF9zZ3RhYmxlX3BhZ2Uoc2d0LCAmcGFnZV9pdGVyLCAwKSB7CisJCQlpZiAoV0FSTl9PTihw
IC0gcGFnZXMgPj0gbWF4X2VudHJpZXMpKQogCQkJCXJldHVybiAtMTsKLQkJCXBhZ2VzW3BhZ2Vf
aW5kZXhdID0gcGFnZTsKLQkJCXBhZ2UrKzsKLQkJCXBhZ2VfbGVuIC09IFBBR0VfU0laRTsKLQkJ
CXBhZ2VfaW5kZXgrKzsKKwkJCSpwKysgPSBzZ19wYWdlX2l0ZXJfcGFnZSgmcGFnZV9pdGVyKTsK
IAkJfQotCQl3aGlsZSAoYWRkcnMgJiYgZG1hX2xlbiA+IDApIHsKLQkJCWlmIChXQVJOX09OKGRt
YV9pbmRleCA+PSBtYXhfZW50cmllcykpCisJfQorCWlmIChhZGRycykgeworCQlmb3JfZWFjaF9z
Z3RhYmxlX2RtYV9wYWdlKHNndCwgJmRtYV9pdGVyLCAwKSB7CisJCQlpZiAoV0FSTl9PTihhIC0g
YWRkcnMgPj0gbWF4X2VudHJpZXMpKQogCQkJCXJldHVybiAtMTsKLQkJCWFkZHJzW2RtYV9pbmRl
eF0gPSBhZGRyOwotCQkJYWRkciArPSBQQUdFX1NJWkU7Ci0JCQlkbWFfbGVuIC09IFBBR0VfU0la
RTsKLQkJCWRtYV9pbmRleCsrOworCQkJKmErKyA9IHNnX3BhZ2VfaXRlcl9kbWFfYWRkcmVzcygm
ZG1hX2l0ZXIpOwogCQl9CiAJfQorCiAJcmV0dXJuIDA7CiB9CiBFWFBPUlRfU1lNQk9MKGRybV9w
cmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
