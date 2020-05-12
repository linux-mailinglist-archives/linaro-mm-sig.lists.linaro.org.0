Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C051CF1A4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:31:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C794D618C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:31:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B2E7F618EF; Tue, 12 May 2020 09:31:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0660A66240;
	Tue, 12 May 2020 09:06:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1762B65F8E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:06:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 085CF661C5; Tue, 12 May 2020 09:06:05 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id D333865F8E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:15 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090115euoutp02771ed5d7c16d4da7a81ee18bef4a796e~OPFnWNM6Q0453404534euoutp02I
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512090115euoutp02771ed5d7c16d4da7a81ee18bef4a796e~OPFnWNM6Q0453404534euoutp02I
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090114eucas1p18f62a8c09947ee8e7518fcc04562ff72~OPFm5tgtS1182811828eucas1p13;
 Tue, 12 May 2020 09:01:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 24.22.60679.AD56ABE5; Tue, 12
 May 2020 10:01:14 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090114eucas1p1917c16e0312cfb191f327e6dad2f7808~OPFmlxlpI1613916139eucas1p1Z;
 Tue, 12 May 2020 09:01:14 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512090114eusmtrp188a412e3f27d35f0c87dc9c1712c2b1b~OPFmlB6no0183401834eusmtrp1e;
 Tue, 12 May 2020 09:01:14 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-8f-5eba65da1b0d
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 74.F2.07950.AD56ABE5; Tue, 12
 May 2020 10:01:14 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090113eusmtip195756e507e8573b43228078f6551a4ff~OPFl8aBFV1352513525eusmtip1G;
 Tue, 12 May 2020 09:01:13 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:32 +0200
Message-Id: <20200512090058.14910-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGc2c60wGpjgXlBgVMEzSSyP4wCQTUGJ03MfHBkECtMBQCFNIB
 BF8kyKJlCUtkU7EWCLIUZBGwUJaylEIkCAQQJIBVIyBCBBEMQVsG5e0/3/3P/c+5uQQq7MPs
 iHBZLCOXSSJFuCWvZWBn5MIMowlyy1uwp7JGDAjVUFSPUX9aclFq4ucaTlXV9CPUk5wmhFJ2
 eVOV4/WA0r5AqM2JRYRqNE5i1LjmKU6p++b4VM/6J4zqKpnkXzxG15bWAlq7peTRZR1LCN26
 tYDRpYYb9HyGHqGbyu/Ts3tGlM6frgR0+/sknM5urgb0RqODv1WApU8IExkez8hdfW9bhrVV
 Z+MxY/YJhrV2LAkYoQJYEJD0gkW/slAFsCSE5EsAx9N7eVyxCWD/Si7GFRsArk9r+QpA7Lco
 O305Xglg4daPw47aymJgvhcn3aFiVYGbtQ2ZCuBglpXZhJJ9KBxTTu6brEl/WDb1bt/EI53g
 9ngBYtYC0hfW9n9FuAEdYc2rbtSsLUx8/vnufhokZ/iwpiGbz5muwKpnfTxOW8NlffMBPw2H
 8zMPGh4AuDii5nNFpmnV5CLAubzhh5HfuHk5lDwP6zWuHL4E976U49zOR+H06nEzRk0yr6UQ
 5bAAPkwTcu6zsERf9z+2Z3QM5TQNtVPJB8/YD2B67yCSAxxLDsOUAFQDWyaOjZIyrIeMuevC
 SqLYOJnUJTg6qhGY/tbwnn6zDWh27+gASQCRlcDN7U2QEJPEs4lROgAJVGQjSAk3IUGIJPEe
 I48Wy+MiGVYHThE8ka3AU7UUKCSlklgmgmFiGPm/U4SwsEsCoR8XsOs2dbK5q5Q4OHCWdjzT
 6aRaFn/bWeWL1alqCz3yOqPDeAKeMwQUD3ulND6KHz2pcu6aIQvCPMJaCwLeum77dpMbnyMu
 qz1Lb4VGRt88wiZIfRxWdMh3m8dDGj93VUWZXO5ncJ3gi4QqY9rOhDikuiI+6Jp7nW5oIFHE
 Y8Mk7s6onJX8BYgsda5XAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsVy+t/xu7q3UnfFGVz/wGHRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlnMnrCZyWLBfmuL5ZfXM1rsXchk8eXKQyaLTY+vsVpc3jWHzWLt
 kbvsFgc/PGG12D/rGrsDv8eaeWsYPfZ+W8DisXjPSyaP7d8esHrMOxnocb/7OJPH5iX1Hrf/
 PWb2mHxjOaPH7psNbB59W1YxenzeJBfAE6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
 bB5rZWSqpG9nk5Kak1mWWqRvl6CXsWNVH1vBJdmKk+93szYwPpboYuTgkBAwkViwz66LkYtD
 SGApo8T2Q1PYuhg5geIyEienNbBC2MISf651sUEUfWKU+HtiKSNIgk3AUKLrLURCRKCTUWJa
 90d2kASzwBlmid8bvEFsYQE/iVvfLoJNYhFQlfhxeRoTiM0rYCex5ugLJogN8hKrNxxgBrE5
 geL35/9hAbGFBAolHl19yzKBkW8BI8MqRpHU0uLc9NxiI73ixNzi0rx0veT83E2MwBjaduzn
 lh2MXe+CDzEKcDAq8fB2GO2ME2JNLCuuzD3EKMHBrCTC25IJFOJNSaysSi3Kjy8qzUktPsRo
 CnTURGYp0eR8YHznlcQbmhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpg
 DOy+NMU8vu9gdcX1xnNCN1dl6NpaTVD4yl10QWT+M90Ijeq/N9f+WFjlJRh8S8zAdOKLuQ+9
 2N+cFdssOGdu/F5/hf4fW02LFq7xd71/4tGn5qOqR2ceYnLyfvog54O3VFmPmtndzO/8Wfff
 1RZbZE41ityTvOuu/q6NR7kmxjqwOpxXYGWdr8RSnJFoqMVcVJwIAEw6RT63AgAA
X-CMS-MailID: 20200512090114eucas1p1917c16e0312cfb191f327e6dad2f7808
X-Msg-Generator: CA
X-RootMTR: 20200512090114eucas1p1917c16e0312cfb191f327e6dad2f7808
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090114eucas1p1917c16e0312cfb191f327e6dad2f7808
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090114eucas1p1917c16e0312cfb191f327e6dad2f7808@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 12/38] drm: i915: fix common struct
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
dW5jdGlvbi4KClRoaXMgZHJpdmVyIGNyZWF0aXZlbHkgdXNlcyBzZ190YWJsZS0+b3JpZ19uZW50
cyB0byBzdG9yZSB0aGUgc2l6ZSBvZiB0aGUKYWxsb2NhdGVkIHNjYXR0ZXJsaXN0IGFuZCBpZ25v
cmVzIHRoZSBudW1iZXIgb2YgdGhlIGVudHJpZXMgcmV0dXJuZWQgYnkKZG1hX21hcF9zZyBmdW5j
dGlvbi4gVGhlIHNnX3RhYmxlLT5vcmlnX25lbnRzIGlzIChtaXMpdXNlZCB0byBwcm9wZXJseQpm
cmVlIHRoZSAob3ZlcilhbGxvY2F0ZWQgc2NhdHRlcmxpc3QuCgpUaGlzIHBhdGNoIG9ubHkgaW50
cm9kdWNlcyB0aGUgY29tbW9uIERNQS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJhdGluZwpkaXJlY3Rs
eSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgdG8gdGhlIGRtYWJ1ZiByZWxhdGVkIGZ1
bmN0aW9ucywKc28gdGhlIG90aGVyIGRyaXZlcnMsIHdoaWNoIG1pZ2h0IHNoYXJlIGJ1ZmZlcnMg
d2l0aCBpOTE1IGNvdWxkIHJlbHkgb24KdGhlIHByb3Blcmx5IHNldCBuZW50cyBhbmQgb3JpZ19u
ZW50cyB2YWx1ZXMuCgpTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20+Ci0tLQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0ggdjQg
MDAvMzhdIERSTTogZml4IHN0cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1
c2UnIHRocmVhZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjAwNTEyMDg1
NzEwLjE0Njg4LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAgICAgIHwgMTEgKysrLS0tLS0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19kbWFidWYuYyB8ICA3ICsrKy0t
LS0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKaW5kZXggN2RiNWE3OS4u
NmM2NzgxMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Rt
YWJ1Zi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwpA
QCAtNDgsMTIgKzQ4LDkgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqaTkxNV9nZW1fbWFwX2Rt
YV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWUKIAkJc3JjID0gc2dfbmV4
dChzcmMpOwogCX0KIAotCWlmICghZG1hX21hcF9zZ19hdHRycyhhdHRhY2htZW50LT5kZXYsCi0J
CQkgICAgICBzdC0+c2dsLCBzdC0+bmVudHMsIGRpciwKLQkJCSAgICAgIERNQV9BVFRSX1NLSVBf
Q1BVX1NZTkMpKSB7Ci0JCXJldCA9IC1FTk9NRU07CisJcmV0ID0gZG1hX21hcF9zZ3RhYmxlKGF0
dGFjaG1lbnQtPmRldiwgc3QsIGRpciwgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CisJaWYgKHJl
dCkKIAkJZ290byBlcnJfZnJlZV9zZzsKLQl9CiAKIAlyZXR1cm4gc3Q7CiAKQEAgLTczLDkgKzcw
LDcgQEAgc3RhdGljIHZvaWQgaTkxNV9nZW1fdW5tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2htZW50LAogewogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmogPSBkbWFfYnVmX3RvX29iaihhdHRhY2htZW50LT5kbWFidWYpOwogCi0JZG1hX3VubWFwX3Nn
X2F0dHJzKGF0dGFjaG1lbnQtPmRldiwKLQkJCSAgIHNnLT5zZ2wsIHNnLT5uZW50cywgZGlyLAot
CQkJICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CisJZG1hX3VubWFwX3NndGFibGUoYXR0YWNo
bWVudC0+ZGV2LCBzZywgZGlyLCBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKIAlzZ19mcmVlX3Rh
YmxlKHNnKTsKIAlrZnJlZShzZyk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvbW9ja19kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9z
ZWxmdGVzdHMvbW9ja19kbWFidWYuYwppbmRleCBkZWJhZjdiLi5iZTMwYjI3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfZG1hYnVmLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jCkBAIC0yOCwx
MCArMjgsOSBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICptb2NrX21hcF9kbWFfYnVmKHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQsCiAJCXNnID0gc2dfbmV4dChzZyk7CiAJ
fQogCi0JaWYgKCFkbWFfbWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgc3QtPnNnbCwgc3QtPm5lbnRz
LCBkaXIpKSB7Ci0JCWVyciA9IC1FTk9NRU07CisJZXJyID0gZG1hX21hcF9zZ3RhYmxlKGF0dGFj
aG1lbnQtPmRldiwgc3QsIGRpciwgMCk7CisJaWYgKGVycikKIAkJZ290byBlcnJfc3Q7Ci0JfQog
CiAJcmV0dXJuIHN0OwogCkBAIC00Niw3ICs0NSw3IEBAIHN0YXRpYyB2b2lkIG1vY2tfdW5tYXBf
ZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50LAogCQkJICAgICAg
IHN0cnVjdCBzZ190YWJsZSAqc3QsCiAJCQkgICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24g
ZGlyKQogewotCWRtYV91bm1hcF9zZyhhdHRhY2htZW50LT5kZXYsIHN0LT5zZ2wsIHN0LT5uZW50
cywgZGlyKTsKKwlkbWFfdW5tYXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYsIHN0LCBkaXIsIDAp
OwogCXNnX2ZyZWVfdGFibGUoc3QpOwogCWtmcmVlKHN0KTsKIH0KLS0gCjEuOS4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
