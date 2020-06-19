Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E14200775
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 13:04:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CEAC66597
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:04:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4ADA2665A1; Fri, 19 Jun 2020 11:04:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B450A666F6;
	Fri, 19 Jun 2020 10:39:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9F47166597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8B432666D0; Fri, 19 Jun 2020 10:38:32 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 8E8C266597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:16 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103715euoutp01d60a13ea9f2fe1f9e3262d70573ad5b8~Z66SmC7vp1849718497euoutp01r
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103715euoutp01d60a13ea9f2fe1f9e3262d70573ad5b8~Z66SmC7vp1849718497euoutp01r
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103715eucas1p2ad1ec44f1b69aa83e98bc848af6927ee~Z66SSagFB3081930819eucas1p2t;
 Fri, 19 Jun 2020 10:37:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9C.9C.06318.B559CEE5; Fri, 19
 Jun 2020 11:37:15 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa~Z66R5XCac0493704937eucas1p18;
 Fri, 19 Jun 2020 10:37:14 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103714eusmtrp1f60c74a1fbb850448d1cac3b7fb23832~Z66R4rTjx1007310073eusmtrp1D;
 Fri, 19 Jun 2020 10:37:14 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-88-5eec955b3ef3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id EF.EA.06314.A559CEE5; Fri, 19
 Jun 2020 11:37:14 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103713eusmtip26f278a5ab64dc87293551fc5392692d2~Z66RB0RDS0246802468eusmtip2l;
 Fri, 19 Jun 2020 10:37:13 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:31 +0200
Message-Id: <20200619103636.11974-32-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTURzu7D52Hc5u0/BYkTAwKdIye5wozCLoQBEFRVSk3fKm0qax66Mi
 yNKyqZOeVKtkrYdvV8vUllqzfJSm5ivNrMTsbS915CNr27X67/t9v+/j+36HwxCKd9QUJjIq
 htdEcSolLSOLqoYa/Lae+RwyN7ncBenqH0nQzXMmCv0uOkGg0rphKcr93gNQy+BXGiVeMdEo
 O7dSggz3lqAkvZFEAy3dEmTuaaNQs+UijdJu3KaQdkBPo/yHXVJ03TwqQdZvbyg0ZMkgg91x
 XkYewC/LH5C4zGYg8R19lxSbc7Q0Lra9pvC9S3lS/Cq1WoJvXT2IO8d6CHyqPRPgux0JNNYl
 fqFxemEOwP3m6esmbpEtDeNVkXG8Zk7QdllEY7qJ2PN24t6Ea1sTQIY8BbgwkJ0PR8qrCAdW
 sFkAllQsTgEyOx4AsFRbQItDP4Bd/b30X4e1oYEUF5kAGrNeUv8sNsMzqUNFswEwpS/F6fBg
 jwBYo3N1YIKtI2Hdz0AHdmc3w/bKDKeGZH3g49PPnV45GwTrTtooMc0b5t647+znYuc/JVmd
 YZDVMfCa9jwhilbCvtb0cYM7/FhdKBXxNFh7Ko0UDYkAdtfnS8UhDcDmw+eAqFoCX9QP22sw
 9nozockyR6SXw94Pl4GDhqwbbO+bJB7gBk8WnSVEWg6PHVWI6hlQX13wL9ba2DReDUPrC7NU
 fKATAF4Yy6aPA2/9/zADADnAk48V1OG8EBjFx/sLnFqIjQr33xmtNgP796sdqx4sAeWjOyoA
 ywClq/z9hk8hCoqLE/apKwBkCKWHfMWT2hCFPIzbt5/XRIdqYlW8UAGmMqTSUx5o/LBNwYZz
 Mfxunt/Da/5uJYzLlASgpvx2PbCcbZTp1QVGV595eE388EK685BHc8nU1oi1yyxar7vbwoN9
 Cze1GZMnPw0rM/lsDFzl9sq3Izp+UbH3+pEf+SqDvy1yacnl1b7xxE4utMmjJrZBLw/y+6U5
 PnvaggP1K8N+1zzSNSVVKVTR797mDXQLBZ9nefkcnpA6yBFKUojgAmYRGoH7A/SHOch6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBIsWRmVeSWpSXmKPExsVy+t/xe7pRU9/EGfR1G1n0njvJZLFxxnpW
 i//bJjJb7Dnzi91i9cfHjBZXvr5ns2hevJ7NYuXqo0wWC/ZbW7TMWsRi8eXKQyaLTY+vsVpc
 3jWHzaJnw1ZWi84vs9gs1h65y26xbNMfJouDH56wWvzcNY/FQdhjzbw1jB739h1m8dj7bQGL
 x85Zd9k9Nq3qZPPY/u0Bq8f+uWvYPe53H2fy2Lyk3uP2v8fMHpNvLGf02H2zgc2jt/kdm0ff
 llWMHp83yQXwR+nZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZpKTmZJal
 FunbJehlXOhbz1zwjL+iYWl0A+M83i5GTg4JAROJg+fPs4DYQgJLGSVOn/GAiMtInJzWwAph
 C0v8udbF1sXIBVTziVFi2YxtzCAJNgFDia63EAkRgU5GiWndH9lBHGaBGywSc7d8AHI4OIQF
 wiWmXXMCaWARUJU4NeUWO4jNK2AncWbSN6gN8hKrNxwAG8oJFH/dcpAV4iJbieUL3jNPYORb
 wMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzAWtx37uXkH46WNwYcYBTgYlXh4X4S8jhNi
 TSwrrsw9xCjBwawkwut09nScEG9KYmVValF+fFFpTmrxIUZToKMmMkuJJucD00ReSbyhqaG5
 haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQbG+EXGBwvK983/t677hEFoT4dW
 j0jMvrcd9zV2rCn6vHTTY6Mdq3TX6M724XY+blp5P6f2DZ+Of9pcxTsBc/o7TnmdZ1m4w1WO
 n4nz+wyNtxWfu7+FSN+yzVpwdN17v+LTD5MN7m+aueHlxLo0H5EnT9rjfuyvtb7arOysYKfp
 sWleUmn8rKynSizFGYmGWsxFxYkAiNRTk9sCAAA=
X-CMS-MailID: 20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa
X-Msg-Generator: CA
X-RootMTR: 20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103714eucas1p18db6efd1a380fc0bdb16174ee85036fa@eucas1p1.samsung.com>
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
Subject: [Linaro-mm-sig] [PATCH v7 31/36] staging: tegra-vde: fix common
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
