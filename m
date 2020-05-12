Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C3E1CF1AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:35:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2018C61892
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:35:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 093B2619D7; Tue, 12 May 2020 09:35:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 513AE664F5;
	Tue, 12 May 2020 09:06:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 03467664EC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:06:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E04FD664F9; Tue, 12 May 2020 09:06:40 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id C678C65F99
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:19 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512090119euoutp01e7a2d23567151f13b226d694b816271a~OPFrEiHp-2637026370euoutp01H
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512090119euoutp01e7a2d23567151f13b226d694b816271a~OPFrEiHp-2637026370euoutp01H
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512090118eucas1p10de5c1a4a70372d2058690c63cc2738c~OPFq3D4_41182411824eucas1p12;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id DF.6B.60698.ED56ABE5; Tue, 12
 May 2020 10:01:18 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090118eucas1p19ed5cf76c6e1e3f3bcaaefaeff7cf333~OPFqinEWG0415004150eucas1p1L;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512090118eusmtrp2f0d9fe44b6c2ea76935a6c072543a0e3~OPFqhKYiL0472704727eusmtrp2I;
 Tue, 12 May 2020 09:01:18 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-2d-5eba65de7321
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 92.45.08375.ED56ABE5; Tue, 12
 May 2020 10:01:18 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512090117eusmtip15bc9b1cbe9c7e8c73834f2e16cc5dfd1~OPFp1HpU90969509695eusmtip1Y;
 Tue, 12 May 2020 09:01:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue, 12 May 2020 11:00:39 +0200
Message-Id: <20200512090058.14910-19-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0gTcRznd3e73ZaLayn+socxSUrylRUXlj2IuMg/CiS0h7XyMMmt2Pks
 M8vS+U6DEgsfQ9Sm05pi29LSoWkJy+YDxXyhIQaSpU4N0Xae2X+fx/fzffz4EajUJHAhIpRR
 jEopj5ThYqz+46LFc4gxhfrMZ/tQWZZPCPUmv0ZArdTnolT33E+celXZilDFH/yp2e5RhNKP
 9QqoLtNLnNK1DAqplQaDkGqeHhdQ2TorfkxCVxVWAdowWAroRlsxRuu1aTj91jYioIcz2hC6
 tvQ+PbA8htJP+8oB/a4/Caez67SAntHvOOtwQXw4jImMiGFU3gFXxTcKe8z4beuWuJVWszAJ
 NDqlAxEByf0wre43ng7EhJSsALCk+ssamQXwQUaVkCczAC7k5NkJsRrRacRcWkqWA5ilubQe
 KKtU45yBk74wfSp9FTuSjwFsz3LgilByHIF9CzoBZ2wmg+Cy8RnCNcXIXVC3FMLJEjIA9mZW
 oPx6rrDyddMqFtn14aIljOsDyc9C2Dmjxviik9DW0Qt4vBn+aKsT8ngbXDEWIXwgGcBRi07I
 k0wAux7mryX84TfLH5zbAiX3wBqTNy8fh+OTUxh/8UbYN7WJk1E7zKt/jvKyBKpTpHy1Oyxo
 q14f29xpXdufhhMGE8I/UCuAttRB8AS4FvwfVgyAFjgz0awinGH9lEysFytXsNHKcK/rtxR6
 YP9RHcttcwbwfumaGZAEkDlI1PuMoVKBPIaNV5gBJFCZo+RRhF2ShMnj7zCqW1dU0ZEMawZb
 CUzmLPHTTF6WkuHyKOYmw9xmVP9chBC5JAHP+aPt253KbJn3EtKCk7GWwODEroCPh16UJZpz
 4nwOnjuf4DI+Mpryq9ytmFxGayxKbYf6693cA0fU7iV077DbXqslxOn0wPcTOQ0vNBO7L0fE
 Gh011hLPfuMpTaBotDZ4ulHbM2TR72zuDj0r8myYPcMupgXrNlz0CDKkNukUMoy9Iff1QFWs
 /C/SNyZrTQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprNIsWRmVeSWpSXmKPExsVy+t/xu7r3UnfFGdz9JWbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFv/37GC3OPjhCatF
 39pLbA68HmvmrWH02HF3CaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexryrh9gKLklW/D96iL2Bca9oFyMHh4SAicTaRVxdjFwcQgJLGSU6pnQz
 dzFyAsVlJE5Oa2CFsIUl/lzrYoMo+sQocb3zG1gRm4ChRNdbiISIQCejxLTuj+wgCWaBN0wS
 l65GgNjCAkES7/+cZQbZxiKgKrH2TyRImFfATuJazwqoZfISqzccALM5geL35/9hAbGFBAol
 Hl19yzKBkW8BI8MqRpHU0uLc9NxiQ73ixNzi0rx0veT83E2MwIjZduzn5h2MlzYGH2IU4GBU
 4uHtMNoZJ8SaWFZcmXuIUYKDWUmEtyUTKMSbklhZlVqUH19UmpNafIjRFOimicxSosn5wGjO
 K4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAKMS1fGXRx6c/g7c9
 vXlih26t06GavJDIwrtfw4vPbI5Kj5RieRsiw8u75dB6US2xu2vUOd9JcnWFcXr7fvkVdeVb
 993r/SdqF1gsODHx1rPtyRPSPdtTrbg0N2zfJq93+uXOdy/DfKI71bS1Q/85z3N9N3lPYvcy
 qblN5jNP80wsOhN3pVI4S4mlOCPRUIu5qDgRAKJEFoiuAgAA
X-CMS-MailID: 20200512090118eucas1p19ed5cf76c6e1e3f3bcaaefaeff7cf333
X-Msg-Generator: CA
X-RootMTR: 20200512090118eucas1p19ed5cf76c6e1e3f3bcaaefaeff7cf333
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090118eucas1p19ed5cf76c6e1e3f3bcaaefaeff7cf333
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090118eucas1p19ed5cf76c6e1e3f3bcaaefaeff7cf333@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v4 19/38] drm: panfrost: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IFN0ZXZlbiBQcmljZSA8c3Rl
dmVuLnByaWNlQGFybS5jb20+Ci0tLQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0gg
djQgMDAvMzhdIERSTTogZml4IHN0cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBt
aXN1c2UnIHRocmVhZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjAwNTEy
MDg1NzEwLjE0Njg4LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCi0tLQogZHJpdmVycy9n
cHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2dlbS5jIHwgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0v
cGFuZnJvc3QvcGFuZnJvc3RfbW11LmMgfCA3ICsrKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9wYW5mcm9zdC9wYW5mcm9zdF9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5m
cm9zdF9nZW0uYwppbmRleCAxN2I2NTRlLi42Njk2MzA0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZy
b3N0L3BhbmZyb3N0X2dlbS5jCkBAIC00MSw4ICs0MSw4IEBAIHN0YXRpYyB2b2lkIHBhbmZyb3N0
X2dlbV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikKIAogCQlmb3IgKGkg
PSAwOyBpIDwgbl9zZ3Q7IGkrKykgewogCQkJaWYgKGJvLT5zZ3RzW2ldLnNnbCkgewotCQkJCWRt
YV91bm1hcF9zZyhwZmRldi0+ZGV2LCBiby0+c2d0c1tpXS5zZ2wsCi0JCQkJCSAgICAgYm8tPnNn
dHNbaV0ubmVudHMsIERNQV9CSURJUkVDVElPTkFMKTsKKwkJCQlkbWFfdW5tYXBfc2d0YWJsZShw
ZmRldi0+ZGV2LCAmYm8tPnNndHNbaV0sCisJCQkJCQkgIERNQV9CSURJUkVDVElPTkFMLCAwKTsK
IAkJCQlzZ19mcmVlX3RhYmxlKCZiby0+c2d0c1tpXSk7CiAJCQl9CiAJCX0KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9tbXUuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9wYW5mcm9zdC9wYW5mcm9zdF9tbXUuYwppbmRleCBlZDI4YWViLi5lYjI1NTBlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfbW11LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X21tdS5jCkBAIC0yNTMsNyArMjUzLDcgQEAgc3Rh
dGljIGludCBtbXVfbWFwX3NnKHN0cnVjdCBwYW5mcm9zdF9kZXZpY2UgKnBmZGV2LCBzdHJ1Y3Qg
cGFuZnJvc3RfbW11ICptbXUsCiAJc3RydWN0IGlvX3BndGFibGVfb3BzICpvcHMgPSBtbXUtPnBn
dGJsX29wczsKIAl1NjQgc3RhcnRfaW92YSA9IGlvdmE7CiAKLQlmb3JfZWFjaF9zZyhzZ3QtPnNn
bCwgc2dsLCBzZ3QtPm5lbnRzLCBjb3VudCkgeworCWZvcl9lYWNoX3NndGFibGVfZG1hX3NnKHNn
dCwgc2dsLCBjb3VudCkgewogCQl1bnNpZ25lZCBsb25nIHBhZGRyID0gc2dfZG1hX2FkZHJlc3Mo
c2dsKTsKIAkJc2l6ZV90IGxlbiA9IHNnX2RtYV9sZW4oc2dsKTsKIApAQCAtNTE3LDEwICs1MTcs
OSBAQCBzdGF0aWMgaW50IHBhbmZyb3N0X21tdV9tYXBfZmF1bHRfYWRkcihzdHJ1Y3QgcGFuZnJv
c3RfZGV2aWNlICpwZmRldiwgaW50IGFzLAogCWlmIChyZXQpCiAJCWdvdG8gZXJyX3BhZ2VzOwog
Ci0JaWYgKCFkbWFfbWFwX3NnKHBmZGV2LT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBETUFf
QklESVJFQ1RJT05BTCkpIHsKLQkJcmV0ID0gLUVJTlZBTDsKKwlyZXQgPSBkbWFfbWFwX3NndGFi
bGUocGZkZXYtPmRldiwgc2d0LCBETUFfQklESVJFQ1RJT05BTCwgMCk7CisJaWYgKHJldCkKIAkJ
Z290byBlcnJfbWFwOwotCX0KIAogCW1tdV9tYXBfc2cocGZkZXYsIGJvbWFwcGluZy0+bW11LCBh
ZGRyLAogCQkgICBJT01NVV9XUklURSB8IElPTU1VX1JFQUQgfCBJT01NVV9OT0VYRUMsIHNndCk7
Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
