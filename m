Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C75127A286
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 27 Sep 2020 21:16:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFEFD608DF
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 27 Sep 2020 19:16:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AEFEC60F5B; Sun, 27 Sep 2020 19:16:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBC7C607E0;
	Sun, 27 Sep 2020 19:16:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 90B6A60695
 for <linaro-mm-sig@lists.linaro.org>; Sun, 27 Sep 2020 19:16:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7D0BE607E0; Sun, 27 Sep 2020 19:16:16 +0000 (UTC)
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by lists.linaro.org (Postfix) with ESMTPS id 5F2CD60695
 for <linaro-mm-sig@lists.linaro.org>; Sun, 27 Sep 2020 19:16:14 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id C2B8980637;
 Sun, 27 Sep 2020 21:16:06 +0200 (CEST)
Date: Sun, 27 Sep 2020 21:16:05 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200927191605.GA237178@ravnborg.org>
References: <20200925115601.23955-1-tzimmermann@suse.de>
 <20200926071334.GA42915@ravnborg.org>
 <8761e0dd-569e-0ea0-7bc5-25e4f7cb67cc@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8761e0dd-569e-0ea0-7bc5-25e4f7cb67cc@suse.de>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=A5ZCwZeG c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8 a=GurwE-QF2vAYMD8ieTkA:9
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-doc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, thierry.reding@gmail.com, kraxel@redhat.com,
 afd@ti.com, arnd@arndb.de, corbet@lwn.net, jonathanh@nvidia.com,
 matthew.auld@intel.com, linux+etnaviv@armlinux.org.uk,
 linux-media@vger.kernel.org, pawel@osciak.com, intel-gfx@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 thomas.hellstrom@intel.com, rodrigo.vivi@intel.com,
 linux-tegra@vger.kernel.org, mchehab@kernel.org, gregkh@linuxfoundation.org,
 lmark@codeaurora.org, tfiga@chromium.org, kyungmin.park@samsung.com,
 robin.murphy@arm.com, christian.koenig@amd.com
Subject: Re: [Linaro-mm-sig] [PATCH v3 0/4] dma-buf: Flag vmap'ed memory as
 system or I/O memory
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

SGkgVGhvbWFzLgoKPiA+IAo+ID4gc3RydWN0IHNpbWFwIHsKPiA+ICAgICAgICB1bmlvbiB7Cj4g
PiAgICAgICAgICAgICAgICB2b2lkIF9faW9tZW0gKnZhZGRyX2lvbWVtOwo+ID4gICAgICAgICAg
ICAgICAgdm9pZCAqdmFkZHI7Cj4gPiAgICAgICAgfTsKPiA+ICAgICAgICBib29sIGlzX2lvbWVt
Owo+ID4gfTsKPiA+IAo+ID4gV2hlcmUgc2ltYXAgaXMgYSBzaG9ydGhhbmQgZm9yIHN5c3RlbV9p
b21lbV9tYXAKPiA+IEFuZCBpdCBjb3VsZCBhbCBiZSBzdHVmZmVkIGludG8gYSBpbmNsdWRlL2xp
bnV4L3NpbWFwLmggZmlsZS4KPiA+IAo+ID4gTm90IHRvdGFsbHkgc29sZCBvbiB0aGUgc2ltYXAg
bmFtZSAtIGJ1dCB3YW50ZWQgdG8gY29tZSB1cCB3aXRoCj4gPiBzb21ldGhpbmcuCj4gCj4gWWVz
LiBPdGhlcnMsIG15c2VsZiBpbmNsdWRlZCwgaGF2ZSBzdWdnZXN0ZWQgdG8gdXNlIGEgbmFtZSB0
aGF0IGRvZXMgbm90Cj4gaW1wbHkgYSBjb25uZWN0aW9uIHRvIHRoZSBkbWEtYnVmIGZyYW1ld29y
aywgYnV0IG5vIG9uZSBoYXMgY29tZSB1cCB3aXRoCj4gIGEgZ29vZCBuYW1lLgo+IAo+IEkgc3Ry
b25nbHkgZGlzbGlrZSBzaW1hcCwgYXMgaXQncyBlbnRpcmVseSBub24tb2J2aW91cyB3aGF0IGl0
IGRvZXMuCj4gZG1hLWJ1Zi1tYXAgaXMgbm90IGFjdHVhbGx5IHdyb25nLiBUaGUgc3RydWN0dXJl
cyByZXByZXNlbnRzIHRoZSBtYXBwaW5nCj4gb2YgYSBkbWEtYWJsZSBidWZmZXIgaW4gbW9zdCBj
YXNlcy4KPiAKPiA+IAo+ID4gV2l0aCB0aGlzIGFwcHJvYWNoIHVzZXJzIGRvIG5vdCBoYXZlIHRv
IHB1bGwgaW4gZG1hLWJ1ZiB0byB1c2UgaXQgYW5kCj4gPiB1c2VycyB3aWxsIG5vdCBjb25mdXNl
IHRoYXQgdGhpcyBpcyBvbmx5IGZvciBkbWEtYnVmIHVzYWdlLgo+IAo+IFRoZXJlJ3Mgbm8gbmVl
ZCB0byBlbmFibGUgZG1hLWJ1Zi4gSXQncyBhbGwgaW4gdGhlIGhlYWRlciBmaWxlIHdpdGhvdXQK
PiBkZXBlbmRlbmNpZXMgb24gZG1hLWJ1Zi4gSXQncyByZWFsbHkganVzdCB0aGUgbmFtZS4KPiAK
PiBCdXQgdGhlcmUncyBzb21ldGhpbmcgZWxzZSB0byB0YWtlIGludG8gYWNjb3VudC4gVGhlIHdo
b2xlIGlzc3VlIGhlcmUgaXMKPiB0aGF0IHRoZSBidWZmZXIgaXMgZGlzY29ubmVjdGVkIGZyb20g
aXRzIG9yaWdpbmF0aW5nIGRyaXZlciwgc28gd2UgZG9uJ3QKPiBrbm93IHdoaWNoIGtpbmQgb2Yg
bWVtb3J5IG9wcyB3ZSBoYXZlIHRvIHVzZS4gVGhpbmtpbmcgYWJvdXQgaXQsIEkKPiByZWFsaXpl
ZCB0aGF0IG5vIG9uZSBlbHNlIHNlZW1lZCB0byBoYXZlIHRoaXMgcHJvYmxlbSB1bnRpbCBub3cu
Cj4gT3RoZXJ3aXNlIHRoZXJlIHdvdWxkIGJlIGEgc29sdXRpb24gYWxyZWFkeS4gU28gbWF5YmUg
dGhlIGRtYS1idWYKPiBmcmFtZXdvcmsgKmlzKiB0aGUgbmF0aXZlIHVzZSBjYXNlIGZvciB0aGlz
IGRhdGEgc3RydWN0dXJlLgoKV2UgaGF2ZSBhdCBsZWFzdDoKbGludXgvZmIuaDoKCXVuaW9uIHsK
CQljaGFyIF9faW9tZW0gKnNjcmVlbl9iYXNlOyAgICAgIC8qIFZpcnR1YWwgYWRkcmVzcyAqLwoJ
CWNoYXIgKnNjcmVlbl9idWZmZXI7Cgl9OwoKV2hpY2ggc29sdmUgbW9yZSBvciBsZXNzIHRoZSBz
YW1lIHByb2JsZW0uCgogCj4gQW55d2F5LCBpZiBhIGJldHRlciBuYW1lIHRoYW4gZG1hLWJ1Zi1t
YXAgY29tZXMgaW4sIEknbSB3aWxsaW5nIHRvCj4gcmVuYW1lIHRoZSB0aGluZy4gT3RoZXJ3aXNl
IEkgaW50ZW5kIHRvIG1lcmdlIHRoZSBwYXRjaHNldCBieSB0aGUgZW5kIG9mCj4gdGhlIHdlZWsu
CgpXZWxsLCB0aGUgbWFpbiB0aGluZyBpcyB0aGF0IEkgdGhpbmsgdGhpcyBzaG91ZCBiZSBtb3Zl
ZCBhd2F5IGZyb20KZG1hLWJ1Zi4gQnV0IGlmIGluZGVlZCBkbWEtYnVmIGlzIHRoZSBvbmx5IHJl
bGV2YW50IHVzZXIgaW4gZHJtIHRoZW4KSSBhbSB0b3RhbGx5IGZpbmUgd2l0aCB0aGUgY3VycmVu
dCBuYW1pbmcuCgpPbmUgYWx0ZXJuYXRpdmUgbmFtZWQgdGhhdCBwb3BwZWQgdXAgaW4gbXkgaGVh
ZDogc3RydWN0IHN5c19pb19tYXAge30KQnV0IGFnYWluLCBpZiB0aGlzIGlzIGtlcHQgaW4gZG1h
LWJ1ZiB0aGVuIEkgYW0gZmluZSB3aXRoIHRoZSBjdXJyZW50Cm5hbWluZy4KCkluIG90aGVyIHdv
cmRzLCBpZiB5b3UgY29udGludWUgdG8gdGhpbmsgdGhpcyBpcyBtb3N0bHkgYSBkbWEtYnVmCnRo
aW5nIGFsbCB0aHJlZSBwYXRjaGVzIGFyZToKQWNrZWQtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJh
dm5ib3JnLm9yZz4KCglTYW0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
