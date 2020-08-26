Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F99C2527EB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:57:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8B2161873
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:57:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AB60E619AC; Wed, 26 Aug 2020 06:57:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B01D60C37;
	Wed, 26 Aug 2020 06:38:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8FA4060C32
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:36:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 81F1765FCE; Wed, 26 Aug 2020 06:36:58 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 1750260C32
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:46 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063545euoutp011f427b1ed0ee290a4b4155fed95a9af1~uve13Epai2036820368euoutp01R
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063545euoutp011f427b1ed0ee290a4b4155fed95a9af1~uve13Epai2036820368euoutp01R
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063544eucas1p2892e06b5f27fd3ac175767a0187bfecd~uve1TIyss0404404044eucas1p2o;
 Wed, 26 Aug 2020 06:35:44 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 17.BD.05997.0C2064F5; Wed, 26
 Aug 2020 07:35:44 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063544eucas1p230abe33c28618e82608c5b40eb50fa87~uve00eZKb0398803988eucas1p22;
 Wed, 26 Aug 2020 06:35:44 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063544eusmtrp1cc29caedff01a18f8127ae3390732c5d~uve0zvtIk1167511675eusmtrp1K;
 Wed, 26 Aug 2020 06:35:44 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-e8-5f4602c0fa83
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 5F.D0.06314.0C2064F5; Wed, 26
 Aug 2020 07:35:44 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063543eusmtip2c16dfa5c1225eec61b01617e9c56a325~uve0EBA_s0302303023eusmtip21;
 Wed, 26 Aug 2020 06:35:43 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:11 +0200
Message-Id: <20200826063316.23486-28-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0iTURjmfHel1dcWebrQYN0wSjP7ccKSkorzJxD6lWW29ENFXbapXRBa
 mVm6WVZgzRzDectL2tJZKzOvs1wmaWVo5bCkktnFJSqmuT6zf8/zvJfneQ+HI6VD9HIuVpUk
 qFXKeAXjTVnbJl5sekLsjdjcot+I9J1PCXT3RhWNZqw5JHrkmGRR+Y9BgHp+fWNQmrmKQbfL
 WwlkaghC5w0FFHL3OAlkGXxNo27bLQbpqmtpdMltYFBlyzsWFVumCNT4/SONJmxGaqcMVxgr
 AH7/uJnC9WMmCj8wvGOxpewSg+vGBmjckF/B4g9ZdgLfKzyD+6YHSXyttwTgh2+1DNanjTA4
 u6YM4FHLqtBFYd7bo4T42BRB7R98xDumK7uKTBxadFJbdFALjJJM4MVBfissHs+hMoE3J+VL
 AWx+amZF4p4ljxxzlVEAp8+9miXc35EB6xFRLwGwLfsnMT/hcpaSnr0MHwAzXZmMBy/h0wFs
 1y/wYJJ3UNAxHuhZJOMPwLMT4R6Z4tfCi521tAdL+GA4fdNCivHksLz6yV/sNavbsy4zHi/I
 6znYPNVFi0274WTRCCNiGfxqr2FFvBJ2XNNR4kAagM7OSlYkOgC7z90AYlcQ7O+cZDyJSN4X
 Vtn8RXkXLOwrmLt4Iex1LRbzL4RXrbmkKEvgxQtSsXsdNNjvzNs2dr2cy4/h+/xaIL5PDoC2
 3GHiCpAb/puZACgDPkKyJiFa0GxRCSf8NMoETbIq2i/yWIIFzP6+jmm7+z6wTR1tAjwHFAsk
 JmZPhJRWpmhOJTQByJGKJZKQ5x2HpZIo5anTgvpYhDo5XtA0gRUcpfCRBBZ8CZfy0cokIU4Q
 EgX1vyrBeS3Xgpj15qDKEK8htrqi5ZBbBccjV1ywksvSV6tVkwFsRn3c79gB48PQQfMXmXx4
 jSSpMs2ZXujase3wTOzdLJ+S/ce7Rz93nwzz3SM31amCnYWlOrev/4jfj/ZU/eU1dFGc601q
 atT1PH5vZL9t3/qQMCt0hS+dwRnPrrYGyfM+5SooTYwyYAOp1ij/AKFVXqR5AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJIsWRmVeSWpSXmKPExsVy+t/xe7oHmNziDS6s4rboPXeSyWLjjPWs
 Fv+3TWS22HPmF7vF6o+PGS2ufH3PZtG8eD2bxcrVR5ksFuy3tmiZtYjF4suVh0wWmx5fY7W4
 vGsOm0XPhq2sFp1fZrFZrD1yl91i2aY/TBYHPzxhtfi5ax6Lg7DHmnlrGD3u7TvM4rH32wIW
 j52z7rJ7bFrVyeax/dsDVo/9c9ewe9zvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tHb/M7No++
 LasYPT5vkgvgj9KzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxL
 LdK3S9DLuNC3nrngGX9Fw9LoBsZ5vF2MHBwSAiYSD7YldDFycQgJLGWU2DrhMGsXIydQXEbi
 5LQGKFtY4s+1LjaIok+MEm//bWEDSbAJGEp0vYVIiAh0MkpM6/7IDuIwC9xgkZi75QM7SJWw
 QLjEt0tfwEaxCKhKdJzbCmbzCthJ/Ju5iRlihbzE6g0HwGxOoPjx7n6wDUICthKn185gnsDI
 t4CRYRWjSGppcW56brGhXnFibnFpXrpecn7uJkZgNG479nPzDsZLG4MPMQpwMCrx8C5gc40X
 Yk0sK67MPcQowcGsJMLrdPZ0nBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJLiSbnAxNFXkm8oamh
 uYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGRvVlRlMqbdNDqxZGpRxo3tRV
 qTy9uuxX4RpuH2suy9XlvXfv1tkFbCtqvary57L5j3jzPfzmTQEbc/fb8l/7dnPRrRjtsvs9
 zq1dHEE34pQZfv5q1DlWcKxhy/6ICqOyFPMY26txJs+vak7iqRCLPfRsH6vmxN367+6aqV39
 JjSVY7ZAq+sEJZbijERDLeai4kQAKYI8btwCAAA=
X-CMS-MailID: 20200826063544eucas1p230abe33c28618e82608c5b40eb50fa87
X-Msg-Generator: CA
X-RootMTR: 20200826063544eucas1p230abe33c28618e82608c5b40eb50fa87
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063544eucas1p230abe33c28618e82608c5b40eb50fa87
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063544eucas1p230abe33c28618e82608c5b40eb50fa87@eucas1p2.samsung.com>
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
Subject: [Linaro-mm-sig] [PATCH v9 27/32] staging: tegra-vde: fix common
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IERtaXRyeSBPc2lwZW5rbyA8
ZGlnZXR4QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lv
bW11LmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9pb21t
dS5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9pb21tdS5jCmluZGV4IDZhZjg2
M2Q5MjEyMy4uYWRmOGRjN2VlMjVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
dGVncmEtdmRlL2lvbW11LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9p
b21tdS5jCkBAIC0zNiw4ICszNiw4IEBAIGludCB0ZWdyYV92ZGVfaW9tbXVfbWFwKHN0cnVjdCB0
ZWdyYV92ZGUgKnZkZSwKIAogCWFkZHIgPSBpb3ZhX2RtYV9hZGRyKCZ2ZGUtPmlvdmEsIGlvdmEp
OwogCi0Jc2l6ZSA9IGlvbW11X21hcF9zZyh2ZGUtPmRvbWFpbiwgYWRkciwgc2d0LT5zZ2wsIHNn
dC0+bmVudHMsCi0JCQkgICAgSU9NTVVfUkVBRCB8IElPTU1VX1dSSVRFKTsKKwlzaXplID0gaW9t
bXVfbWFwX3NndGFibGUodmRlLT5kb21haW4sIGFkZHIsIHNndCwKKwkJCQkgSU9NTVVfUkVBRCB8
IElPTU1VX1dSSVRFKTsKIAlpZiAoIXNpemUpIHsKIAkJX19mcmVlX2lvdmEoJnZkZS0+aW92YSwg
aW92YSk7CiAJCXJldHVybiAtRU5YSU87Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
