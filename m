Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E7F1CF1E8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:49:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 485F361734
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:49:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 348C3619AC; Tue, 12 May 2020 09:49:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B85C666561;
	Tue, 12 May 2020 09:08:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9298965FA4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:08:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 855EE66547; Tue, 12 May 2020 09:08:01 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 7ABD765FAA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:29 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090128euoutp010982f4302faa888f0079553b6e57da36~OPF0CnY_v2643526435euoutp01K
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090128euoutp010982f4302faa888f0079553b6e57da36~OPF0CnY_v2643526435euoutp01K
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090128eucas1p27fe6fe11596863115806d57d4e3a87ea~OPFzxT5Bd1372813728eucas1p2e;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A6.32.60679.8E56ABE5; Tue, 12
 May 2020 10:01:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090128eucas1p2cf31bfdca3b096585ba9f2741ef08ce0~OPFzb9Eku2110421104eucas1p2O;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090128eusmtrp1a81d3b11ff6134e7f5d1e37fb26ae025~OPFzbKWPm0183401834eusmtrp12;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-d9-5eba65e8f74e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 68.03.07950.7E56ABE5; Tue, 12
 May 2020 10:01:27 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090127eusmtip14b6982a0ff8e934c7db2200583cbc90a~OPFy6Z7r31181011810eusmtip1v;
 Tue, 12 May 2020 09:01:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:54 +0200
Message-Id: <20200512090058.14910-34-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTURzn3Hu3XcXZbS520EhaKJXko/xwwdKEPlxKeuEnwcfUi1pOZddH
 huHwEbp8TvOVmqig+cjyrUNsQzebMJ+JPURFkTVTAx/gI2vzan77/X+P/++cw8FRwQDHHo+K
 iadlMZJoMdca69bujl0z0v1B7vVGIZlr+IyQf5RaHvmxrI1D/u0uRMnp7Q0umV7XxiXfNQ8j
 ZM2gF7k1vYiQ7UszHHKqv5JLtg7N8Uj172XObT7VUt0CqP09JaAGdmowqmdngUMNVrXwqPlX
 OoTqqE+lvh8uoVTRbAOgVF/lXCqvswlQm+0XHtoEWN8Mp6OjEmmZm3eIdeSIqQuNyxY80zYW
 Y3JQcEYBrHBIeMLCfCOqANa4gGgE8I1eCdhhC8CpsTkOO2wCmNW5zT2JZKfVI6zQAGDVQsZp
 ZGW5C7W4uIQHVKwpjhJCIhPAkVwbiwklTAisrszmWAQ7wh9qB9Q8C8YIJ7gv/4JYMJ/whvKd
 oeM6R9j84dPRUiszP//2ALMsgoSeBzdrizHWdAeO/2o6DthBk66Tx+LzcLQo5ziQDuCioZXH
 Djnm66WVAdblBX8Y9sxp3Hy+K7Ct342lfeFaq55noSFhC2fXzlpo1AyV3aUoS/Nh1ksB63aG
 Fbr3/2vV45MoiymoUJmO33EYQE2vBisAjhWnZTUANAERncBII2jmegyd5MpIpExCTIRrWKy0
 HZg/1eihbqsX9B+EagCBA7EN3929L0jAkSQyyVINgDgqFvIzoswUP1yS/JyWxQbLEqJpRgMc
 cEws4t+o/RkoICIk8fRTmo6jZScqglvZy0FOtKQndap8KWo0ySe/yku/futSx2O/8gn/dbnU
 eFFIuQRezsusVaka9nZX933vMaLcRr/clJmJ8uIHxklRsPSbwKE0xFDqXOLiFZCz2uetU50L
 9Yi975xCrvhKN+Kzwmwb/FdeiOaRoQTlvM/4ob71ruG1Z8kjpyemwGD1cJ0YYyIlHldRGSP5
 B2crIfpQAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7ovUnfFGezgs+g9d5LJ4u+kY+wW
 G2esZ7X4v20is8WVr+/ZLJoXr2ezWLn6KJPFgv3WFl+uPGSy2PT4GqvF5V1z2CzWHrnLbnHw
 wxNWB16PNfPWMHr8/jWJ0WPvtwUsHtu/PWD12D93DbvH/e7jTB6bl9R73P73mNlj8o3ljB67
 bzawefRtWcXo8XmTXABPlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1N
 SmpOZllqkb5dgl7GiVdbmQs6hSqOrZjC0sA4gb+LkZNDQsBEorNpCVMXIxeHkMBSRonfZ66w
 QiRkJE5Oa4CyhSX+XOtigyj6xCjx/eVNNpAEm4ChRNdbiISIQCejxLTuj+wgDrPAJyaJI9dO
 g1UJCwRJvFw7jwXEZhFQlfjdcJUJxOYVsJNo+HaEDWKFvMTqDQeYQWxOoPj9+X/A6oUECiUe
 XX3LMoGRbwEjwypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzAqNl27OeWHYxd74IPMQpwMCrx
 8HYY7YwTYk0sK67MPcQowcGsJMLbkgkU4k1JrKxKLcqPLyrNSS0+xGgKdNREZinR5HxgROeV
 xBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamBs9csTUfGN9CrfMj38
 kdii24cSUt3Dt3tcMbl6tn7VszyObX4Cz658XTdBMM9wjc0vmznKyrmJr1+4THm/eG6rdpvt
 tFlCnE2nVy5bvK7OjKdmGaOi4snK0wIVTd8+Ks8qkrhlO7PO5onfqaSXf7cEPl55t1316+Kb
 9Qu1So1fsxTtVrjlFdmoxFKckWioxVxUnAgAqkItvLACAAA=
X-CMS-MailID: 20200512090128eucas1p2cf31bfdca3b096585ba9f2741ef08ce0
X-Msg-Generator: CA
X-RootMTR: 20200512090128eucas1p2cf31bfdca3b096585ba9f2741ef08ce0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090128eucas1p2cf31bfdca3b096585ba9f2741ef08ce0
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090128eucas1p2cf31bfdca3b096585ba9f2741ef08ce0@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 34/38] misc: fastrpc: fix common struct
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
J1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCnZzLiBvcmln
X25lbnRzIG1pc3VzZScgdGhyZWFkOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
MjAyMDA1MTIwODU3MTAuMTQ2ODgtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBk
cml2ZXJzL21pc2MvZmFzdHJwYy5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9mYXN0cnBj
LmMgYi9kcml2ZXJzL21pc2MvZmFzdHJwYy5jCmluZGV4IGUzZTA4NWUuLjBhM2UwMmFhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL21pc2MvZmFzdHJwYy5jCisrKyBiL2RyaXZlcnMvbWlzYy9mYXN0cnBj
LmMKQEAgLTUxOCw3ICs1MTgsNyBAQCBzdGF0aWMgc3RydWN0IGZhc3RycGNfaW52b2tlX2N0eCAq
ZmFzdHJwY19jb250ZXh0X2FsbG9jKAogCiAJdGFibGUgPSAmYS0+c2d0OwogCi0JaWYgKCFkbWFf
bWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFibGUtPnNnbCwgdGFibGUtPm5lbnRzLCBkaXIpKQor
CWlmICghZG1hX21hcF9zZ3RhYmxlKGF0dGFjaG1lbnQtPmRldiwgdGFibGUsIGRpcikpCiAJCXJl
dHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCiAJcmV0dXJuIHRhYmxlOwpAQCAtNTI4LDcgKzUyOCw3
IEBAIHN0YXRpYyB2b2lkIGZhc3RycGNfdW5tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2gsCiAJCQkJICBzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxlLAogCQkJCSAgZW51
bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyKQogewotCWRtYV91bm1hcF9zZyhhdHRhY2gtPmRldiwg
dGFibGUtPnNnbCwgdGFibGUtPm5lbnRzLCBkaXIpOworCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFj
aC0+ZGV2LCB0YWJsZSwgZGlyKTsKIH0KIAogc3RhdGljIHZvaWQgZmFzdHJwY19yZWxlYXNlKHN0
cnVjdCBkbWFfYnVmICpkbWFidWYpCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
