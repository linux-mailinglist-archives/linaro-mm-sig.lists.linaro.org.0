Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A00D31CF425
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 14:18:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9294619CF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 12:18:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BAA85619D4; Tue, 12 May 2020 12:18:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC8D7619D0;
	Tue, 12 May 2020 12:18:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D8F8A619AC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 12:18:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C5B40619D0; Tue, 12 May 2020 12:18:12 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by lists.linaro.org (Postfix) with ESMTPS id 6B457619AC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 12:18:11 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8F23F68BEB; Tue, 12 May 2020 14:18:08 +0200 (CEST)
Date: Tue, 12 May 2020 14:18:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200512121808.GA20393@lst.de>
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <CGME20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0@eucas1p1.samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
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

T24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMTE6MDA6MjFBTSArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPiBzdHJ1Y3Qgc2dfdGFibGUgaXMgYSBjb21tb24gc3RydWN0dXJlIHVzZWQgZm9y
IGRlc2NyaWJpbmcgYSBtZW1vcnkKPiBidWZmZXIuIEl0IGNvbnNpc3RzIG9mIGEgc2NhdHRlcmxp
c3Qgd2l0aCBtZW1vcnkgcGFnZXMgYW5kIERNQSBhZGRyZXNzZXMKPiAoc2dsIGVudHJ5KSwgYXMg
d2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJpZXM6IENQVSBwYWdlcwo+IChv
cmlnX25lbnRzIGVudHJ5KSBhbmQgRE1BIG1hcHBlZCBwYWdlcyAobmVudHMgZW50cnkpLgo+IAo+
IEl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0byBtaXN1c2UgbmVu
dHMgYW5kIG9yaWdfbmVudHMKPiBlbnRyaWVzLCBjYWxsaW5nIERNQS1tYXBwaW5nIGZ1bmN0aW9u
cyB3aXRoIGEgd3JvbmcgbnVtYmVyIG9mIGVudHJpZXMgb3IKPiBpZ25vcmluZyB0aGUgbnVtYmVy
IG9mIG1hcHBlZCBlbnRyaWVzIHJldHVybmVkIGJ5IHRoZSBkbWFfbWFwX3NnCj4gZnVuY3Rpb24u
Cj4gCj4gVG8gYXZvaWQgc3VjaCBpc3N1ZXMsIGxldHMgaW50cm9kdWNlIGEgY29tbW9uIHdyYXBw
ZXJzIG9wZXJhdGluZyBkaXJlY3RseQo+IG9uIHRoZSBzdHJ1Y3Qgc2dfdGFibGUgb2JqZWN0cywg
d2hpY2ggdGFrZSBjYXJlIG9mIHRoZSBwcm9wZXIgdXNlIG9mCj4gdGhlIG5lbnRzIGFuZCBvcmln
X25lbnRzIGVudHJpZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5z
enlwcm93c2tpQHNhbXN1bmcuY29tPgo+IC0tLQo+IEZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUg
J1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCj4gdnMuIG9y
aWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRl
dmVsLzIwMjAwNTEyMDg1NzEwLjE0Njg4LTEtbS5zenlwcm93c2tpQHNhbXN1bmcuY29tL1QvCj4g
LS0tCj4gIGluY2x1ZGUvbGludXgvZG1hLW1hcHBpbmcuaCB8IDc5ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNzkgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1tYXBwaW5nLmggYi9p
bmNsdWRlL2xpbnV4L2RtYS1tYXBwaW5nLmgKPiBpbmRleCBiNDMxMTZhLi44OGYwMWNjIDEwMDY0
NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLW1hcHBpbmcuaAo+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvZG1hLW1hcHBpbmcuaAo+IEBAIC02MDksNiArNjA5LDg1IEBAIHN0YXRpYyBpbmxpbmUgdm9p
ZCBkbWFfc3luY19zaW5nbGVfcmFuZ2VfZm9yX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4g
IAlyZXR1cm4gZG1hX3N5bmNfc2luZ2xlX2Zvcl9kZXZpY2UoZGV2LCBhZGRyICsgb2Zmc2V0LCBz
aXplLCBkaXIpOwo+ICB9Cj4gIAo+ICsvKioKPiArICogZG1hX21hcF9zZ3RhYmxlIC0gTWFwIHRo
ZSBnaXZlbiBidWZmZXIgZm9yIHRoZSBETUEgb3BlcmF0aW9ucwo+ICsgKiBAZGV2OglUaGUgZGV2
aWNlIHRvIHBlcmZvcm0gYSBETUEgb3BlcmF0aW9uCj4gKyAqIEBzZ3Q6CVRoZSBzZ190YWJsZSBv
YmplY3QgZGVzY3JpYmluZyB0aGUgYnVmZmVyCj4gKyAqIEBkaXI6CURNQSBkaXJlY3Rpb24KPiAr
ICogQGF0dHJzOglPcHRpb25hbCBETUEgYXR0cmlidXRlcyBmb3IgdGhlIG1hcCBvcGVyYXRpb24K
PiArICoKPiArICogTWFwcyBhIGJ1ZmZlciBkZXNjcmliZWQgYnkgYSBzY2F0dGVybGlzdCBzdG9y
ZWQgaW4gdGhlIGdpdmVuIHNnX3RhYmxlCj4gKyAqIG9iamVjdCBmb3IgdGhlIEBkaXIgRE1BIG9w
ZXJhdGlvbiBieSB0aGUgQGRldiBkZXZpY2UuIEFmdGVyIHN1Y2Nlc3MKPiArICogdGhlIG93bmVy
c2hpcCBmb3IgdGhlIGJ1ZmZlciBpcyB0cmFuc2ZlcnJlZCB0byB0aGUgRE1BIGRvbWFpbi4gT25l
IGhhcwo+ICsgKiB0byBjYWxsIGRtYV9zeW5jX3NndGFibGVfZm9yX2NwdSgpIG9yIGRtYV91bm1h
cF9zZ3RhYmxlKCkgdG8gbW92ZSB0aGUKPiArICogb3duZXJzaGlwIG9mIHRoZSBidWZmZXIgYmFj
ayB0byB0aGUgQ1BVIGRvbWFpbiBiZWZvcmUgdG91Y2hpbmcgdGhlCj4gKyAqIGJ1ZmZlciBieSB0
aGUgQ1BVLgo+ICsgKiBSZXR1cm5zIDAgb24gc3VjY2VzcyBvciAtRUlOVkFMIG9uIGVycm9yIGR1
cmluZyBtYXBwaW5nIHRoZSBidWZmZXIuCj4gKyAqLwo+ICtzdGF0aWMgaW5saW5lIGludCBkbWFf
bWFwX3NndGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qgc2dfdGFibGUgKnNndCwKPiAr
CQllbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIsIHVuc2lnbmVkIGxvbmcgYXR0cnMpCj4gK3sK
PiArCWludCBuID0gZG1hX21hcF9zZ19hdHRycyhkZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVu
dHMsIGRpciwgYXR0cnMpOwo+ICsKPiArCWlmIChuID4gMCkgewo+ICsJCXNndC0+bmVudHMgPSBu
Owo+ICsJCXJldHVybiAwOwo+ICsJfQo+ICsJcmV0dXJuIC1FSU5WQUw7CgpOaXQ6ICBjb2RlIHRl
bmQgdG8gYmUgYSB0YWQgZWFzaWVyIHRvIHJlYWQgaWYgdGhlIHRoZSBleGNlcHRpb25hbApjb25k
aXRpb24gaXMgaW5zaWRlIHRoZSBicmFuY2ggYmxvY2ssIHNvOgoKCWlmIChuIDw9IDApCgkJcmV0
dXJuIC1FSU5WQUw7CglzZ3QtPm5lbnRzID0gbjsKCXJldHVybiAwOwoKT3RoZXJ3aXNlIHRoaXMg
bG9va3MgZ29vZCB0byBtZToKClJldmlld2VkLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxz
dC5kZT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
