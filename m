Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A81259FBC
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 22:14:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1793566717
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 20:14:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0AA346671E; Tue,  1 Sep 2020 20:14:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF19466718;
	Tue,  1 Sep 2020 20:14:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7845C66717
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:14:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6D1186671E; Tue,  1 Sep 2020 20:14:21 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 93F336671C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:14:10 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BBC31FB;
 Tue,  1 Sep 2020 13:14:10 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 211D43F66F;
 Tue,  1 Sep 2020 13:14:07 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063544eucas1p15980885bbdbc43e35f350f228994bee7@eucas1p1.samsung.com>
 <20200826063316.23486-29-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e858bd32-6ac2-e33d-e375-e2fd06c1c444@arm.com>
Date: Tue, 1 Sep 2020 21:14:06 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-29-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 28/32] misc: fastrpc: fix common
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
LS0KPiAgIGRyaXZlcnMvbWlzYy9mYXN0cnBjLmMgfCA0ICsrLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWlzYy9mYXN0cnBjLmMgYi9kcml2ZXJzL21pc2MvZmFzdHJwYy5jCj4gaW5kZXggNzkzOWM1
NWRhY2ViLi45ZDY4Njc3NDkzMTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9taXNjL2Zhc3RycGMu
Ywo+ICsrKyBiL2RyaXZlcnMvbWlzYy9mYXN0cnBjLmMKPiBAQCAtNTE4LDcgKzUxOCw3IEBAIGZh
c3RycGNfbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwK
PiAgIAo+ICAgCXRhYmxlID0gJmEtPnNndDsKPiAgIAo+IC0JaWYgKCFkbWFfbWFwX3NnKGF0dGFj
aG1lbnQtPmRldiwgdGFibGUtPnNnbCwgdGFibGUtPm5lbnRzLCBkaXIpKQo+ICsJaWYgKCFkbWFf
bWFwX3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCB0YWJsZSwgZGlyLCAwKSkKPiAgIAkJcmV0dXJu
IEVSUl9QVFIoLUVOT01FTSk7Cj4gICAKPiAgIAlyZXR1cm4gdGFibGU7Cj4gQEAgLTUyOCw3ICs1
MjgsNyBAQCBzdGF0aWMgdm9pZCBmYXN0cnBjX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZf
YXR0YWNobWVudCAqYXR0YWNoLAo+ICAgCQkJCSAgc3RydWN0IHNnX3RhYmxlICp0YWJsZSwKPiAg
IAkJCQkgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcikKPiAgIHsKPiAtCWRtYV91bm1hcF9z
ZyhhdHRhY2gtPmRldiwgdGFibGUtPnNnbCwgdGFibGUtPm5lbnRzLCBkaXIpOwo+ICsJZG1hX3Vu
bWFwX3NndGFibGUoYXR0YWNoLT5kZXYsIHRhYmxlLCBkaXIsIDApOwo+ICAgfQo+ICAgCj4gICBz
dGF0aWMgdm9pZCBmYXN0cnBjX3JlbGVhc2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikKPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
