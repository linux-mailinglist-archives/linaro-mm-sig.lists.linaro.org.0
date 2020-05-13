Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E05381D1701
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:05:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CD7F619AC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:05:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F3A3165F8F; Wed, 13 May 2020 14:05:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 291DF6654B;
	Wed, 13 May 2020 13:36:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E1B1665F9F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:36:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CF49565FA1; Wed, 13 May 2020 13:36:39 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 1145665FA4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:24 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133323euoutp013b8bf4448efedb0509b12878b4ced201~OmcgfNf702146121461euoutp01X
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133323euoutp013b8bf4448efedb0509b12878b4ced201~OmcgfNf702146121461euoutp01X
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133322eucas1p2dbe519154c03fde5530af20217ac43de~Omcf9-RMn1009610096eucas1p2Y;
 Wed, 13 May 2020 13:33:22 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 9A.D5.61286.227FBBE5; Wed, 13
 May 2020 14:33:22 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133322eucas1p19b55463a3926b7c1459034f2b02969f8~OmcfkTlCl2350723507eucas1p1I;
 Wed, 13 May 2020 13:33:22 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133322eusmtrp13bf97a83c6a7a5b8cd4399e120fb1623~OmcfjpEg_1050710507eusmtrp1Y;
 Wed, 13 May 2020 13:33:22 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-84-5ebbf722cea0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 76.2A.08375.227FBBE5; Wed, 13
 May 2020 14:33:22 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133321eusmtip1eb9262652eba999cc1b5ed2ab52d1b40~Omce42SCY0693306933eusmtip1M;
 Wed, 13 May 2020 13:33:21 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:41 +0200
Message-Id: <20200513133245.6408-34-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHObu7u9ex5W0KHqwUJiZGqcOCS1oUhN0IIkIDDbWZ1we6Kbtq
 2T+JYrj5Sk0ydSpqWD7STM3U8Jk6hysfmK80tbQUK3y3zNq80/77/j7n8zu/H4eDI6IW1BoP
 lUfRCrk0XMzjcxu6f+lOiDeb/Vymkx3JVJ2GQ/7J7MbIFznVKPm3IQMhh9d/8MiEkmoe+azi
 LYcsanUj14ZnOGTt3AhKDjXl88iqro8Y2f7zM3pOSFUWVALqtz4TUG82irjUq41PKNWqrsSo
 6eQeDvWy9B41sTOHUFmjZYBqHovjUWl15YBarbW5KvDhuwfS4aExtML57E1+SG68HotMF935
 ujWBxoGH5ipghkPiJExefI2oAB8XEU8B7J+fx9hiDcCmgXTAFqsA9mV0Ynstbcokk1UGYIm2
 F9lvGZ4tQo0Wj5BA1bKKZ8yWRCKAvakCo4QQixxYkK/clSwIT5jfWGOQcJxL2MOq1SAjFhJn
 4GzCEoedZgsratoQYzYz8MXJVq7xHkjoMFi80M9jpQtw6ks3wmYLuNhTZ1r1MNRmpZgaEgCc
 0VVhbJEC4FB8DmAtNzip0+9ugRCOsLrJmcXnoWpdzzFiSByAo8sHjRgxxMyGRwiLhTDpvoi1
 j8Lcnuf7Y9vfD5rWoWDXE6XpGTsBrN8c5D4Atrn/hxUBUA6s6GhGFkwzEjl924mRyphoebDT
 rQhZLTD8Ke1Oz0ojWB8M6AAEDsQCITne7CdCpTFMrKwDQBwRWwqvVBuQMFAae5dWRPgrosNp
 pgMcwrliK6Fr8TdfEREsjaLDaDqSVuydcnAz6zhgU/H4e5DttYBVv16vzaqNi14Owa6ppbZY
 UHOYJv/yBwEarWz0sTte4xEbC2e9004PSS75ZjFrfeqggfHrWdpw837obZ5IukTWF2aEZWuW
 7CSeY+7beQteNxQr6nRBWOn4VosDMZE9kjd6PWrK44hmu9DT2t/uVGO22l7v9m5OzGVCpJJj
 iIKR/gOYlM9tTwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7pK33fHGXTu5rPoPXeSyeLvpGPs
 FhtnrGe1+L9tIrPFla/v2SyaF69ns1i5+iiTxYL91hZfrjxkstj0+BqrxeVdc9gs1h65y25x
 8MMTVgdejzXz1jB6/P41idFj77cFLB7bvz1g9dg/dw27x/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexqymX+wF/UIVL37cZm1gnMLfxcjJISFgInGgs4O9i5GLQ0hgKaPE6iXH
 2SASMhInpzWwQtjCEn+udbFBFH1ilDi39TM7SIJNwFCi6y1EQkSgk1FiWvdHsFHMAp+YJI5c
 Ow02SlggSGLulElMXYwcHCwCqhJrP6eBhHkFbCUeNb9mgtggL7F6wwFmEJsTKP7qzn4WEFtI
 IF9i7+J9bBMY+RYwMqxiFEktLc5Nzy021CtOzC0uzUvXS87P3cQIjJptx35u3sF4aWPwIUYB
 DkYlHl6LW7vjhFgTy4orcw8xSnAwK4nw+q0HCvGmJFZWpRblxxeV5qQWH2I0BbppIrOUaHI+
 MKLzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwGlhOrvJftebF
 40Qrl6Jn7UtSFiheqSgUNH0pcI57z5MPJdEFXQuWhnc59W6oTjv1WVdUuqWzaJXGHJ3tM5Pf
 PtvadmdVMYvus5Y1NStyDpb8u+jqaM3naZr2xFD3weSFp9JbOJP/Sb6v2LFF9ymratK9q6L3
 fkxUyPV97eX7k8V+n2/fM76ZSizFGYmGWsxFxYkAFhuED7ACAAA=
X-CMS-MailID: 20200513133322eucas1p19b55463a3926b7c1459034f2b02969f8
X-Msg-Generator: CA
X-RootMTR: 20200513133322eucas1p19b55463a3926b7c1459034f2b02969f8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133322eucas1p19b55463a3926b7c1459034f2b02969f8
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133322eucas1p19b55463a3926b7c1459034f2b02969f8@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 34/38] misc: fastrpc: fix common struct
 sg_table related issues
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
ZHJpdmVycy9taXNjL2Zhc3RycGMuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21pc2MvZmFzdHJw
Yy5jIGIvZHJpdmVycy9taXNjL2Zhc3RycGMuYwppbmRleCBlM2UwODVlLi4wYjViOTI3IDEwMDY0
NAotLS0gYS9kcml2ZXJzL21pc2MvZmFzdHJwYy5jCisrKyBiL2RyaXZlcnMvbWlzYy9mYXN0cnBj
LmMKQEAgLTUxOCw3ICs1MTgsNyBAQCBzdGF0aWMgc3RydWN0IGZhc3RycGNfaW52b2tlX2N0eCAq
ZmFzdHJwY19jb250ZXh0X2FsbG9jKAogCiAJdGFibGUgPSAmYS0+c2d0OwogCi0JaWYgKCFkbWFf
bWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFibGUtPnNnbCwgdGFibGUtPm5lbnRzLCBkaXIpKQor
CWlmICghZG1hX21hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgdGFibGUsIGRpciwgMCkpCiAJ
CXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCiAJcmV0dXJuIHRhYmxlOwpAQCAtNTI4LDcgKzUy
OCw3IEBAIHN0YXRpYyB2b2lkIGZhc3RycGNfdW5tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gsCiAJCQkJICBzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxlLAogCQkJCSAg
ZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyKQogewotCWRtYV91bm1hcF9zZyhhdHRhY2gtPmRl
diwgdGFibGUtPnNnbCwgdGFibGUtPm5lbnRzLCBkaXIpOworCWRtYV91bm1hcF9zZ3RhYmxlKGF0
dGFjaC0+ZGV2LCB0YWJsZSwgZGlyLCAwKTsKIH0KIAogc3RhdGljIHZvaWQgZmFzdHJwY19yZWxl
YXNlKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
