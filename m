Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFDD1CF529
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 15:01:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E888C619D9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 13:01:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DBB2C619DA; Tue, 12 May 2020 13:01:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F042619D5;
	Tue, 12 May 2020 13:00:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4E60961725
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 13:00:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4340E619D5; Tue, 12 May 2020 13:00:36 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 5DDB561725
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 13:00:34 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512130033euoutp019c70a737206d0306885d7c9d24b93a82~OSWjaMzrS0054400544euoutp01X
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 13:00:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200512130033euoutp019c70a737206d0306885d7c9d24b93a82~OSWjaMzrS0054400544euoutp01X
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512130032eucas1p1f73e728ec6203501ba81ebfeef9eef6e~OSWjHUrIM0405704057eucas1p1q;
 Tue, 12 May 2020 13:00:32 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 7F.F8.60679.0FD9ABE5; Tue, 12
 May 2020 14:00:32 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512130032eucas1p1b4a35fc40a37196f67477d042455479c~OSWisXm8w0405804058eucas1p1h;
 Tue, 12 May 2020 13:00:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512130032eusmtrp19afb98684ac9523b752ffa9d028963e1~OSWirtUcz3237932379eusmtrp1B;
 Tue, 12 May 2020 13:00:32 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-30-5eba9df0e0af
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1F.F7.07950.0FD9ABE5; Tue, 12
 May 2020 14:00:32 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512130031eusmtip16fed83b076c2cc5d92d4b400faec47e2~OSWiFPXJW0680906809eusmtip1F;
 Tue, 12 May 2020 13:00:31 +0000 (GMT)
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <1a80255d-81de-2c5d-6d06-ea126fd7f994@samsung.com>
Date: Tue, 12 May 2020 15:00:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512121808.GA20393@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRj1t/vY3ejKdRp+qBSsBxSl9oBuJFEQcQshCSIqZ628mKjTdjNT
 qMzsNTU1rWyVrgzMR9o2U7tlpWBrWSt0lanQQyV7jCyXpYXldnv43znnO9/vnA9+FKbqJIKo
 eN1uXq/TJqpJJd5wb/Tx/KELYkx4c344m+ewy1hzSR3B/mooxFjn108kW1ndJmNNd5axbudr
 GWvpe0awneJ5km0Z6idWKLma0hrENY+YcK5x5BXBvcyxyTjr5QNcz3gfxhV1VSDu5otMkjtR
 X4W4Ycu0KOVmZUQsnxi/h9eHLd+m3Jl3sBildMHeyuomlIm++xuQggJmMRSPHSUNSEmpmCsI
 HrkLkUTcCAa/vSIkMoygtO80/nelcjAHkwYVCD435sgl8mmCuLK9Ln8mGh7euoZ5cACjhoH3
 j7zvYoxDBsb8Dq+JZBaAwWUgPZhmloN53I48GGdmgbngIuHBUxkNtJdbkeTxA/vZfu+ugpkH
 d26KXh1jpkOj6zwm4UDo7i+TecKAccnhS9mwXOq9Csp//cAk7A/vbfV/9BBoL8rFpYVDCF47
 rsolkougM6sESa5l0OsYm6hKTUTMgToxTJJXgmjrl3tkYHyhy+UnlfCFkw1nMEmm4dgRleSe
 DUZb7b/YlicdWAFSGyedZpx0jnHSOcb/uSaEV6FAPlVIiuOFhTo+LVTQJgmpurjQHclJFjTx
 1drHbe4mJP7c3ooYCqmn0D77xBgVod0jpCe1IqAwdQCdHX8jRkXHatMzeH3yVn1qIi+0omAK
 VwfSiy6906iYOO1uPoHnU3j936mMUgRlotrYiLWKMeco2bZWkfF0ce9da+Q5s29hcv3tkfy3
 fpsGdB9r3eutWcFrAmhziebchsrpj+0hkQ+eB7QcWN24Mfx+TPZozwy9Mm1VBG0aJeindQMo
 ryyN7PBZvd9q2XgKPjjfJLxbF7aLP349eObSdM3hbmzNpi1R0eklYvUS07QsNS7s1C6Yi+kF
 7W/ftLrNZgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCIsWRmVeSWpSXmKPExsVy+t/xu7of5u6KM/g9Tdyi99xJJouNM9az
 WvzfNpHZ4srX92wWK1cfZbJYsN/a4suVh0wWmx5fY7W4vGsOm8XBD09YHbg81sxbw+ix99sC
 Fo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH35ZVjB6fN8kFcEXp2RTll5akKmTk
 F5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZfQ2TmEsuCFRsXL1DsYG
 xh/CXYycHBICJhIrX3QzdzFycQgJLGWUuPSwnR0iISNxcloDK4QtLPHnWhcbRNFbRon/K9aD
 FQkLxEic2bOBGcQWEVCSePrqLCNIEbPABSaJGzuPgiWEBJ4zSrycAWazCRhKdL0FmcTJwStg
 J7Hx30lGEJtFQFVi44SFYNtEBWIlVl9rZYSoEZQ4OfMJC4jNKaAjsX/3LrA4s4CZxLzND5kh
 bHmJ7W/nQNniEreezGeawCg0C0n7LCQts5C0zELSsoCRZRWjSGppcW56brGRXnFibnFpXrpe
 cn7uJkZgDG879nPLDsaud8GHGAU4GJV4eCPqd8UJsSaWFVfmHmKU4GBWEuFtydwZJ8SbklhZ
 lVqUH19UmpNafIjRFOi5icxSosn5wPSSVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7
 NbUgtQimj4mDU6qBMfaQU9YMIfHlF58VKPmu+HnUXS9CWHu2wYktvz+YRv3Yz+U8z3E1V4Cz
 dOChvNkcsx00RLTMZFfcz59rdywsLuufEvOVS5tnhNxS83Oq4+aJ6PnouK0kKXuKTUhwXAnr
 lEJJd49P3IdVgu4IsR2Wu3pvzZQqlgtz+75euzT14OlVX56XOiqtVWIpzkg01GIuKk4EAJQJ
 QYT3AgAA
X-CMS-MailID: 20200512130032eucas1p1b4a35fc40a37196f67477d042455479c
X-Msg-Generator: CA
X-RootMTR: 20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <CGME20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0@eucas1p1.samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <20200512121808.GA20393@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 01/38] dma-mapping: add generic
 helpers for mapping sgtable objects
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

SGkgQ2hyaXN0b3BoLAoKT24gMTIuMDUuMjAyMCAxNDoxOCwgQ2hyaXN0b3BoIEhlbGx3aWcgd3Jv
dGU6Cj4gT24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMTE6MDA6MjFBTSArMDIwMCwgTWFyZWsgU3p5
cHJvd3NraSB3cm90ZToKPj4gc3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0cnVjdHVyZSB1
c2VkIGZvciBkZXNjcmliaW5nIGEgbWVtb3J5Cj4+IGJ1ZmZlci4gSXQgY29uc2lzdHMgb2YgYSBz
Y2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nlcwo+PiAoc2dsIGVu
dHJ5KSwgYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJpZXM6IENQVSBw
YWdlcwo+PiAob3JpZ19uZW50cyBlbnRyeSkgYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5lbnRzIGVu
dHJ5KS4KPj4KPj4gSXQgdHVybmVkIG91dCB0aGF0IGl0IHdhcyBhIGNvbW1vbiBtaXN0YWtlIHRv
IG1pc3VzZSBuZW50cyBhbmQgb3JpZ19uZW50cwo+PiBlbnRyaWVzLCBjYWxsaW5nIERNQS1tYXBw
aW5nIGZ1bmN0aW9ucyB3aXRoIGEgd3JvbmcgbnVtYmVyIG9mIGVudHJpZXMgb3IKPj4gaWdub3Jp
bmcgdGhlIG51bWJlciBvZiBtYXBwZWQgZW50cmllcyByZXR1cm5lZCBieSB0aGUgZG1hX21hcF9z
Zwo+PiBmdW5jdGlvbi4KPj4KPj4gVG8gYXZvaWQgc3VjaCBpc3N1ZXMsIGxldHMgaW50cm9kdWNl
IGEgY29tbW9uIHdyYXBwZXJzIG9wZXJhdGluZyBkaXJlY3RseQo+PiBvbiB0aGUgc3RydWN0IHNn
X3RhYmxlIG9iamVjdHMsIHdoaWNoIHRha2UgY2FyZSBvZiB0aGUgcHJvcGVyIHVzZSBvZgo+PiB0
aGUgbmVudHMgYW5kIG9yaWdfbmVudHMgZW50cmllcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWFy
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+PiAtLS0KPj4gRm9yIG1v
cmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENIIHY0IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2df
dGFibGUgbmVudHMKPj4gdnMuIG9yaWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cj4+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDIwMDUxMjA4NTcxMC4xNDY4OC0xLW0uc3p5cHJv
d3NraUBzYW1zdW5nLmNvbS9ULwo+PiAtLS0KPj4gICBpbmNsdWRlL2xpbnV4L2RtYS1tYXBwaW5n
LmggfCA3OSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4g
ICAxIGZpbGUgY2hhbmdlZCwgNzkgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9kbWEtbWFwcGluZy5oIGIvaW5jbHVkZS9saW51eC9kbWEtbWFwcGluZy5oCj4+
IGluZGV4IGI0MzExNmEuLjg4ZjAxY2MgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1h
LW1hcHBpbmcuaAo+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1tYXBwaW5nLmgKPj4gQEAgLTYw
OSw2ICs2MDksODUgQEAgc3RhdGljIGlubGluZSB2b2lkIGRtYV9zeW5jX3NpbmdsZV9yYW5nZV9m
b3JfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwKPj4gICAJcmV0dXJuIGRtYV9zeW5jX3Npbmds
ZV9mb3JfZGV2aWNlKGRldiwgYWRkciArIG9mZnNldCwgc2l6ZSwgZGlyKTsKPj4gICB9Cj4+ICAg
Cj4+ICsvKioKPj4gKyAqIGRtYV9tYXBfc2d0YWJsZSAtIE1hcCB0aGUgZ2l2ZW4gYnVmZmVyIGZv
ciB0aGUgRE1BIG9wZXJhdGlvbnMKPj4gKyAqIEBkZXY6CVRoZSBkZXZpY2UgdG8gcGVyZm9ybSBh
IERNQSBvcGVyYXRpb24KPj4gKyAqIEBzZ3Q6CVRoZSBzZ190YWJsZSBvYmplY3QgZGVzY3JpYmlu
ZyB0aGUgYnVmZmVyCj4+ICsgKiBAZGlyOglETUEgZGlyZWN0aW9uCj4+ICsgKiBAYXR0cnM6CU9w
dGlvbmFsIERNQSBhdHRyaWJ1dGVzIGZvciB0aGUgbWFwIG9wZXJhdGlvbgo+PiArICoKPj4gKyAq
IE1hcHMgYSBidWZmZXIgZGVzY3JpYmVkIGJ5IGEgc2NhdHRlcmxpc3Qgc3RvcmVkIGluIHRoZSBn
aXZlbiBzZ190YWJsZQo+PiArICogb2JqZWN0IGZvciB0aGUgQGRpciBETUEgb3BlcmF0aW9uIGJ5
IHRoZSBAZGV2IGRldmljZS4gQWZ0ZXIgc3VjY2Vzcwo+PiArICogdGhlIG93bmVyc2hpcCBmb3Ig
dGhlIGJ1ZmZlciBpcyB0cmFuc2ZlcnJlZCB0byB0aGUgRE1BIGRvbWFpbi4gT25lIGhhcwo+PiAr
ICogdG8gY2FsbCBkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUoKSBvciBkbWFfdW5tYXBfc2d0YWJs
ZSgpIHRvIG1vdmUgdGhlCj4+ICsgKiBvd25lcnNoaXAgb2YgdGhlIGJ1ZmZlciBiYWNrIHRvIHRo
ZSBDUFUgZG9tYWluIGJlZm9yZSB0b3VjaGluZyB0aGUKPj4gKyAqIGJ1ZmZlciBieSB0aGUgQ1BV
Lgo+PiArICogUmV0dXJucyAwIG9uIHN1Y2Nlc3Mgb3IgLUVJTlZBTCBvbiBlcnJvciBkdXJpbmcg
bWFwcGluZyB0aGUgYnVmZmVyLgo+PiArICovCj4+ICtzdGF0aWMgaW5saW5lIGludCBkbWFfbWFw
X3NndGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qgc2dfdGFibGUgKnNndCwKPj4gKwkJ
ZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyLCB1bnNpZ25lZCBsb25nIGF0dHJzKQo+PiArewo+
PiArCWludCBuID0gZG1hX21hcF9zZ19hdHRycyhkZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVu
dHMsIGRpciwgYXR0cnMpOwo+PiArCj4+ICsJaWYgKG4gPiAwKSB7Cj4+ICsJCXNndC0+bmVudHMg
PSBuOwo+PiArCQlyZXR1cm4gMDsKPj4gKwl9Cj4+ICsJcmV0dXJuIC1FSU5WQUw7Cj4gTml0OiAg
Y29kZSB0ZW5kIHRvIGJlIGEgdGFkIGVhc2llciB0byByZWFkIGlmIHRoZSB0aGUgZXhjZXB0aW9u
YWwKPiBjb25kaXRpb24gaXMgaW5zaWRlIHRoZSBicmFuY2ggYmxvY2ssIHNvOgo+Cj4gCWlmIChu
IDw9IDApCj4gCQlyZXR1cm4gLUVJTlZBTDsKPiAJc2d0LT5uZW50cyA9IG47Cj4gCXJldHVybiAw
Owo+CkluZGVlZCB0aGlzIHZlcnNpb24gbG9va3MgbXVjaCBiZXR0ZXIuIEkgd2lsbCByZXNlbmQg
aXQgaW4gYSBmZXcgbWludXRlcy4KPiBPdGhlcndpc2UgdGhpcyBsb29rcyBnb29kIHRvIG1lOgo+
Cj4gUmV2aWV3ZWQtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgo+CkJlc3QgcmVn
YXJkcwotLSAKTWFyZWsgU3p5cHJvd3NraSwgUGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xh
bmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
