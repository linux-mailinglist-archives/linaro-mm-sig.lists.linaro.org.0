Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 96142259FB9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 22:14:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1DDE66718
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 20:14:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A4BED6671F; Tue,  1 Sep 2020 20:14:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37BDB66717;
	Tue,  1 Sep 2020 20:13:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 76D3666716
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:13:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 647CA66715; Tue,  1 Sep 2020 20:13:35 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 20A0366715
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:13:34 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCA181FB;
 Tue,  1 Sep 2020 13:13:33 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B1FE3F66F;
 Tue,  1 Sep 2020 13:13:31 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063542eucas1p1713d37f4589ddaca27e1968b5fe44027@eucas1p1.samsung.com>
 <20200826063316.23486-25-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ee8392f8-36eb-4e60-5a3a-965369465dac@arm.com>
Date: Tue, 1 Sep 2020 21:13:30 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-25-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 24/32] drm: host1x: fix common struct
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMC0wOC0yNiAwNzozMywgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBUaGUgRG9jdW1l
bnRhdGlvbi9ETUEtQVBJLUhPV1RPLnR4dCBzdGF0ZXMgdGhhdCB0aGUgZG1hX21hcF9zZygpIGZ1
bmN0aW9uCj4gcmV0dXJucyB0aGUgbnVtYmVyIG9mIHRoZSBjcmVhdGVkIGVudHJpZXMgaW4gdGhl
IERNQSBhZGRyZXNzIHNwYWNlLgo+IEhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMgdG8gdGhl
IGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKPiBkbWFfdW5tYXBfc2cgbXVzdCBi
ZSBjYWxsZWQgd2l0aCB0aGUgb3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzCj4gcGFzc2Vk
IHRvIHRoZSBkbWFfbWFwX3NnKCkuCj4gCj4gc3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0
cnVjdHVyZSB1c2VkIGZvciBkZXNjcmliaW5nIGEgbm9uLWNvbnRpZ3VvdXMKPiBtZW1vcnkgYnVm
ZmVyLCB1c2VkIGNvbW1vbmx5IGluIHRoZSBEUk0gYW5kIGdyYXBoaWNzIHN1YnN5c3RlbXMuIEl0
Cj4gY29uc2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFk
ZHJlc3NlcyAoc2dsIGVudHJ5KSwKPiBhcyB3ZWxsIGFzIHRoZSBudW1iZXIgb2Ygc2NhdHRlcmxp
c3QgZW50cmllczogQ1BVIHBhZ2VzIChvcmlnX25lbnRzIGVudHJ5KQo+IGFuZCBETUEgbWFwcGVk
IHBhZ2VzIChuZW50cyBlbnRyeSkuCj4gCj4gSXQgdHVybmVkIG91dCB0aGF0IGl0IHdhcyBhIGNv
bW1vbiBtaXN0YWtlIHRvIG1pc3VzZSBuZW50cyBhbmQgb3JpZ19uZW50cwo+IGVudHJpZXMsIGNh
bGxpbmcgRE1BLW1hcHBpbmcgZnVuY3Rpb25zIHdpdGggYSB3cm9uZyBudW1iZXIgb2YgZW50cmll
cyBvcgo+IGlnbm9yaW5nIHRoZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkg
dGhlIGRtYV9tYXBfc2coKQo+IGZ1bmN0aW9uLgo+IAo+IFRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBs
ZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFwcGluZyB3cmFwcGVycyBvcGVyYXRpbmcKPiBkaXJlY3Rs
eSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIHVzZSBzY2F0dGVybGlzdCBwYWdl
Cj4gaXRlcmF0b3JzIHdoZXJlIHBvc3NpYmxlLiBUaGlzLCBhbG1vc3QgYWx3YXlzLCBoaWRlcyBy
ZWZlcmVuY2VzIHRvIHRoZQo+IG5lbnRzIGFuZCBvcmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0
aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xsb3cKPiBhbmQgY29weS9wYXN0ZSBzYWZlLgoK
UmV2aWV3ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+Cgo+IFNpZ25l
ZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2hvc3QxeC9qb2IuYyB8IDIyICsrKysrKysrLS0tLS0tLS0tLS0t
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMgYi9kcml2ZXJzL2dwdS9o
b3N0MXgvam9iLmMKPiBpbmRleCA4OWI2YzE0YjczOTIuLjgyZDBhNjBiYTNmNyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMKPiArKysgYi9kcml2ZXJzL2dwdS9ob3N0MXgv
am9iLmMKPiBAQCAtMTcwLDExICsxNzAsOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHBpbl9qb2Io
c3RydWN0IGhvc3QxeCAqaG9zdCwgc3RydWN0IGhvc3QxeF9qb2IgKmpvYikKPiAgIAkJCQlnb3Rv
IHVucGluOwo+ICAgCQkJfQo+ICAgCj4gLQkJCWVyciA9IGRtYV9tYXBfc2coZGV2LCBzZ3QtPnNn
bCwgc2d0LT5uZW50cywgZGlyKTsKPiAtCQkJaWYgKCFlcnIpIHsKPiAtCQkJCWVyciA9IC1FTk9N
RU07Cj4gKwkJCWVyciA9IGRtYV9tYXBfc2d0YWJsZShkZXYsIHNndCwgZGlyLCAwKTsKPiArCQkJ
aWYgKGVycikKPiAgIAkJCQlnb3RvIHVucGluOwo+IC0JCQl9Cj4gICAKPiAgIAkJCWpvYi0+dW5w
aW5zW2pvYi0+bnVtX3VucGluc10uZGV2ID0gZGV2Owo+ICAgCQkJam9iLT51bnBpbnNbam9iLT5u
dW1fdW5waW5zXS5kaXIgPSBkaXI7Cj4gQEAgLTIyOCw3ICsyMjYsNyBAQCBzdGF0aWMgdW5zaWdu
ZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAqaG9zdCwgc3RydWN0IGhvc3QxeF9qb2IgKmpv
YikKPiAgIAkJfQo+ICAgCj4gICAJCWlmIChob3N0LT5kb21haW4pIHsKPiAtCQkJZm9yX2VhY2hf
c2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBqKQo+ICsJCQlmb3JfZWFjaF9zZ3RhYmxlX3Nn
KHNndCwgc2csIGopCj4gICAJCQkJZ2F0aGVyX3NpemUgKz0gc2ctPmxlbmd0aDsKPiAgIAkJCWdh
dGhlcl9zaXplID0gaW92YV9hbGlnbigmaG9zdC0+aW92YSwgZ2F0aGVyX3NpemUpOwo+ICAgCj4g
QEAgLTI0MCw5ICsyMzgsOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhv
c3QxeCAqaG9zdCwgc3RydWN0IGhvc3QxeF9qb2IgKmpvYikKPiAgIAkJCQlnb3RvIHB1dDsKPiAg
IAkJCX0KPiAgIAo+IC0JCQllcnIgPSBpb21tdV9tYXBfc2coaG9zdC0+ZG9tYWluLAo+ICsJCQll
cnIgPSBpb21tdV9tYXBfc2d0YWJsZShob3N0LT5kb21haW4sCj4gICAJCQkJCWlvdmFfZG1hX2Fk
ZHIoJmhvc3QtPmlvdmEsIGFsbG9jKSwKPiAtCQkJCQlzZ3QtPnNnbCwgc2d0LT5uZW50cywgSU9N
TVVfUkVBRCk7Cj4gKwkJCQkJc2d0LCBJT01NVV9SRUFEKTsKPiAgIAkJCWlmIChlcnIgPT0gMCkg
ewo+ICAgCQkJCV9fZnJlZV9pb3ZhKCZob3N0LT5pb3ZhLCBhbGxvYyk7Cj4gICAJCQkJZXJyID0g
LUVJTlZBTDsKPiBAQCAtMjUyLDEyICsyNTAsOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHBpbl9q
b2Ioc3RydWN0IGhvc3QxeCAqaG9zdCwgc3RydWN0IGhvc3QxeF9qb2IgKmpvYikKPiAgIAkJCWpv
Yi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10uc2l6ZSA9IGdhdGhlcl9zaXplOwo+ICAgCQkJcGh5
c19hZGRyID0gaW92YV9kbWFfYWRkcigmaG9zdC0+aW92YSwgYWxsb2MpOwo+ICAgCQl9IGVsc2Ug
aWYgKHNndCkgewo+IC0JCQllcnIgPSBkbWFfbWFwX3NnKGhvc3QtPmRldiwgc2d0LT5zZ2wsIHNn
dC0+bmVudHMsCj4gLQkJCQkJIERNQV9UT19ERVZJQ0UpOwo+IC0JCQlpZiAoIWVycikgewo+IC0J
CQkJZXJyID0gLUVOT01FTTsKPiArCQkJZXJyID0gZG1hX21hcF9zZ3RhYmxlKGhvc3QtPmRldiwg
c2d0LCBETUFfVE9fREVWSUNFLCAwKTsKPiArCQkJaWYgKGVycikKPiAgIAkJCQlnb3RvIHB1dDsK
PiAtCQkJfQo+ICAgCj4gICAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRpciA9IERN
QV9UT19ERVZJQ0U7Cj4gICAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRldiA9IGhv
c3QtPmRldjsKPiBAQCAtNjYwLDggKzY1NSw3IEBAIHZvaWQgaG9zdDF4X2pvYl91bnBpbihzdHJ1
Y3QgaG9zdDF4X2pvYiAqam9iKQo+ICAgCQl9Cj4gICAKPiAgIAkJaWYgKHVucGluLT5kZXYgJiYg
c2d0KQo+IC0JCQlkbWFfdW5tYXBfc2codW5waW4tPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMs
Cj4gLQkJCQkgICAgIHVucGluLT5kaXIpOwo+ICsJCQlkbWFfdW5tYXBfc2d0YWJsZSh1bnBpbi0+
ZGV2LCBzZ3QsIHVucGluLT5kaXIsIDApOwo+ICAgCj4gICAJCWhvc3QxeF9ib191bnBpbihkZXYs
IHVucGluLT5ibywgc2d0KTsKPiAgIAkJaG9zdDF4X2JvX3B1dCh1bnBpbi0+Ym8pOwo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
