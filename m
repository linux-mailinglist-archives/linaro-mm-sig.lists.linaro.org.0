Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E31F91CF1EF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:49:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13AA060723
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:49:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 054F161734; Tue, 12 May 2020 09:49:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D13765FA5;
	Tue, 12 May 2020 09:08:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CF20365FA4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:08:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C362265FA6; Tue, 12 May 2020 09:08:02 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 4881C65FAB
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:30 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090129euoutp011df2452f7b42ac8d7b3decde10128297~OPF0yR6W-2629726297euoutp01n
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090129euoutp011df2452f7b42ac8d7b3decde10128297~OPF0yR6W-2629726297euoutp01n
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200512090129eucas1p24cc34b311be1ae013d327669187046bb~OPF0f_jp-2660626606eucas1p2j;
 Tue, 12 May 2020 09:01:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id D7.32.60679.9E56ABE5; Tue, 12
 May 2020 10:01:29 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090128eucas1p11ee8a5e72ca37dc6b3e8a07ea094bab6~OPF0Dgdh-0904609046eucas1p1B;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090128eusmtrp2067652dfbf86e4fac8989d6cb30584c6~OPF0CF46z0472504725eusmtrp2c;
 Tue, 12 May 2020 09:01:28 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-dc-5eba65e994db
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D0.55.08375.8E56ABE5; Tue, 12
 May 2020 10:01:28 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090128eusmtip162274653ef501091a87861f9e14ac8b1~OPFzbUefC1257212572eusmtip1y;
 Tue, 12 May 2020 09:01:27 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:55 +0200
Message-Id: <20200512090058.14910-35-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeUgUURzm7ezMjuLauBq+zLKWihTStaIGDCkSnChQAqOErDEnlbzYUcsQ
 2tQs1qPUQrPQRbT1Nm93vfJWrK1cC0/UTMFzpVW7PNp1rP77jt/3vvd7PBwR1aM2eGBIOCMN
 oYPEmCm/pvOn5sgMo/aRKNJxMknTwyO/FA4gZHlGGUpu1qQgZP+KDiMLijp4pKLZhVzun+CR
 FZOfUVKrfomRJe2jAvLZ++8I2bL0FT0tpIqzigHVuKrgU6rMUQGVOB+HUrWr4yg1ltDFoypz
 71HDG5MIlTagBFT9oAyjkqsKAaWv2Otp5m16yo8JCoxkpE6u100DviV0oGFrlneqK9sEMjBI
 yIEJDonjsHY8F8iBKS4i8gHUlw8JOLIM4POGLIwjegBrtcPgb2SgLQfhDCWAyrxUntHYikwv
 IUaMEc5QviDHjNiKeABgd5KZESPEIg+26x2M2JK4AOdn07ayfOIg7CuY3CoQEq6wOnYS5crs
 YNHrN1tnmhj0sew1vrEYEhoBVMm1Am7IDc5qBjEOW8LZrqpt3RZuqrJ5XCAWwAlNiYAjiQBq
 YzK293GBI5pfhjRuuJ49LFM7cfIZ2PnqPjDKkDCHAwsW3ALmMLUmHeFkIXwUL+KmD8HMrtJ/
 tS0f+hAOU/BjU8P2K3YAmDsyJXgC7DL/lykAKATWTAQb7M+wR0OY244sHcxGhPg73ggNrgCG
 L9W70bVcB9Rrvq2AwIHYTCiRqHxEKB3JRgW3AogjYithXKBBEvrRUXcZaeg1aUQQw7aC3Thf
 bC08ljNzVUT40+HMLYYJY6R/XR5uYiMDT5eGJLqTM7E7Ljfr3ao9vKxjg/YkF8XnelmWeujm
 8nRYvoU3veh7+K2mMbpb53Bp2qbUf5fzi3SvAzNVP+ZOjO+0nc7pAVptjOTTys397Hrnxd8j
 nXGDqizbqboI+17Ppnf6qr5Gdyt3W6XTuX3rKVdWz8rIx+c3oj0fKumygkAxnw2gnR0QKUv/
 AXRmaSZOAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xu7ovUnfFGSxs07DoPXeSyeLRqhvM
 FhtnrGe1+L9tIrPFla/v2SxWrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbTD3/ndni
 4IcnrA68HmvmrWH02PttAYvHzll32T163rSwemz/9oDV4373cSaPzUvqPW7/e8zsMfnGckaP
 3Tcb2Dz6tqxi9Pi8SS6AJ0rPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/O
 JiU1J7MstUjfLkEv41P3UdaCP8IVWzcfZm9gvCnQxcjJISFgInHj8CLmLkYuDiGBpYwSy74s
 ZIRIyEicnNbACmELS/y51sUGUfSJUWLh7WVMIAk2AUOJrrcQCRGBTkaJad0f2UEcZoFvTBKT
 lt5iA6kSFvCRePNqMlgHi4CqxKWVj8FW8ArYSWxtfgy1Ql5i9YYDzCA2J1D8/vw/LCC2kECh
 xKOrb1kmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERg324793LyD8dLG4EOMAhyM
 Sjy8HUY744RYE8uKK3MPMUpwMCuJ8LZkAoV4UxIrq1KL8uOLSnNSiw8xmgIdNZFZSjQ5HxjT
 eSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGCuqJl6ZsD4idLut
 8wIfm538E1b6vdabIryozena/8pd/m2ro6Zrf7m15+yW5wcnulnaNc16lP3twQq3ph+Jb4S+
 +cz2XmzZcCLTYdq96PPqAX9/nLdf96Pn8fc/Qnk65d+eTDao2ODA1By069mxHTK7ywJUPzdV
 dWR+OFUkwl992uzzkbn/5W8psRRnJBpqMRcVJwIAQ0ag5LECAAA=
X-CMS-MailID: 20200512090128eucas1p11ee8a5e72ca37dc6b3e8a07ea094bab6
X-Msg-Generator: CA
X-RootMTR: 20200512090128eucas1p11ee8a5e72ca37dc6b3e8a07ea094bab6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090128eucas1p11ee8a5e72ca37dc6b3e8a07ea094bab6
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090128eucas1p11ee8a5e72ca37dc6b3e8a07ea094bab6@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 35/38] rapidio: fix common struct
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
cml2ZXJzL3JhcGlkaW8vZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5jIHwgOCArKystLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3JhcGlkaW8vZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5jIGIvZHJpdmVycy9yYXBp
ZGlvL2RldmljZXMvcmlvX21wb3J0X2NkZXYuYwppbmRleCA0MDI5NjM3Li5kZjdkYmE4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL3JhcGlkaW8vZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5jCisrKyBiL2Ry
aXZlcnMvcmFwaWRpby9kZXZpY2VzL3Jpb19tcG9ydF9jZGV2LmMKQEAgLTU3NCw4ICs1NzQsNyBA
QCBzdGF0aWMgdm9pZCBkbWFfcmVxX2ZyZWUoc3RydWN0IGtyZWYgKnJlZikKIAlzdHJ1Y3QgbXBv
cnRfY2Rldl9wcml2ICpwcml2ID0gcmVxLT5wcml2OwogCXVuc2lnbmVkIGludCBpOwogCi0JZG1h
X3VubWFwX3NnKHJlcS0+ZG1hY2gtPmRldmljZS0+ZGV2LAotCQkgICAgIHJlcS0+c2d0LnNnbCwg
cmVxLT5zZ3QubmVudHMsIHJlcS0+ZGlyKTsKKwlkbWFfdW5tYXBfc2d0YWJsZShyZXEtPmRtYWNo
LT5kZXZpY2UtPmRldiwgcmVxLT5zZ3QsIHJlcS0+ZGlyKTsKIAlzZ19mcmVlX3RhYmxlKCZyZXEt
PnNndCk7CiAJaWYgKHJlcS0+cGFnZV9saXN0KSB7CiAJCWZvciAoaSA9IDA7IGkgPCByZXEtPm5y
X3BhZ2VzOyBpKyspCkBAIC05MjcsOSArOTI2LDggQEAgc3RhdGljIGludCBkb19kbWFfcmVxdWVz
dChzdHJ1Y3QgbXBvcnRfZG1hX3JlcSAqcmVxLAogCQkJCXhmZXItPm9mZnNldCwgeGZlci0+bGVu
Z3RoKTsKIAl9CiAKLQluZW50cyA9IGRtYV9tYXBfc2coY2hhbi0+ZGV2aWNlLT5kZXYsCi0JCQkg
ICByZXEtPnNndC5zZ2wsIHJlcS0+c2d0Lm5lbnRzLCBkaXIpOwotCWlmIChuZW50cyA9PSAwKSB7
CisJcmV0ID0gZG1hX21hcF9zZ3RhYmxlKGNoYW4tPmRldmljZS0+ZGV2LCByZXEtPnNndCwgZGly
KTsKKwlpZiAocmV0KSB7CiAJCXJtY2RfZXJyb3IoIkZhaWxlZCB0byBtYXAgU0cgbGlzdCIpOwog
CQlyZXQgPSAtRUZBVUxUOwogCQlnb3RvIGVycl9wZzsKLS0gCjEuOS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
