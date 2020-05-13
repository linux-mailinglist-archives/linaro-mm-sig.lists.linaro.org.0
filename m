Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E8B1D16F2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:04:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50CA260BD9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:04:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 450E365F89; Wed, 13 May 2020 14:04:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FAC965FA9;
	Wed, 13 May 2020 13:36:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4F33465FA1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:36:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3A62166514; Wed, 13 May 2020 13:36:34 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 349E465FA6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:23 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133322euoutp012236a18ff06f8080a85c78dc50c77800~OmcfvFcsD2140621406euoutp01g
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133322euoutp012236a18ff06f8080a85c78dc50c77800~OmcfvFcsD2140621406euoutp01g
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133322eucas1p2d95ee605cb9c29fd95c682d21005ada9~OmcfYZhv21009610096eucas1p2W;
 Wed, 13 May 2020 13:33:22 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id F8.D5.61286.227FBBE5; Wed, 13
 May 2020 14:33:22 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133321eucas1p13acea3aa6219ce5f7076c7677ef9eae3~Omce9qmhP0785007850eucas1p1E;
 Wed, 13 May 2020 13:33:21 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133321eusmtrp1ce353d78d9c1837784c5060b07716ef4~Omce86CR61050710507eusmtrp1X;
 Wed, 13 May 2020 13:33:21 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-81-5ebbf722ae93
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id EC.47.07950.127FBBE5; Wed, 13
 May 2020 14:33:21 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133320eusmtip1c65f8b0654a7f1d159d86a9a57b5fe30~OmceAbuLj0693406934eusmtip1c;
 Wed, 13 May 2020 13:33:20 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:40 +0200
Message-Id: <20200513133245.6408-33-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGvZ3pdKgUh2LkBhdME3GJghU1N6BEAw/jizHRF0lAikwAZTEd
 FjEakSqytLgQtwYM4sJWKBREpCyyiQjWKiDIIpAaIygguywBWwb17Tv/OX/+c08uiYkH+Q5k
 cFgEIw+ThUgIIV76etawSzKj992dY8KQytDEQ0X3tXy0VHoLQxUtcwKUN2YCqG1qlECKx1oC
 5eQ18FBGtTu6qs7E0WTbAA/pTJ/4qLU8jUDKwud8lDipJlB+fa8APdMt8FDNr698NFv+ED9k
 R2seagD9paoOpyunM3D6pbpXQOtyEwn6xXQ/n65O1wjovuRGHl385DLdvWjC6NTOLEDrP8cS
 tEoxQtApJbmAntBtOrbGW3gggAkJjmLkLh5+wqDSu9/xc+PU+Z9GJT8WPLBJAlYkpPbCpr5K
 kASEpJjKBvBuXTfOFZMA9tx5ulJMANgVb8T+Wgzt7QTXyAKwXNHP+2d5l36bZ5kiKClMGk4i
 LLyWugbgG5W1hTGqBYctv10tbEedhEULZbiFcWoLjE1IBxYWUQdhe9V1gktzhHmFr5aTrcz6
 UE/18kqQUpFQP24A3JAX7Ehpxjm2g0ONJQKON8DmVOWKQQHggCFfwBVKAFvj7q+43WGPYc4c
 R5rX2w615S6cfBiOjhiXZUjZwM5hW+4BNvB26T2Mk0UwIV7MTTtBdWPBv9ga48eVa9EwW9En
 4A5UB+C8upi4CRzV/8MyAMgF9kwkGxrIsNIwJtqZlYWykWGBzqfDQ3XA/AGbFxvHy8DUR/9a
 QJFAYi1CXXpfMV8WxcaE1gJIYpK1oqNasyQKkMVcYOThp+SRIQxbC9aTuMRe5Jo56COmAmUR
 zFmGOcfI/3Z5pJVDLNg/E7UwjT12Pn5Deuzt0qPkA0fBibE4231N85RKX5Bj27RHG+d2ZfV8
 5lOqI1OakGv7Ibv2henWBFgyngmOXuX9vLvDkOej9NytEXn1rfP/dmSr94+ai35BwZ6zNwc2
 Z51gE4ViWNXrZrXzUUN/lcYrZuPgtks1bfXvK66nOek9iiQ4GyST7sDkrOwPWfDyNHwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNIsWRmVeSWpSXmKPExsVy+t/xu7qK33fHGdzbrWjRe+4kk8XGGetZ
 Lf5vm8hssefML3aL1R8fM1pc+fqezaJ58Xo2i5WrjzJZLNhvbdEyaxGLxZcrD5ksNj2+xmpx
 edccNoueDVtZLTq/zGKzWHvkLrvFsk1/mCwOfnjCavFz1zwWB2GPNfPWMHrc23eYxWPvtwUs
 Hjtn3WX32LSqk81j+7cHrB77565h97jffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP3uZ3bB59
 W1YxenzeJBfAH6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mW
 WqRvl6CXsW3aC5aCTwIVby70sDYwzuTrYuTkkBAwkTh39SpbFyMXh5DAUkaJidtfMkMkZCRO
 TmtghbCFJf5c64Iq+sQoseXXfrAiNgFDia63EAkRgU5GiWndH9lBHGaBGywSc7d8YAepEhYI
 l3g7ZQ4LiM0ioCrR0DGXEcTmFbCVuLqvnQ1ihbzE6g0HwKZyAsVf3dkPVi8kkC+xd/E+tgmM
 fAsYGVYxiqSWFuem5xYb6RUn5haX5qXrJefnbmIERuS2Yz+37GDsehd8iFGAg1GJh9fi1u44
 IdbEsuLK3EOMEhzMSiK8fuuBQrwpiZVVqUX58UWlOanFhxhNgY6ayCwlmpwPTBZ5JfGGpobm
 FpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoY1xz1mTXv2TeNJ493mhRmmfoI
 Tn/FLlosVPk8LWnepql6azkc+090O9woL+F/dt3Nj/f+a5W/WU3pkw/vYfDVvPjy/fG4i2I+
 RWZ9Xunsu3lW/tq6yK5gvfD5fxLObe5VZzNOPHjz8pDMTIneGO7SyStvfPetz4nx/Xbvps81
 Y+EtWuo2gTMnKrEUZyQaajEXFScCALAaeATeAgAA
X-CMS-MailID: 20200513133321eucas1p13acea3aa6219ce5f7076c7677ef9eae3
X-Msg-Generator: CA
X-RootMTR: 20200513133321eucas1p13acea3aa6219ce5f7076c7677ef9eae3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133321eucas1p13acea3aa6219ce5f7076c7677ef9eae3
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133321eucas1p13acea3aa6219ce5f7076c7677ef9eae3@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 33/38] staging: tegra-vde: fix common
 struct sg_table related issues
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9t
YXBfc2coKSBmdW5jdGlvbgpyZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmll
cyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCkhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMg
dG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKZG1hX3VubWFwX3NnIG11
c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwpwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KCnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1
Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCm1lbW9yeSBidWZmZXIs
IHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4gSXQKY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nl
cyAoc2dsIGVudHJ5KSwKYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJp
ZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5l
bnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50cmllcywgY2FsbGluZyBETUEtbWFwcGlu
ZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCmlnbm9yaW5nIHRo
ZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkgdGhlIGRtYV9tYXBfc2coKQpm
dW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFw
cGluZyB3cmFwcGVycyBvcGVyYXRpbmcKZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBv
YmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQppdGVyYXRvcnMgd2hlcmUgcG9zc2libGUu
IFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCm5lbnRzIGFuZCBv
cmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xs
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCkZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NSAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21t
dS8yMDIwMDUxMzEzMjExNC42MDQ2LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQog
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9pb21tdS5jIHwgNCArKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvaW9tbXUuYyBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS90ZWdyYS12ZGUvaW9tbXUuYwppbmRleCA2YWY4NjNkLi5hZGY4ZGM3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMKKysrIGIvZHJpdmVycy9z
dGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9pb21tdS5jCkBAIC0zNiw4ICszNiw4IEBAIGludCB0ZWdy
YV92ZGVfaW9tbXVfbWFwKHN0cnVjdCB0ZWdyYV92ZGUgKnZkZSwKIAogCWFkZHIgPSBpb3ZhX2Rt
YV9hZGRyKCZ2ZGUtPmlvdmEsIGlvdmEpOwogCi0Jc2l6ZSA9IGlvbW11X21hcF9zZyh2ZGUtPmRv
bWFpbiwgYWRkciwgc2d0LT5zZ2wsIHNndC0+bmVudHMsCi0JCQkgICAgSU9NTVVfUkVBRCB8IElP
TU1VX1dSSVRFKTsKKwlzaXplID0gaW9tbXVfbWFwX3NndGFibGUodmRlLT5kb21haW4sIGFkZHIs
IHNndCwKKwkJCQkgSU9NTVVfUkVBRCB8IElPTU1VX1dSSVRFKTsKIAlpZiAoIXNpemUpIHsKIAkJ
X19mcmVlX2lvdmEoJnZkZS0+aW92YSwgaW92YSk7CiAJCXJldHVybiAtRU5YSU87Ci0tIAoxLjku
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
