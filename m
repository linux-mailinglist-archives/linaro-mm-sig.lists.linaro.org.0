Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF941D16A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:59:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A9BA65F8D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:59:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6C8A665F88; Wed, 13 May 2020 13:59:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92BAA664FE;
	Wed, 13 May 2020 13:36:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EF5A665F8A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:35:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E1BE965F9B; Wed, 13 May 2020 13:35:45 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id BAAC965F8A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:17 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133317euoutp0135693aa23d3c8a00688d51e940f681df~Omcaok_RS2150421504euoutp01G
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133317euoutp0135693aa23d3c8a00688d51e940f681df~Omcaok_RS2150421504euoutp01G
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133316eucas1p14f8338b43b0ca57538811a5d90a84071~OmcaVfN4L2633026330eucas1p1V;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 2F.D8.60698.C17FBBE5; Wed, 13
 May 2020 14:33:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133316eucas1p2ad01d27ea4388cb50424bcf112d710ef~OmcaFLccM0359403594eucas1p2m;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133316eusmtrp1137b1bc87b13093a87f9bf46333dbe6c~OmcaEjEe81050610506eusmtrp1V;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-ed-5ebbf71c62d2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 75.47.07950.C17FBBE5; Wed, 13
 May 2020 14:33:16 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133315eusmtip11bd7d51f6d64aee3d21ad3edfd6dd66a~OmcZYTFoT0693306933eusmtip1G;
 Wed, 13 May 2020 13:33:15 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:34 +0200
Message-Id: <20200513133245.6408-27-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+3bO2Y7i7DgNP8wUFxZG3iUPWFYgcgiMKCowMlcevM0pm5eM
 ILGM3LxUGoqI2YW8rukaGpr3a1iiOXXLiS4vmWRq3qWsHY/Wf7/3eb6H5+XlwxFBO2aHR0ri
 aalEJBZyzdGazo1eV/u1+hCPe4bDZGbvew5Zna/CyP68NJT8U/MIIbUr81yyrKKDQxY3+ZGF
 ei9yWWvkkOqJIYwcqCvkksr2UR7ZsjCJkWuaHM4pS6qyqBJQDavFKFW7Oo5RY4ouDvXm5R1q
 ZGsCoXJ0JYBqW9CiVL0+hUstTn1GqSxNOaBUmkGUWlI7nOMHmx8Po8WRibTU3T/UPCJbPsWL
 67e92VltxFJAubUcmOGQ8IGLZYMcOTDHBUQpgJv6up1hGcDswWaMHZYA1Dc2cXcjuVm/AWuU
 AKgwzgDG2I5U1QcyzCU8oXxOvh2wIdIA7M60YAIIoUDgE2U5xhjWxHmomPq4HUYJZ7ipM6AM
 84kTsONrJWDbHGFFVTPCsJlJnzU0oaw+xIOD88EsB8CC9Bc8lq3hbJdmh+1hT04GyhRD4i6A
 xl4ljx0yABxIzd9p8IOG3k3TqrhpPReoqnNn5dNw/el3wMiQsIS6OStGRkz4uCYPYWU+fHBf
 wL4+BAu6Xv+rben7hLBMwaKsdS57rDYA+z/UgofAseB/WTEA5cCWTpDFhNMybwmd5CYTxcgS
 JOFuN2Jj1MD0t3q2ulbegsZf11sBgQOhBX98uD5EgIkSZckxrQDiiNCGf1ZlkvhhouRbtDT2
 mjRBTMtawX4cFdryvZ9/uyogwkXxdDRNx9HSXZeDm9mlgINWrrj9eNrKZfWyh1E145874lIZ
 dkFBREmIV8mwBL190X5dOb53ci4p+5JYLTz68wudmhE17Ru6bzQgejpdb/HjnT+tD3w2aiE+
 aXBwskzUAkuOT1/fMfeyVc2ZCTS7cWzzQNB0qa57bdK5zGmroi8odCOgwderf1geskd5RYjK
 IkSeRxCpTPQXYGbUzFcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsVy+t/xu7oy33fHGZzrFLPoPXeSyWLjjPWs
 Fhent7JY/N82kdniytf3bBYrVx9lsliw39pizk0jiy9XHjJZbHp8jdXi8q45bBZrj9xltzj4
 4Qmrxfctk5kc+DzWzFvD6LH32wIWj+3fHrB63O8+zuSxeUm9x+1/j5k9Jt9Yzuhx+MMVFo/d
 NxvYPD4+vcXi0bdlFaPH+i1XWTw+b5IL4I3SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQz
 NDaPtTIyVdK3s0lJzcksSy3St0vQy+jvespecFG84tjGh6wNjKuEuxg5OSQETCSm9P1l7GLk
 4hASWMoo8e/sNCaIhIzEyWkNrBC2sMSfa11sEEWfGCXuX7sJlmATMJToeguREBHoZJSY1v2R
 HcRhFpjMLPFs9XWwUcICARJT9p9jBrFZBFQlft24wwJi8wrYShx9voYRYoW8xOoNB8BqOIHi
 r+7sB6sREsiX2Lt4H9sERr4FjAyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAiNp27GfW3Yw
 dr0LPsQowMGoxMNrcWt3nBBrYllxZe4hRgkOZiURXr/1QCHelMTKqtSi/Pii0pzU4kOMpkBH
 TWSWEk3OB0Z5Xkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxivl
 QdUBSx+8kvJblRct/6Hu3CSZ+Kn/Vvfd3HRj+o3tP47J7LvdPtm2uzhBe5HR6XiLXSWWeTdl
 +M/PtLE/yvXAZpW0vJzPLrO5bbZ3uZamT7Pf0vMtz5Gx9dc61VeambJ6S3KT+JI+Xlt86KGh
 7OJ0Di+N9W7ik3LbHqz6t29169qLykWKbkosxRmJhlrMRcWJABDblfe6AgAA
X-CMS-MailID: 20200513133316eucas1p2ad01d27ea4388cb50424bcf112d710ef
X-Msg-Generator: CA
X-RootMTR: 20200513133316eucas1p2ad01d27ea4388cb50424bcf112d710ef
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133316eucas1p2ad01d27ea4388cb50424bcf112d710ef
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133316eucas1p2ad01d27ea4388cb50424bcf112d710ef@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Juergen Gross <jgross@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 27/38] xen: gntdev: fix common struct
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
ZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1Zi5jIHwgMTMgKysrKysrLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMgYi9kcml2ZXJzL3hlbi9nbnRkZXYtZG1hYnVmLmMKaW5k
ZXggNzVkM2JiOS4uYmE2Y2FkOCAxMDA2NDQKLS0tIGEvZHJpdmVycy94ZW4vZ250ZGV2LWRtYWJ1
Zi5jCisrKyBiL2RyaXZlcnMveGVuL2dudGRldi1kbWFidWYuYwpAQCAtMjQ3LDEwICsyNDcsOSBA
QCBzdGF0aWMgdm9pZCBkbWFidWZfZXhwX29wc19kZXRhY2goc3RydWN0IGRtYV9idWYgKmRtYV9i
dWYsCiAKIAkJaWYgKHNndCkgewogCQkJaWYgKGdudGRldl9kbWFidWZfYXR0YWNoLT5kaXIgIT0g
RE1BX05PTkUpCi0JCQkJZG1hX3VubWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwK
LQkJCQkJCSAgIHNndC0+bmVudHMsCi0JCQkJCQkgICBnbnRkZXZfZG1hYnVmX2F0dGFjaC0+ZGly
LAotCQkJCQkJICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CisJCQkJZG1hX3VubWFwX3NndGFi
bGUoYXR0YWNoLT5kZXYsIHNndCwKKwkJCQkJCSAgZ250ZGV2X2RtYWJ1Zl9hdHRhY2gtPmRpciwK
KwkJCQkJCSAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CiAJCQlzZ19mcmVlX3RhYmxlKHNndCk7
CiAJCX0KIApAQCAtMjg4LDggKzI4Nyw4IEBAIHN0YXRpYyB2b2lkIGRtYWJ1Zl9leHBfb3BzX2Rl
dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwKIAlzZ3QgPSBkbWFidWZfcGFnZXNfdG9fc2d0
KGdudGRldl9kbWFidWYtPnBhZ2VzLAogCQkJCSAgZ250ZGV2X2RtYWJ1Zi0+bnJfcGFnZXMpOwog
CWlmICghSVNfRVJSKHNndCkpIHsKLQkJaWYgKCFkbWFfbWFwX3NnX2F0dHJzKGF0dGFjaC0+ZGV2
LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAotCQkJCSAgICAgIERNQV9BVFRSX1NLSVBfQ1BV
X1NZTkMpKSB7CisJCWlmIChkbWFfbWFwX3NndGFibGUoYXR0YWNoLT5kZXYsIHNndCwgZGlyLAor
CQkJCSAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKSkgewogCQkJc2dfZnJlZV90YWJsZShzZ3Qp
OwogCQkJa2ZyZWUoc2d0KTsKIAkJCXNndCA9IEVSUl9QVFIoLUVOT01FTSk7CkBAIC02MjUsNyAr
NjI0LDcgQEAgc3RhdGljIHN0cnVjdCBnbnRkZXZfZG1hYnVmICpkbWFidWZfaW1wX2FsbG9jX3N0
b3JhZ2UoaW50IGNvdW50KQogCiAJLyogTm93IGNvbnZlcnQgc2d0IHRvIGFycmF5IG9mIHBhZ2Vz
IGFuZCBjaGVjayBmb3IgcGFnZSB2YWxpZGl0eS4gKi8KIAlpID0gMDsKLQlmb3JfZWFjaF9zZ19w
YWdlKHNndC0+c2dsLCAmc2dfaXRlciwgc2d0LT5uZW50cywgMCkgeworCWZvcl9lYWNoX3NndGFi
bGVfcGFnZShzZ3QsICZzZ19pdGVyLCAwKSB7CiAJCXN0cnVjdCBwYWdlICpwYWdlID0gc2dfcGFn
ZV9pdGVyX3BhZ2UoJnNnX2l0ZXIpOwogCQkvKgogCQkgKiBDaGVjayBpZiBwYWdlIGlzIHZhbGlk
OiB0aGlzIGNhbiBoYXBwZW4gaWYgd2UgYXJlIGdpdmVuCi0tIAoxLjkuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
