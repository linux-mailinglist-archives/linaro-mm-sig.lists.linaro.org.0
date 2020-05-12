Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 892751CF199
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:28:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A888361957
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:28:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 99D7C618C8; Tue, 12 May 2020 09:28:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8352A65F8F;
	Tue, 12 May 2020 09:06:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D20E965F8D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:05:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BF30766227; Tue, 12 May 2020 09:05:58 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 485C465F8D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:14 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090113euoutp01f6a679b64a3c1efedfa48da6738c2a21~OPFl7i8yO2630726307euoutp01H
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090113euoutp01f6a679b64a3c1efedfa48da6738c2a21~OPFl7i8yO2630726307euoutp01H
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090113eucas1p1ef8c5da040086e7cd941a733488a5719~OPFloZoPF3053130531eucas1p1c;
 Tue, 12 May 2020 09:01:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A5.6B.60698.9D56ABE5; Tue, 12
 May 2020 10:01:13 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090112eucas1p280707473d14730b8d3054fe9b0781a05~OPFlYNMQO2661426614eucas1p2U;
 Tue, 12 May 2020 09:01:12 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090112eusmtrp15f7e3d008cd5e61e09ab2b1e8f14459b~OPFlXhG0_0188101881eusmtrp1B;
 Tue, 12 May 2020 09:01:12 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-0b-5eba65d9f4ae
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D2.F2.07950.8D56ABE5; Tue, 12
 May 2020 10:01:12 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090112eusmtip1e6afa75d409d6f8bde05c4af7510a21e~OPFk0YbqY1148011480eusmtip1T;
 Tue, 12 May 2020 09:01:12 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:30 +0200
Message-Id: <20200512090058.14910-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCKsWRmVeSWpSXmKPExsWy7djP87o3U3fFGWx9yGXRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCuKyyYlNSezLLVI3y6BK+PB9i2sBbd4Kl43TWJtYDzI1cXIySEhYCLx8N5c
 ZhBbSGAFo8T/1ypdjFxA9hdGienT2hghnM+MEudvLmOC6Xj56w07RGI5o0TXs7XMcC1/eueD
 zWITMJToetvFBmKLCLQySpzo5QEpYhboYJa4NnE+0FwODmGBWImlffUgJouAqsS04yIg5bwC
 dhJb1rczQiyTl1i94QDYSE6g+P35f1hAxkgIHGOXeLHpLxtEkYvE+lOboWxhiVfHt7BD2DIS
 pyf3QDU0M0o8PLeWHcLpYZS43DQDaoW1xJ1zv9hArmAW0JRYv0sfIuwosW/bUnaQsIQAn8SN
 t4IgYWYgc9K26cwQYV6JjjYhiGo1iVnH18GtPXjhElSJh8SmOSmQ4DnKKLF84wOmCYzysxB2
 LWBkXMUonlpanJueWmycl1quV5yYW1yal66XnJ+7iRGYlk7/O/51B+O+P0mHGAU4GJV4eDuM
 dsYJsSaWFVfmHmKU4GBWEuFtyQQK8aYkVlalFuXHF5XmpBYfYpTmYFES5zVe9DJWSCA9sSQ1
 OzW1ILUIJsvEwSnVwMjSycz0RC/dt0w9rmzSlvfxDFYexQ4Vb+tDNKfPvT2HMaXh3q5P8/xq
 /1nbRs6dk+lyO7CuaCv/ZqE97x4fnbYj5sf1x/0eIYobfPJuNczkDDtTs1Jrq52N8r37n99f
 c5GMM99Z9eD7dXOJ/w7b1cKPz/h912S36Mp/6R/EA18d58pdwy/zc6MSS3FGoqEWc1FxIgCa
 4y+URwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xu7o3UnfFGTyebW7Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMllMuj+BxWLBfmuLL1ceMllsenyN1eLyrjlsFjPO72OyWHvkLrvF
 wQ9PWC1mTH7J5sDnsWbeGkaPvd8WsHhs//aA1eN+93Emj81L6j1u/3vM7DH5xnJGj903G9g8
 +rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL+PB9i2sBbd4Kl43TWJtYDzI1cXIySEhYCLx8tcbdhBbSGApo8SH18IQcRmJk9Ma
 WCFsYYk/17rYuhi5gGo+MUrs7l3OBJJgEzCU6HoLkRAR6GSUmNb9kR3EYRaYwCxxv2U1Yxcj
 B4ewQLTE4521ICaLgKrEtOMiIL28AnYSW9a3M0IskJdYveEAM4jNCRS/P/8PC8RBhRKPrr5l
 mcDIt4CRYRWjSGppcW56brGRXnFibnFpXrpecn7uJkZgnGw79nPLDsaud8GHGAU4GJV4eDuM
 dsYJsSaWFVfmHmKU4GBWEuFtyQQK8aYkVlalFuXHF5XmpBYfYjQFumkis5Rocj4whvNK4g1N
 Dc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTCumcBn9k/UZ9c6Duk1Zedm
 ha14rH/czPF1gMqN4xfaP+saP574S7v/1ZMNLyvXXxStP7pIfynvltmxk8S9mP/mXtu3yHqr
 +YkT8yd+mbNwvV9ijRHjlAlCr8/Us/9c+b7+7Pd7B7ZPak1o9vlc8frRBuduAbbdzM+ME/Y6
 fcwTPbnIctNXadl1rEosxRmJhlrMRcWJABokKdCpAgAA
X-CMS-MailID: 20200512090112eucas1p280707473d14730b8d3054fe9b0781a05
X-Msg-Generator: CA
X-RootMTR: 20200512090112eucas1p280707473d14730b8d3054fe9b0781a05
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090112eucas1p280707473d14730b8d3054fe9b0781a05
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090112eucas1p280707473d14730b8d3054fe9b0781a05@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Inki Dae <inki.dae@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 10/38] drm: exynos: use common helper for
 a scatterlist contiguity check
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

VXNlIGNvbW1vbiBoZWxwZXIgZm9yIGNoZWNraW5nIHRoZSBjb250aWd1aXR5IG9mIHRoZSBpbXBv
cnRlZCBkbWEtYnVmLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93
c2tpQHNhbXN1bmcuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENIIHY0
IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVudHMgbWlz
dXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDIwMDUxMjA4
NTcxMC4xNDY4OC0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwotLS0KIGRyaXZlcnMvZ3B1
L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0uYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZ2VtLmMKaW5kZXggMGRmNTdlZS4uYTQ5YThlYSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dlbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0uYwpAQCAtNDMxLDI3ICs0MzEs
MTAgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICoKIHsKIAlzdHJ1Y3QgZXh5bm9zX2RybV9nZW0g
KmV4eW5vc19nZW07CiAKLQlpZiAoc2d0LT5uZW50cyA8IDEpCisJLyogY2hlY2sgaWYgdGhlIGVu
dHJpZXMgaW4gdGhlIHNnX3RhYmxlIGFyZSBjb250aWd1b3VzICovCisJaWYgKGRybV9wcmltZV9n
ZXRfY29udGlndW91c19zaXplKHNndCkgPCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgeworCQlEUk1f
RVJST1IoImJ1ZmZlciBjaHVua3MgbXVzdCBiZSBtYXBwZWQgY29udGlndW91c2x5Iik7CiAJCXJl
dHVybiBFUlJfUFRSKC1FSU5WQUwpOwotCi0JLyoKLQkgKiBDaGVjayBpZiB0aGUgcHJvdmlkZWQg
YnVmZmVyIGhhcyBiZWVuIG1hcHBlZCBhcyBjb250aWd1b3VzCi0JICogaW50byBETUEgYWRkcmVz
cyBzcGFjZS4KLQkgKi8KLQlpZiAoc2d0LT5uZW50cyA+IDEpIHsKLQkJZG1hX2FkZHJfdCBuZXh0
X2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzZ3QtPnNnbCk7Ci0JCXN0cnVjdCBzY2F0dGVybGlzdCAq
czsKLQkJdW5zaWduZWQgaW50IGk7Ci0KLQkJZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHMsIHNndC0+
bmVudHMsIGkpIHsKLQkJCWlmICghc2dfZG1hX2xlbihzKSkKLQkJCQlicmVhazsKLQkJCWlmIChz
Z19kbWFfYWRkcmVzcyhzKSAhPSBuZXh0X2FkZHIpIHsKLQkJCQlEUk1fRVJST1IoImJ1ZmZlciBj
aHVua3MgbXVzdCBiZSBtYXBwZWQgY29udGlndW91c2x5Iik7Ci0JCQkJcmV0dXJuIEVSUl9QVFIo
LUVJTlZBTCk7Ci0JCQl9Ci0JCQluZXh0X2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzKSArIHNnX2Rt
YV9sZW4ocyk7Ci0JCX0KIAl9CiAKIAlleHlub3NfZ2VtID0gZXh5bm9zX2RybV9nZW1faW5pdChk
ZXYsIGF0dGFjaC0+ZG1hYnVmLT5zaXplKTsKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
