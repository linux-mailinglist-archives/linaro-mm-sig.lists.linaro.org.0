Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A815B259FD4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 22:16:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D181266717
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 20:16:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C007066722; Tue,  1 Sep 2020 20:16:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 616AF66721;
	Tue,  1 Sep 2020 20:16:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0EEC96088B
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:16:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 020B266721; Tue,  1 Sep 2020 20:16:09 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id A2BED66718
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:16:07 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62C201063;
 Tue,  1 Sep 2020 13:16:07 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EBC083F66F;
 Tue,  1 Sep 2020 13:16:04 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063546eucas1p268558dcd08ac9b43843f9f5e23da227d@eucas1p2.samsung.com>
 <20200826063316.23486-31-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2cd26a4d-ca66-2ee8-145c-b928474fefe9@arm.com>
Date: Tue, 1 Sep 2020 21:16:03 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-31-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kvm@vger.kernel.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Kirti Wankhede <kwankhede@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 30/32] samples: vfio-mdev/mbochs: fix
 common struct sg_table related issues
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
aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xsb3cKPiBhbmQgY29weS9wYXN0ZSBzYWZlLgo+
IAo+IFdoaWxlIHRvdWNoaW5nIHRoaXMgY29kZSwgYWxzbyBhZGQgbWlzc2luZyBjYWxsIHRvIGRt
YV91bm1hcF9zZ3RhYmxlLgoKUmV2aWV3ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5
QGFybS5jb20+Cgo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3Nr
aUBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgIHNhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jIHwgMyAr
Ky0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgYi9zYW1wbGVzL3ZmaW8t
bWRldi9tYm9jaHMuYwo+IGluZGV4IDNjYzVlNTkyMTY4Mi4uZTAzMDY4OTE3MjczIDEwMDY0NAo+
IC0tLSBhL3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jCj4gKysrIGIvc2FtcGxlcy92ZmlvLW1k
ZXYvbWJvY2hzLmMKPiBAQCAtODQ2LDcgKzg0Niw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUg
Km1ib2Noc19tYXBfZG1hYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0LAo+ICAgCWlm
IChzZ19hbGxvY190YWJsZV9mcm9tX3BhZ2VzKHNnLCBkbWFidWYtPnBhZ2VzLCBkbWFidWYtPnBh
Z2Vjb3VudCwKPiAgIAkJCQkgICAgICAwLCBkbWFidWYtPm1vZGUuc2l6ZSwgR0ZQX0tFUk5FTCkg
PCAwKQo+ICAgCQlnb3RvIGVycjI7Cj4gLQlpZiAoIWRtYV9tYXBfc2coYXQtPmRldiwgc2ctPnNn
bCwgc2ctPm5lbnRzLCBkaXJlY3Rpb24pKQo+ICsJaWYgKGRtYV9tYXBfc2d0YWJsZShhdC0+ZGV2
LCBzZywgZGlyZWN0aW9uLCAwKSkKPiAgIAkJZ290byBlcnIzOwo+ICAgCj4gICAJcmV0dXJuIHNn
Owo+IEBAIC04NjgsNiArODY4LDcgQEAgc3RhdGljIHZvaWQgbWJvY2hzX3VubWFwX2RtYWJ1Zihz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdCwKPiAgIAo+ICAgCWRldl9kYmcoZGV2LCAiJXM6
ICVkXG4iLCBfX2Z1bmNfXywgZG1hYnVmLT5pZCk7Cj4gICAKPiArCWRtYV91bm1hcF9zZ3RhYmxl
KGF0LT5kZXYsIHNnLCBkaXJlY3Rpb24sIDApOwo+ICAgCXNnX2ZyZWVfdGFibGUoc2cpOwo+ICAg
CWtmcmVlKHNnKTsKPiAgIH0KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
