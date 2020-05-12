Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDE91CFF59
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 22:35:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FE1665F81
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 20:35:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 531AE65F7F; Tue, 12 May 2020 20:35:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8C46619F3;
	Tue, 12 May 2020 20:34:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A0135619DA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 20:33:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 82309619F3; Tue, 12 May 2020 20:33:58 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 76640619DA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 20:33:56 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512203355euoutp02f0469c13e411d12815c518b29abe1bcf~OYiZVj35E2322723227euoutp02-
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 20:33:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512203355euoutp02f0469c13e411d12815c518b29abe1bcf~OYiZVj35E2322723227euoutp02-
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512203354eucas1p1ccad241d082e172806147e8051ca5cd5~OYiY_s_Nd1765817658eucas1p1P;
 Tue, 12 May 2020 20:33:54 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 59.BC.60679.2380BBE5; Tue, 12
 May 2020 21:33:54 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512203354eucas1p1ec0713551239b5437374232a3558db8e~OYiYXwwvs1766317663eucas1p1P;
 Tue, 12 May 2020 20:33:54 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512203354eusmtrp29c5130625112f643794304998f69d654~OYiYXBRxv1599815998eusmtrp2e;
 Tue, 12 May 2020 20:33:54 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-4a-5ebb08320b1c
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C1.CA.07950.2380BBE5; Tue, 12
 May 2020 21:33:54 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200512203353eusmtip24e27fc61e27b356e67372df3a9c99d61~OYiXny--L2981929819eusmtip2U;
 Tue, 12 May 2020 20:33:53 +0000 (GMT)
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <f6242137-82a5-0e33-f1a2-9e73dc679aa9@samsung.com>
Date: Tue, 12 May 2020 22:33:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E8663010E210FAC@FMSMSX108.amr.corp.intel.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfyyUcRzu+773vveSs9fRfCax3cqWLUVt3k2MVdvbVqv80aaNOnmHdYfu
 TaoxJpOOykjpRpRWuejH3XGclu6K82NJkemHJP4hxjiWH5HzUv57nufzfPY8n+1D4dJpwoOK
 TzjHqRLkChnpKKptnu3YEUA1RO1qMQUw1zpaMeZF8TOC6Z4eJ5nKJ00Y8+FOn4gpbwxibN0D
 GKMb7CGYLlMJyeQ9ryGYh7oFjOk0+jI3x2bFjHliiAh1ZqvuViG24uUwxuq0V0nWOPODYPtz
 rRirf5DOfl0cxNnC3keIbficQbKDc8Mke92gReyUzottm54SH5WccNwbwyniz3OqnSGnHONs
 83lYUrbnheq+ESwD9burkQMF9B54YnlLqJEjJaUfIzCPvhELxIbgxuRTkUCmEEzO3EZrK9nW
 biQMHiH4dGUeE8g4glaDHre7XOljMJKlwe0DN7oZg/HK+pUUnK7CYWEhR2x3kbQ/qMfUpB1L
 6BBo1WZidiyit8FMftZK3iY6Etor9EjwuEDrnaHlUhTlQB+HUutWu4zT3mAcK8EF7A5fhspW
 GgF9j4Lq0pbV3vvhVV0lLmBXGLEaxAL2hKX6tYXLCAY6qsUCyUPQlVm8uh0E3zrmSHsyTm+H
 Z6adghwGXbYiZJeBdobeMRehhDMU1N7GBVkCOdlSwe0DGuvTf7Hmzo94PpJp1l2mWXeOZt05
 mv+55UikRe5cMq+M5fiABC7Fj5cr+eSEWL/TiUodWn7G9kWrrQ6ZFqItiKaQzEmyIc0UJSXk
 5/mLSgsCCpe5SbLi66Okkhj5xUucKvGkKlnB8Ra0mRLJ3CW77w9HSulY+TnuDMclcaq1KUY5
 eGSgjepRW2TBUE9RRFqToiLcwdu7SrNvafBgdPCFI301KRNMRHpgoVvw218DE8bG6iUy8efI
 w67MTB8o2NSGDvncsp5Ujr82O2FlltCfWmNKcUiua07YaPiB1KQ5Zb8uderPluzD/LvK3zFG
 17NcbmnScAthVrw/Thi8sgK/6zkvmYiPk/v74ipe/hdBiun/iAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpnleLIzCtJLcpLzFFi42I5/e/4PV0jjt1xBrtmcFv0njvJZLFxxnpW
 iytf37NZrFx9lMni4sy7LBYL9ltbfLnykMli0+NrrBaXd81hs+jZsJXVYtmmP0wWF7ZrWUx5
 +5Pd4uCHJ6wOfB5r5q1h9Fi85yWTx6ZVnWwe2789YPW4332cyWPzknqP2/8eM3tMvrGc0WP3
 zQY2j8e/XrJ59G1ZxejxeZOcx6mvn9kDeKP0bIryS0tSFTLyi0tslaINLYz0DC0t9IxMLPUM
 jc1jrYxMlfTtbFJSczLLUov07RL0Mr787mEqaJOpWHv3FVMD433xLkZODgkBE4m241cYuxi5
 OIQEljJK3NyzmBkiISNxcloDK4QtLPHnWhcbRNFbRomvDZvBioQFAiVetcxiBkmICBxjktjR
 9owJxGEWWMcs8b3xOTtEC1DmxfufjCAtbAKGEl1vQWZxcvAK2EmcXNXEBGKzCKhKfJvQAlYj
 KhArsfpaKyNEjaDEyZlPWLoYOTg4BcIk5h5XAQkzC5hJzNv8kBnClpfY/nYOlC0ucevJfKYJ
 jEKzkHTPQtIyC0nLLCQtCxhZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgQmgm3Hfm7Zwdj1
 LvgQowAHoxIPb0T9rjgh1sSy4srcQ4wSHMxKIrwtmTvjhHhTEiurUovy44tKc1KLDzGaAv02
 kVlKNDkfmKTySuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwNm3l
 /NjmYWpvPWe3RtE5l5/PXaMSlHe8Phi5QIVHqIbh8jrPgDxGLr6C913Plnx3yQl9VauyYyHj
 D+bN7+Zt4F0qO1H1z4pGNb22+tTbRpzzV06dp7Zg+96NE668PJztt8Vc6/qyzusMWU97LRbc
 vf1BI87IPinqQOMTUfld7lxpaddntH+bocRSnJFoqMVcVJwIAH0Po9kaAwAA
X-CMS-MailID: 20200512203354eucas1p1ec0713551239b5437374232a3558db8e
X-Msg-Generator: CA
X-RootMTR: 20200512090130eucas1p2eb86c5d34be56bbc81032bc0b6927d1e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090130eucas1p2eb86c5d34be56bbc81032bc0b6927d1e
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090130eucas1p2eb86c5d34be56bbc81032bc0b6927d1e@eucas1p2.samsung.com>
 <20200512090058.14910-38-m.szyprowski@samsung.com>
 <14063C7AD467DE4B82DEDB5C278E8663010E210FAC@FMSMSX108.amr.corp.intel.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Pawel Osciak <pawel@osciak.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v4 38/38] videobuf2: use sgtable-based
 scatterlist wrappers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkgTWljaGFlbCwKCk9uIDEyLjA1LjIwMjAgMTk6NTIsIFJ1aGwsIE1pY2hhZWwgSiB3cm90ZToK
Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogZHJpLWRldmVsIDxkcmktZGV2
ZWwtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZgo+PiBNYXJlayBT
enlwcm93c2tpCj4+IFNlbnQ6IFR1ZXNkYXksIE1heSAxMiwgMjAyMCA1OjAxIEFNCj4+IFRvOiBk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpb21tdUBsaXN0cy5saW51eC1mb3VuZGF0
aW9uLm9yZzsKPj4gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnOyBsaW51eC1rZXJuZWxA
dmdlci5rZXJuZWwub3JnCj4+IENjOiBQYXdlbCBPc2NpYWsgPHBhd2VsQG9zY2lhay5jb20+OyBC
YXJ0bG9taWVqIFpvbG5pZXJraWV3aWN6Cj4+IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5jb20+OyBE
YXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+OyBsaW51eC0KPj4gbWVkaWFAdmdlci5rZXJu
ZWwub3JnOyBIYW5zIFZlcmt1aWwgPGh2ZXJrdWlsLWNpc2NvQHhzNGFsbC5ubD47IE1hdXJvCj4+
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYkBrZXJuZWwub3JnPjsgUm9iaW4gTXVycGh5Cj4+IDxy
b2Jpbi5tdXJwaHlAYXJtLmNvbT47IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPjsgbGlu
dXgtYXJtLQo+PiBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgTWFyZWsgU3p5cHJvd3NraQo+
PiA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+PiBTdWJqZWN0OiBbUEFUQ0ggdjQgMzgvMzhd
IHZpZGVvYnVmMjogdXNlIHNndGFibGUtYmFzZWQgc2NhdHRlcmxpc3Qgd3JhcHBlcnMKPj4KPj4g
VXNlIHJlY2VudGx5IGludHJvZHVjZWQgY29tbW9uIHdyYXBwZXJzIG9wZXJhdGluZyBkaXJlY3Rs
eSBvbiB0aGUgc3RydWN0Cj4+IHNnX3RhYmxlIG9iamVjdHMgYW5kIHNjYXR0ZXJsaXN0IHBhZ2Ug
aXRlcmF0b3JzIHRvIG1ha2UgdGhlIGNvZGUgYSBiaXQKPj4gbW9yZSBjb21wYWN0LCByb2J1c3Qs
IGVhc2llciB0byBmb2xsb3cgYW5kIGNvcHkvcGFzdGUgc2FmZS4KPj4KPj4gTm8gZnVuY3Rpb25h
bCBjaGFuZ2UsIGJlY2F1c2UgdGhlIGNvZGUgYWxyZWFkeSBwcm9wZXJseSBkaWQgYWxsIHRoZQo+
PiBzY2F0ZXJsaXN0IHJlbGF0ZWQgY2FsbHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6
eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPj4gLS0tCj4+IEZvciBtb3JlIGlu
Zm9ybWF0aW9uLCBzZWUgJ1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxl
IG5lbnRzCj4+IHZzLiBvcmlnX25lbnRzIG1pc3VzZScgdGhyZWFkOgo+PiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMDA1MTIwODU3MTAuMTQ2ODgtMS0KPj4gbS5zenlwcm93
c2tpQHNhbXN1bmcuY29tL1QvCj4+IC0tLQo+PiAuLi4vbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItZG1hLWNvbnRpZy5jICB8IDQxICsrKysrKysrKystLS0tCj4+IC0tLS0tLS0tCj4+
IGRyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMgIHwgMzIg
KysrKysrKy0tLS0tLS0tCj4+IC0tCj4+IGRyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItdm1hbGxvYy5jIHwgMTIgKysrLS0tLQo+PiAzIGZpbGVzIGNoYW5nZWQsIDM0IGlu
c2VydGlvbnMoKyksIDUxIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPj4gYi9kcml2ZXJz
L21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+PiBpbmRleCBk
M2EzZWU1Li5iZjMxYTlkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRl
b2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+PiArKysgYi9kcml2ZXJzL21lZGlhL2NvbW1v
bi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+PiBAQCAtNDgsMTYgKzQ4LDE1IEBA
IHN0cnVjdCB2YjJfZGNfYnVmIHsKPj4KPj4gc3RhdGljIHVuc2lnbmVkIGxvbmcgdmIyX2RjX2dl
dF9jb250aWd1b3VzX3NpemUoc3RydWN0IHNnX3RhYmxlICpzZ3QpCj4+IHsKPj4gLQlzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKnM7Cj4+IAlkbWFfYWRkcl90IGV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3Mo
c2d0LT5zZ2wpOwo+PiAtCXVuc2lnbmVkIGludCBpOwo+PiArCXN0cnVjdCBzZ19kbWFfcGFnZV9p
dGVyIGRtYV9pdGVyOwo+PiAJdW5zaWduZWQgbG9uZyBzaXplID0gMDsKPj4KPj4gLQlmb3JfZWFj
aF9zZyhzZ3QtPnNnbCwgcywgc2d0LT5uZW50cywgaSkgewo+PiAtCQlpZiAoc2dfZG1hX2FkZHJl
c3MocykgIT0gZXhwZWN0ZWQpCj4+ICsJZm9yX2VhY2hfc2d0YWJsZV9kbWFfcGFnZShzZ3QsICZk
bWFfaXRlciwgMCkgewo+PiArCQlpZiAoc2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZkbWFfaXRl
cikgIT0gZXhwZWN0ZWQpCj4+IAkJCWJyZWFrOwo+PiAtCQlleHBlY3RlZCA9IHNnX2RtYV9hZGRy
ZXNzKHMpICsgc2dfZG1hX2xlbihzKTsKPj4gLQkJc2l6ZSArPSBzZ19kbWFfbGVuKHMpOwo+PiAr
CQlleHBlY3RlZCArPSBQQUdFX1NJWkU7Cj4+ICsJCXNpemUgKz0gUEFHRV9TSVpFOwo+IFRoaXMg
Y29kZSBpbiBkcm1fcHJpbWVfdF9jb250aWd1b3VzX3NpemUgYW5kIGhlcmUuICBJIHNlZW0gdG8g
cmVtZW1iZXIgc2VlaW5nCj4gdGhlIHNhbWUgcGF0dGVybiBpbiBvdGhlciBkcml2ZXJzLgo+Cj4g
V291bGQgaXQgd29ydGh3aGlsZSB0byBtYWtlIHRoaXMgYSBoZWxwZXIgYXMgd2VsbD8KSSB0aGlu
ayBJJ3ZlIGlkZW50aWZpZWQgc3VjaCBwYXR0ZXJucyBpbiBhbGwgRFJNIGRyaXZlcnMgYW5kIHJl
cGxhY2VkIAp3aXRoIGEgY29tbW9uIGhlbHBlci4gU28gZmFyIEkgaGF2ZSBubyBpZGVhIHdoZXJl
IHRvIHB1dCBzdWNoIGhlbHBlciB0byAKbWFrZSBpdCBhdmFpbGFibGUgZm9yIG1lZGlhL3ZpZGVv
YnVmMiwgc28gdGhvc2UgYSBmZXcgbGluZXMgYXJlIGluZGVlZCAKZHVwbGljYXRlZCBoZXJlLgo+
IEFsc28sIGlzbid0IHRoZSBzZ19kbWFfbGVuKCkgdGhlIGFjdHVhbCBsZW5ndGggb2YgdGhlIGNo
dW5rIHdlIGFyZSBsb29raW5nIGF0Pwo+Cj4gSWYgaXRzIEkgbm90IFBBR0VfU0laRSAoaWUuIGRt
YSBjaHVuayBpcyA0ICogUEFHRV9TSVpFPyksIGRvZXMgeW91ciBsb29wL2NhbGN1bGF0aW9uIHN0
aWxsIHdvcms/CgpzY2F0ZXJsaXN0IHBhZ2UgaXRlcmF0b3JzIChmb3JfZWFjaF9zZ19wYWdlL2Zv
cl9lYWNoX3NnX2RtYV9wYWdlIGFuZCAKdGhlaXIgc2d0YWJsZSB2YXJpYW50cykgYWx3YXlzIG9w
ZXJhdGVzIG9uIFBBR0VfU0laRSB1bml0cy4gVGhleSAKY29ycmVjdGx5IGhhbmRsZSBsYXJnZXIg
c2dfZG1hX2xlbigpLgoKCkJlc3QgcmVnYXJkcwotLSAKTWFyZWsgU3p5cHJvd3NraSwgUGhEClNh
bXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
