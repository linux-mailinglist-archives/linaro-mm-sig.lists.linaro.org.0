Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 009652527BB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:49:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 292B560C32
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:49:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 179C8617D4; Wed, 26 Aug 2020 06:49:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B615666E2;
	Wed, 26 Aug 2020 06:37:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AAAFD617D4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9BE546186A; Wed, 26 Aug 2020 06:35:52 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 3C6EC61873
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:39 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063538euoutp017c3ed0cfcd7f136dde4a4d6b9f082765~uvevenSRe2035120351euoutp01E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063538euoutp017c3ed0cfcd7f136dde4a4d6b9f082765~uvevenSRe2035120351euoutp01E
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063538eucas1p130c03342b3f968e5ba15935b3d3b2846~uvevH9AAK1474114741eucas1p1j;
 Wed, 26 Aug 2020 06:35:38 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C0.BD.05997.AB2064F5; Wed, 26
 Aug 2020 07:35:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063537eucas1p2d9a362f619920ad84c46f36cd13ec362~uveu5z7t10402704027eucas1p2o;
 Wed, 26 Aug 2020 06:35:37 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063537eusmtrp18354272b9bd79ea9e0ab3346ae6d40a0~uveu5Khce1091110911eusmtrp1d;
 Wed, 26 Aug 2020 06:35:37 +0000 (GMT)
X-AuditID: cbfec7f4-677ff7000000176d-d2-5f4602ba9b84
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 27.D0.06314.9B2064F5; Wed, 26
 Aug 2020 07:35:37 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063537eusmtip2377aced114f05b610537df16fe2b3f76~uveuVRx0Y0302303023eusmtip2z;
 Wed, 26 Aug 2020 06:35:37 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:01 +0200
Message-Id: <20200826063316.23486-18-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGuTOd6UAoGQrKDaKYJpCALKI8jNQQNUrmhciDT0bFIpNChEI6
 gEKCIASXsklLhKASggjIIlsFUiTsFoOgyNYqSNmURYTIohAEKQP49p3//P89595cAhU2YbZE
 sCyCkcskISLcjFf7du2Dqwbx8T8+04ZTqT3vEKoquwKjtmozUKp/ZQGnXpZ2INTW+BxGPVPG
 UnlNYmq5fwyhqicGMapP8xSnfhm2UKq8fYRPtSxOYmcs6LLcMkA3rubx6LpVA0aPJmsRuqYg
 jv6yOYHSKl0RoBv08Tj9N6eJR6epSwBdN5iL0kvVR/zML5udDmRCgqMYubv3dbOgjiYlFp5+
 +Hbi+DoWD1RQAUwJSHrC15lfcQUwI4RkMYDDdZUYVywDWKXpRYwuIbkE4FSW9V7ic0chwpmK
 AJxb+M3bT0xPPOcbXTjpARXzCtzI1mQSgJ2p5kZGyccoLFnxMbIVeQl+u2/Y8fNIB6jXVwAj
 C0hvOKAuwLlp9rC0shk1sum2rk1O39kVkoN8WL+WuWs6Dxt6NwDHVnBWq+ZzbAe7VCk8LpAI
 4FhPOZ8rUgDsS8jeTYjhcM/69knE9npOsELjzslnYdrkBN8oQ9IC6uYtuQtYQGVtFsrJAvjg
 npBzO8Ic7av9sS0fP6Ec01CZqN19rQwAmyeHkEfAPuf/sDwASoANE8mGShn2hIy55cZKQtlI
 mdTtRlhoNdj+Vl2b2uV6oNkIaAUkAUTmgjz8gr8Qk0Sx0aGtABKoyFpwrrvrmlAQKImOYeRh
 /vLIEIZtBYcInshGcDJ/5qqQlEoimJsME87I97oIYWobD1IDlzvHqLhCIC2fVTocVVk3Tsmm
 D4hm786bBLjEyLxsTcJjY+vfDOTr3xe7Jn1v06U+8XooVXd5HbPTs+WW9qM1fkIH30VxwsFT
 P3VlYkWmxNHds0E1tHjxhVrc0KdoGRkIijfcaSvy1KW1G5y6XYdMDS7OvldwXXfkj8E/qyIe
 GyTxcEblrOQfAWXL91IDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xe7o7mdziDTY/NrHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSz+P3rNajF3Uq3Fgv3WFl+uPGSy2PT4GqvF5V1z2Cw+PfjPbLH2
 yF12i4MfnrA68HmsmbeG0WPvtwUsHtu/PWD1uN99nMlj85J6j9v/HjN7TL6xnNFj980GNo+/
 s/azePRtWcXosf3aPGaPz5vkAnii9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62M
 TJX07WxSUnMyy1KL9O0S9DKO7p/EWtAvW9H86BdrA+NkiS5GTg4JAROJW0eXMXUxcnEICSxl
 lJhzYT8LREJG4uS0BlYIW1jiz7UuNhBbSOATo0T7ZE8Qm03AUKLrLUici0NEoJNRYlr3R3YQ
 h1lgHrPE8lWHmUCqhAWCJA5cmMUOYrMIqErcvLmeEcTmFbCTuLplCRvEBnmJ1RsOMIPYnEDx
 4939UNtsJU6vncE8gZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMDo2Xbs5+YdjJc2
 Bh9iFOBgVOLhXcDmGi/EmlhWXJl7iFGCg1lJhNfp7Ok4Id6UxMqq1KL8+KLSnNTiQ4ymQEdN
 ZJYSTc4HRnZeSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbGeAf5
 RSmJ8R42xy48bnt30+fCmlU2x5v+XdlpnXNDtmg+86qKHqGtD1e/NZtx1J7bvG32hG7PlWsa
 d3o8z51ZuaS+0nhZ0FH/w6lvj+rHfJld/OJwrugKP8GV7++WT2uvnO3wJ2ZvksO/SNn5DmI8
 P59ezjkrd0pjMVfWQ4+d85fd6O94UJywRImlOCPRUIu5qDgRALOlfSi0AgAA
X-CMS-MailID: 20200826063537eucas1p2d9a362f619920ad84c46f36cd13ec362
X-Msg-Generator: CA
X-RootMTR: 20200826063537eucas1p2d9a362f619920ad84c46f36cd13ec362
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063537eucas1p2d9a362f619920ad84c46f36cd13ec362
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063537eucas1p2d9a362f619920ad84c46f36cd13ec362@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 17/32] drm: rockchip: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2dlbS5jIHwgMjMgKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKaW5kZXggMjk3MGU1MzRlMmJiLi5jYjUwZjJi
YTJlNDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
Z2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwpA
QCAtMzYsOCArMzYsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2dlbV9pb21tdV9tYXAoc3RydWN0
IHJvY2tjaGlwX2dlbV9vYmplY3QgKnJrX29iaikKIAogCXJrX29iai0+ZG1hX2FkZHIgPSBya19v
YmotPm1tLnN0YXJ0OwogCi0JcmV0ID0gaW9tbXVfbWFwX3NnKHByaXZhdGUtPmRvbWFpbiwgcmtf
b2JqLT5kbWFfYWRkciwgcmtfb2JqLT5zZ3QtPnNnbCwKLQkJCSAgIHJrX29iai0+c2d0LT5uZW50
cywgcHJvdCk7CisJcmV0ID0gaW9tbXVfbWFwX3NndGFibGUocHJpdmF0ZS0+ZG9tYWluLCBya19v
YmotPmRtYV9hZGRyLCBya19vYmotPnNndCwKKwkJCQlwcm90KTsKIAlpZiAocmV0IDwgcmtfb2Jq
LT5iYXNlLnNpemUpIHsKIAkJRFJNX0VSUk9SKCJmYWlsZWQgdG8gbWFwIGJ1ZmZlcjogc2l6ZT0l
emQgcmVxdWVzdF9zaXplPSV6ZFxuIiwKIAkJCSAgcmV0LCBya19vYmotPmJhc2Uuc2l6ZSk7CkBA
IC05OCwxMSArOTgsMTAgQEAgc3RhdGljIGludCByb2NrY2hpcF9nZW1fZ2V0X3BhZ2VzKHN0cnVj
dCByb2NrY2hpcF9nZW1fb2JqZWN0ICpya19vYmopCiAJICogVE9ETzogUmVwbGFjZSB0aGlzIGJ5
IGRybV9jbGZsdXNoX3NnKCkgb25jZSBpdCBjYW4gYmUgaW1wbGVtZW50ZWQKIAkgKiB3aXRob3V0
IHJlbHlpbmcgb24gc3ltYm9scyB0aGF0IGFyZSBub3QgZXhwb3J0ZWQuCiAJICovCi0JZm9yX2Vh
Y2hfc2cocmtfb2JqLT5zZ3QtPnNnbCwgcywgcmtfb2JqLT5zZ3QtPm5lbnRzLCBpKQorCWZvcl9l
YWNoX3NndGFibGVfc2cocmtfb2JqLT5zZ3QsIHMsIGkpCiAJCXNnX2RtYV9hZGRyZXNzKHMpID0g
c2dfcGh5cyhzKTsKIAotCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UoZHJtLT5kZXYsIHJrX29iai0+
c2d0LT5zZ2wsIHJrX29iai0+c2d0LT5uZW50cywKLQkJCSAgICAgICBETUFfVE9fREVWSUNFKTsK
KwlkbWFfc3luY19zZ3RhYmxlX2Zvcl9kZXZpY2UoZHJtLT5kZXYsIHJrX29iai0+c2d0LCBETUFf
VE9fREVWSUNFKTsKIAogCXJldHVybiAwOwogCkBAIC0zNTAsOCArMzQ5LDggQEAgdm9pZCByb2Nr
Y2hpcF9nZW1fZnJlZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCiAJCWlmIChw
cml2YXRlLT5kb21haW4pIHsKIAkJCXJvY2tjaGlwX2dlbV9pb21tdV91bm1hcChya19vYmopOwog
CQl9IGVsc2UgewotCQkJZG1hX3VubWFwX3NnKGRybS0+ZGV2LCBya19vYmotPnNndC0+c2dsLAot
CQkJCSAgICAgcmtfb2JqLT5zZ3QtPm5lbnRzLCBETUFfQklESVJFQ1RJT05BTCk7CisJCQlkbWFf
dW5tYXBfc2d0YWJsZShkcm0tPmRldiwgcmtfb2JqLT5zZ3QsCisJCQkJCSAgRE1BX0JJRElSRUNU
SU9OQUwsIDApOwogCQl9CiAJCWRybV9wcmltZV9nZW1fZGVzdHJveShvYmosIHJrX29iai0+c2d0
KTsKIAl9IGVsc2UgewpAQCAtNDc2LDE1ICs0NzUsMTMgQEAgcm9ja2NoaXBfZ2VtX2RtYV9tYXBf
c2coc3RydWN0IGRybV9kZXZpY2UgKmRybSwKIAkJCXN0cnVjdCBzZ190YWJsZSAqc2csCiAJCQlz
dHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCAqcmtfb2JqKQogewotCWludCBjb3VudCA9IGRtYV9t
YXBfc2coZHJtLT5kZXYsIHNnLT5zZ2wsIHNnLT5uZW50cywKLQkJCSAgICAgICBETUFfQklESVJF
Q1RJT05BTCk7Ci0JaWYgKCFjb3VudCkKLQkJcmV0dXJuIC1FSU5WQUw7CisJaW50IGVyciA9IGRt
YV9tYXBfc2d0YWJsZShkcm0tPmRldiwgc2csIERNQV9CSURJUkVDVElPTkFMLCAwKTsKKwlpZiAo
ZXJyKQorCQlyZXR1cm4gZXJyOwogCiAJaWYgKGRybV9wcmltZV9nZXRfY29udGlndW91c19zaXpl
KHNnKSA8IGF0dGFjaC0+ZG1hYnVmLT5zaXplKSB7CiAJCURSTV9FUlJPUigiZmFpbGVkIHRvIG1h
cCBzZ190YWJsZSB0byBjb250aWd1b3VzIGxpbmVhciBhZGRyZXNzLlxuIik7Ci0JCWRtYV91bm1h
cF9zZyhkcm0tPmRldiwgc2ctPnNnbCwgc2ctPm5lbnRzLAotCQkJICAgICBETUFfQklESVJFQ1RJ
T05BTCk7CisJCWRtYV91bm1hcF9zZ3RhYmxlKGRybS0+ZGV2LCBzZywgRE1BX0JJRElSRUNUSU9O
QUwsIDApOwogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
