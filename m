Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AF06C1A31FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 11:42:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9EAD664E8
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 09:42:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CF18F664F5; Thu,  9 Apr 2020 09:42:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
	TVD_SUBJ_WIPE_DEBT autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 511E862BBE;
	Thu,  9 Apr 2020 09:41:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E2439619F1
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 09:41:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BE1CD62BBE; Thu,  9 Apr 2020 09:41:33 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id 7CA90619F1
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 09:41:32 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id g23so9866397otq.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Apr 2020 02:41:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AAmPcakirZ+49aStGKItq0c+j+VEsXqfcBH/BMyGspk=;
 b=Tv+JrpHx2+U9oA+8B6s+C+tMfXoMg1BY75XZ87EdvofQJBmgroZanvc8HATDadR/L/
 oGTvgaRhhSVA1YtE+KKsoqOHIRcHmzh/SD5AM+/Jnx2aTCz0M/4dJu0smCqO4gr4Nr5S
 AUAVbxkk7Nor95LwKhg2y6Hmj8p29d4A61/5rZUpGx/YOVRfSKa342B35o3wc+Nx1q/3
 DWzNgeAmAppFq+FvcJWcCCuy2hc7k5Ln9cBaKGs+9k4YRbLDT9FVf6BlnjGuPxhveN1L
 Wrzr3UhGjxspFwjvuTOfJDfFcsIPYIwWXJVWbcdig2X3v5XoeJe4/KRdvMEsVwf8bi4M
 Cuxg==
X-Gm-Message-State: AGi0PuZNEtQNrbAg0XMdaTvpT3UCgru/b8lcA/HkpWIbmL6TjBgML8FZ
 5NHUmTTlldJq9fOvn4HYBRdj+gTxyoXVZ5m5RTvK7A==
X-Google-Smtp-Source: APiQypLHBVJAv55CZxyRjUHHZPFErxI7m2EAB+edMw28HekqHKAMU8pcbynFySqYUgFQY0OpR/l48dylQu4jTtXwGxw=
X-Received: by 2002:a4a:4190:: with SMTP id x138mr9186341ooa.35.1586425291875; 
 Thu, 09 Apr 2020 02:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
 <20200408122504.GO3456981@phenom.ffwll.local>
 <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
In-Reply-To: <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 9 Apr 2020 11:41:20 +0200
Message-ID: <CAKMK7uHtkLvdsWFGiAtkzVa5mpnDvXkn3CHZQ6bgJ_enbyAc8A@mail.gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>, Linux MM <linux-mm@kvack.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 "open list:GENERIC INCLUDE/A..." <linux-arch@vger.kernel.org>,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, X86 ML <x86@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Peter Zijlstra <peterz@infradead.org>,
 Nitin Gupta <ngupta@vflare.org>, Haiyang Zhang <haiyangz@microsoft.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 bpf <bpf@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [Linaro-mm-sig] [PATCH 19/28] gpu/drm: remove the powerpc hack
	in drm_legacy_sg_alloc
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

T24gVGh1LCBBcHIgOSwgMjAyMCBhdCAxMDo1NCBBTSBCZW5qYW1pbiBIZXJyZW5zY2htaWR0Cjxi
ZW5oQGtlcm5lbC5jcmFzaGluZy5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCAyMDIwLTA0LTA4IGF0
IDE0OjI1ICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gT24gV2VkLCBBcHIgMDgsIDIw
MjAgYXQgMDE6NTk6MTdQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4gPiA+IElm
IHRoaXMgY29kZSB3YXMgYnJva2VuIGZvciBub24tY29oZXJlbnQgY2FjaGVzIGEgY3J1ZGUgcG93
ZXJwYyBoYWNrCj4gPiA+IGlzbid0IGdvaW5nIHRvIGhlbHAgYW55b25lIGVsc2UuICBSZW1vdmUg
dGhlIGhhY2sgYXMgaXQgaXMgdGhlIGxhc3QKPiA+ID4gdXNlciBvZiBfX3ZtYWxsb2MgcGFzc2lu
ZyBhIHBhZ2UgcHJvdGVjdGlvbiBmbGFnIG90aGVyIHRoYW4gUEFHRV9LRVJORUwuCj4gPgo+ID4g
V2VsbCBCZW4gYWRkZWQgdGhpcyB0byBtYWtlIHN0dWZmIHdvcmsgb24gcHBjLCBvZmMgdGhlIGhv
bWUgZ3Jvd24gZG1hCj4gPiBsYXllciBpbiBkcm0gZnJvbSBiYWNrIHRoZW4gaXNuJ3QgZ29pbmcg
dG8gd29yayBpbiBvdGhlciBwbGFjZXMuIEkgZ3Vlc3MKPiA+IHNob3VsZCBoYXZlIGF0IGxlYXN0
IGFuIGFjayBmcm9tIGhpbSwgaW4gY2FzZSBhbnlvbmUgc3RpbGwgY2FyZXMgYWJvdXQKPiA+IHRo
aXMgb24gcHBjLiBBZGRpbmcgQmVuIHRvIGNjLgo+Cj4gVGhpcyB3YXMgZHVlIHRvIHNvbWUgZHJp
dmVycyAocmFkZW9uID8pIHRyeWluZyB0byB1c2Ugdm1hbGxvYyBwYWdlcyBmb3IKPiBjb2hlcmVu
dCBETUEsIHdoaWNoIG1lYW5zIG9uIHRob3NlIDR4eCBwb3dlcnBjJ3MgbmVlZCB0byBiZSBub24t
Y2FjaGVkLgo+Cj4gVGhlcmUgd2VyZSBtYWNoaW5lcyB1c2luZyB0aGF0ICg0NDAgYmFzZWQgaWly
YyksIHRob3VnaCBJIGhvbmVzdGx5Cj4gY2FuJ3QgdGVsbCBpZiBhbnlib2R5IHN0aWxsIHVzZXMg
YW55IG9mIGl0LgoKYWdwIHN1YnN5c3RlbSBzdGlsbCBzZWVtcyB0byBoYXBwaWx5IGRvIHRoYXQg
KHZtYWxsb2MgbWVtb3J5IGZvcgpkZXZpY2UgYWNjZXNzKSwgbmV2ZXIgaGF2aW5nIGJlZW4gcG9y
dGVkIHRvIGRtYSBhcGlzIChvciB3ZWxsCmNvbnZlcnRlZCB0byBpb21tdSBkcml2ZXJzLCB3aGlj
aCB0aGV5IGtpbmRhIGFyZSByZWFsbHkpLiBTbyBJIHRoaW5rCnRoaXMgYWxsIHN0aWxsIHdvcmtz
IGV4YWN0bHkgYXMgYmFjayB0aGVuLCBldmVuIHdpdGggdGhlIGttcyByYWRlb24KZHJpdmVycy4g
UXVlc3Rpb24gcmVhbGx5IGlzIHdoZXRoZXIgd2UgaGF2ZSB1c2VycyBsZWZ0LCBhbmQgSSBoYXZl
IG5vCmNsdWUgYWJvdXQgdGhhdCBlaXRoZXIuCgpOb3cgaWYgdGhlc2UgYm94ZXMgZGlkbid0IGV2
ZXIgaGF2ZSBhZ3AgdGhlbiBJIHRoaW5rIHdlIGNhbiBnZXQgYXdheQp3aXRoIGRlbGV0aW5nIHRo
aXMsIHNpbmNlIHdlJ3ZlIGFscmVhZHkgZGVsZXRlZCB0aGUgbGVnYWN5IHJhZGVvbgpkcml2ZXIu
IEFuZCB0aGF0IG9uZSB1c2VkIHZtYWxsb2MgZm9yIGV2ZXJ5dGhpbmcuIFRoZSBuZXcga21zIG9u
ZSBkb2VzCnVzZSB0aGUgZG1hLWFwaSBpZiB0aGUgZ3B1IGlzbid0IGNvbm5lY3RlZCB0aHJvdWdo
IGFncC4KLURhbmllbAoKPiBDaGVlcnMsCj4gQmVuLgo+Cj4gPiAtRGFuaWVsCj4gPgo+ID4gPgo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KPiA+ID4g
LS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3NjYXR0ZXIuYyB8IDExICstLS0tLS0tLS0t
Cj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEwIGRlbGV0aW9ucygtKQo+
ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX3NjYXR0ZXIuYwo+ID4gPiBpbmRleCBjYTUyMDAyOGIyY2IuLmY0
ZTYxODRkMTg3NyAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVy
LmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMKPiA+ID4gQEAgLTQz
LDE1ICs0Myw2IEBACj4gPiA+Cj4gPiA+ICAjZGVmaW5lIERFQlVHX1NDQVRURVIgMAo+ID4gPgo+
ID4gPiAtc3RhdGljIGlubGluZSB2b2lkICpkcm1fdm1hbGxvY19kbWEodW5zaWduZWQgbG9uZyBz
aXplKQo+ID4gPiAtewo+ID4gPiAtI2lmIGRlZmluZWQoX19wb3dlcnBjX18pICYmIGRlZmluZWQo
Q09ORklHX05PVF9DT0hFUkVOVF9DQUNIRSkKPiA+ID4gLSAgIHJldHVybiBfX3ZtYWxsb2Moc2l6
ZSwgR0ZQX0tFUk5FTCwgcGdwcm90X25vbmNhY2hlZF93YyhQQUdFX0tFUk5FTCkpOwo+ID4gPiAt
I2Vsc2UKPiA+ID4gLSAgIHJldHVybiB2bWFsbG9jXzMyKHNpemUpOwo+ID4gPiAtI2VuZGlmCj4g
PiA+IC19Cj4gPiA+IC0KPiA+ID4gIHN0YXRpYyB2b2lkIGRybV9zZ19jbGVhbnVwKHN0cnVjdCBk
cm1fc2dfbWVtICogZW50cnkpCj4gPiA+ICB7Cj4gPiA+ICAgICBzdHJ1Y3QgcGFnZSAqcGFnZTsK
PiA+ID4gQEAgLTEyNiw3ICsxMTcsNyBAQCBpbnQgZHJtX2xlZ2FjeV9zZ19hbGxvYyhzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ID4gPiAgICAgICAgICAgICByZXR1cm4gLUVO
T01FTTsKPiA+ID4gICAgIH0KPiA+ID4KPiA+ID4gLSAgIGVudHJ5LT52aXJ0dWFsID0gZHJtX3Zt
YWxsb2NfZG1hKHBhZ2VzIDw8IFBBR0VfU0hJRlQpOwo+ID4gPiArICAgZW50cnktPnZpcnR1YWwg
PSB2bWFsbG9jXzMyKHBhZ2VzIDw8IFBBR0VfU0hJRlQpOwo+ID4gPiAgICAgaWYgKCFlbnRyeS0+
dmlydHVhbCkgewo+ID4gPiAgICAgICAgICAgICBrZnJlZShlbnRyeS0+YnVzYWRkcik7Cj4gPiA+
ICAgICAgICAgICAgIGtmcmVlKGVudHJ5LT5wYWdlbGlzdCk7Cj4gPiA+IC0tCj4gPiA+IDIuMjUu
MQo+ID4gPgo+ID4KPiA+Cj4KCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZnds
bC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
