Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6631CF18C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:26:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7361B617CF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:26:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6887F619AC; Tue, 12 May 2020 09:26:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DFCF6615F;
	Tue, 12 May 2020 09:05:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C07B760723
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:05:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ADBE8617CF; Tue, 12 May 2020 09:05:19 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 4BB7B65F8B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:13 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090112euoutp01144f687122e88c65a41e7833a793e064~OPFlA-jql2545625456euoutp013
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090112euoutp01144f687122e88c65a41e7833a793e064~OPFlA-jql2545625456euoutp013
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090112eucas1p1eb18e6c20979908e6df5e8226bc38088~OPFkwJScl2839628396eucas1p11;
 Tue, 12 May 2020 09:01:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 81.22.60679.8D56ABE5; Tue, 12
 May 2020 10:01:12 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200512090111eucas1p29897737c262b467437d0775204129105~OPFkWCLZc2661326613eucas1p2H;
 Tue, 12 May 2020 09:01:11 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090111eusmtrp1dd5fb260a663ad982dffc1f9cd3fd8c6~OPFkVRiI-0183401834eusmtrp1a;
 Tue, 12 May 2020 09:01:11 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-81-5eba65d800c5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C1.F2.07950.7D56ABE5; Tue, 12
 May 2020 10:01:11 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090111eusmtip1b579dc79f082a6a20cf154deaa0a4ee2~OPFjzDv8c1352813528eusmtip1D;
 Tue, 12 May 2020 09:01:11 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:28 +0200
Message-Id: <20200512090058.14910-8-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTURTN60ynA1IcC8oTcJuoURLZ9GMMiooYxuCG0R+NYJEJixSwZRF/
 aFhldUEUUJAQDbtstUgNkTZSBBIQ2YqyBvwArUhZ3AjYYYr+nXvuWW5eHo6Iavi2eHBYJCMN
 E4eSmDmq1P7q2qdjVL7OBh1KZXa28aja3Go+taK8h1C9CzMYVVbRwqOK3rhR873jPKpuop9P
 9aieYJQmpwlQVW+HBZT6+yT/qAVdWVgJ6J7+boRuWixC6YbFMT49mt7Ko+ufxdGflicQOltX
 AujXg3KMzlKUA3qubuu5dZfMDwUwocHRjNTJ/ap5kEJNR6RvvllYoOTLwaB1GjDDIXEAfl5e
 EaQBc1xElAL4QzeBccM8gMNf80zDHIBThQbBmkWzNIqyWESUAKhXenLY6LiTGcRijHCBafo0
 jMXWRBKA7zIt2CCEaObB5G9feOzCijgPa0Z6ERajxC44mfpwNVRIHIZ/CtQ8rmwbrKhpXtWY
 Ee5w9OkSygZBQiWAfS9/YpzIE44pU0wGKzjdqjBdag87sjNMhgQAxzurBNyQAWBPfC7gVG5w
 qPO3MQk33rcXVqucOPoYnCgeQVkaEpZQp9/A0ogR3lc+QjhaCG8nizj1bpjf+uJfrfr9B4TD
 NEyZaTG9YguA8swZ7C7Ylv+/rAiAcmDDRMkkgYzMNYyJcZSJJbKosEDHa+GSOmD8Rx3LrfOv
 gGrJXwMIHJAWQmfnRl8RXxwti5VoAMQR0lqYGGykhAHi2FuMNNxPGhXKyDTADkdJG+H+4qkr
 IiJQHMlcZ5gIRrq25eFmtnJwYksWqelebyg9u8ePOkXOlg7Ynyw+kpftkRLiGz8d19ymnskh
 Aga8yBsHg7XHyz0s/c/otR8vPM7qSHSNuTylbX/e2/7AO2Fnbqpddl+yx4iI3Nig8Fm42NXv
 byOoXwnR1hoaDTZ1SWVDVV6nRyVBVJvYp9xhuyiE3uS9o2i2gkRlQWIXB0QqE/8Fn/EWxkMD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xu7rXU3fFGbz+pG/Re+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzeLQ1L2MFmuP3GW3OPjhCasD
 j8eaeWsYPS5fu8jssffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJBXBH6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW6dsl
 6GVsOehR0C1ZMW/uNtYGxpsiXYycHBICJhKH/txn6WLk4hASWMooMe/mOSaIhIzEyWkNrBC2
 sMSfa11sEEWfGCUOHGtlAUmwCRhKdL2FSIgIdDJKTOv+yA7iMAscY5JY+OsjWJWwQIDEyWMX
 GUFsFgFViSed08DivAK2Er/nHoRaJy+xesMBZhCbU8BO4v78P2A1QgKFEo+uvmWZwMi3gJFh
 FaNIamlxbnpusZFecWJucWleul5yfu4mRmCEbDv2c8sOxq53wYcYBTgYlXh4O4x2xgmxJpYV
 V+YeYpTgYFYS4W3JBArxpiRWVqUW5ccXleakFh9iNAU6aiKzlGhyPjB680riDU0NzS0sDc2N
 zY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MNrdPtNRvMnzXfWcR1E3LBv5Vj6aNPd2
 jOkd/ql2W1hu33kskfHG0dz/ftDhycJ9yyObi/llrA2XPU7j/Clp81PK/4bDqVDNDRa6U3Li
 E1P1JfsffZ91s3f60YK9PZGved/N3fJNk3s68+6eE7+sjIyijihy6X26l1W77tZtl+quexJ8
 /FEv45VYijMSDbWYi4oTAfQLZTmmAgAA
X-CMS-MailID: 20200512090111eucas1p29897737c262b467437d0775204129105
X-Msg-Generator: CA
X-RootMTR: 20200512090111eucas1p29897737c262b467437d0775204129105
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090111eucas1p29897737c262b467437d0775204129105
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090111eucas1p29897737c262b467437d0775204129105@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Russell King <linux@armlinux.org.uk>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 08/38] drm: armada: fix common struct
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
cml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFkYV9nZW0uYyB8IDEyICsrKysrKy0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFkYV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9h
cm1hZGEvYXJtYWRhX2dlbS5jCmluZGV4IDk3NjY4NWYuLjBkNjFkYTUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9hcm1hZGEvYXJtYWRhX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
cm1hZGEvYXJtYWRhX2dlbS5jCkBAIC0zOTUsNyArMzk1LDcgQEAgaW50IGFybWFkYV9nZW1fcHdy
aXRlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAKIAkJbWFwcGlu
ZyA9IGRvYmotPm9iai5maWxwLT5mX21hcHBpbmc7CiAKLQkJZm9yX2VhY2hfc2coc2d0LT5zZ2ws
IHNnLCBjb3VudCwgaSkgeworCQlmb3JfZWFjaF9zZ3RhYmxlX3NnKHNndCwgc2csIGkpIHsKIAkJ
CXN0cnVjdCBwYWdlICpwYWdlOwogCiAJCQlwYWdlID0gc2htZW1fcmVhZF9tYXBwaW5nX3BhZ2Uo
bWFwcGluZywgaSk7CkBAIC00MDcsOCArNDA3LDggQEAgaW50IGFybWFkYV9nZW1fcHdyaXRlX2lv
Y3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCQlzZ19zZXRfcGFnZShz
ZywgcGFnZSwgUEFHRV9TSVpFLCAwKTsKIAkJfQogCi0JCWlmIChkbWFfbWFwX3NnKGF0dGFjaC0+
ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyKSA9PSAwKSB7Ci0JCQludW0gPSBzZ3QtPm5l
bnRzOworCQlpZiAoZG1hX21hcF9zZ3RhYmxlKGF0dGFjaC0+ZGV2LCBzZ3QsIGRpciwgMCkpIHsK
KwkJCW51bSA9IGNvdW50OwogCQkJZ290byByZWxlYXNlOwogCQl9CiAJfSBlbHNlIGlmIChkb2Jq
LT5wYWdlKSB7CkBAIC00MTgsNyArNDE4LDcgQEAgaW50IGFybWFkYV9nZW1fcHdyaXRlX2lvY3Rs
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAKIAkJc2dfc2V0X3BhZ2Uoc2d0
LT5zZ2wsIGRvYmotPnBhZ2UsIGRvYmotPm9iai5zaXplLCAwKTsKIAotCQlpZiAoZG1hX21hcF9z
ZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRpcikgPT0gMCkKKwkJaWYgKGRt
YV9tYXBfc2d0YWJsZShhdHRhY2gtPmRldiwgc2d0LCBkaXIsIDApKQogCQkJZ290byBmcmVlX3Rh
YmxlOwogCX0gZWxzZSBpZiAoZG9iai0+bGluZWFyKSB7CiAJCS8qIFNpbmdsZSBjb250aWd1b3Vz
IHBoeXNpY2FsIHJlZ2lvbiAtIG5vIHN0cnVjdCBwYWdlICovCkBAIC00NDksMTEgKzQ0OSwxMSBA
QCBzdGF0aWMgdm9pZCBhcm1hZGFfZ2VtX3ByaW1lX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNoLAogCWludCBpOwogCiAJaWYgKCFkb2JqLT5saW5lYXIpCi0J
CWRtYV91bm1hcF9zZyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGRpcik7CisJ
CWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFjaC0+ZGV2LCBzZ3QsIGRpciwgMCk7CiAKIAlpZiAoZG9i
ai0+b2JqLmZpbHApIHsKIAkJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsKLQkJZm9yX2VhY2hfc2co
c2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBpKQorCQlmb3JfZWFjaF9zZ3RhYmxlX3NnKHNndCwg
c2csIGkpCiAJCQlwdXRfcGFnZShzZ19wYWdlKHNnKSk7CiAJfQogCi0tIAoxLjkuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
