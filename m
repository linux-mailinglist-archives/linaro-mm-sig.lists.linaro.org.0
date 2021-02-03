Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9325F30E3F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 21:20:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3F4760C30
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 20:20:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A64A961081; Wed,  3 Feb 2021 20:20:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DE44614FF;
	Wed,  3 Feb 2021 20:20:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 07AF060C30
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 20:20:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E3AFD614FF; Wed,  3 Feb 2021 20:20:14 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by lists.linaro.org (Postfix) with ESMTPS id ADC8E60C30
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 20:20:13 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id m1so911481wml.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Feb 2021 12:20:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rQ5+s8Uk/H2oUlPmQuXd+AT/EsL+cy8XeHexkKTVc0E=;
 b=kiM8w7fFolUf5w/8s4QjrTm5H0krC0eHwkUi3QU+RMIXTfEVFd3Hwp8FKRlTPgwdg3
 d5YElQLaVYyDhoTydTV26nD2V9KdOIbP31TL1cJMjWi5+NbSWFBT1yTQCVMSSUTukWDA
 6q/4JECAHhBjwfg/f8CDLRfw82dq66mnxdFqo3aC0rFLipIbV4pfzQliow0swe8eopAr
 23dZBWpn47jX8ebBB+6uvKiPAnU9gjbABmMLg6eDVKKyvd/ucxI2W7R7Ckw+UayDwOpz
 O7pgsGP14W1MeAIzalLbEz2tu79Qq4waRCZvTUcNxvxpqGSi8Z1vB+O8uin2ofy/h7VR
 MFeg==
X-Gm-Message-State: AOAM532zxyKjsQJ0hwKCoQYi0SEqjWww5b7f8g2T9zz6lAKMLCYPC3Cl
 5tc//vrniH9sJ0u/hbRgLuelRYeCHOXX7ZDCTkBkyw==
X-Google-Smtp-Source: ABdhPJzotWwFJQ5FuudypJrg8p0gib5+AD54pH90o3lu7MbwZq0qzxIhjvQznVGTMfdsS9bLXHdCY/6M0s0OBT9Olnc=
X-Received: by 2002:a1c:4b05:: with SMTP id y5mr4326474wma.37.1612383612621;
 Wed, 03 Feb 2021 12:20:12 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
 <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
In-Reply-To: <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Wed, 3 Feb 2021 12:20:01 -0800
Message-ID: <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Christoph Hellwig <hch@infradead.org>, Sandeep Patil <sspatil@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Linux MM <linux-mm@kvack.org>,
 Robin Murphy <robin.murphy@arm.com>, James Jones <jajones@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Brian Starkey <Brian.Starkey@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Minchan Kim <minchan@kernel.org>, John Stultz <john.stultz@linaro.org>,
 Liam Mark <lmark@codeaurora.org>, Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Android Kernel Team <kernel-team@android.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

T24gV2VkLCBGZWIgMywgMjAyMSBhdCAxMjo1MiBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPiB3cm90ZToKPgo+IE9uIFdlZCwgRmViIDMsIDIwMjEgYXQgMjo1NyBBTSBN
YXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gVHVl
LCBGZWIgMDIsIDIwMjEgYXQgMDQ6MzE6MzNQTSAtMDgwMCwgU3VyZW4gQmFnaGRhc2FyeWFuIHdy
b3RlOgo+ID4gPiBSZXBsYWNlIEJVR19PTih2bWEtPnZtX2ZsYWdzICYgVk1fUEZOTUFQKSBpbiB2
bV9pbnNlcnRfcGFnZSB3aXRoCj4gPiA+IFdBUk5fT05fT05DRSBhbmQgcmV0dXJuaW5nIGFuIGVy
cm9yLiBUaGlzIGlzIHRvIGVuc3VyZSB1c2VycyBvZiB0aGUKPiA+ID4gdm1faW5zZXJ0X3BhZ2Ug
dGhhdCBzZXQgVk1fUEZOTUFQIGFyZSBub3RpZmllZCBvZiB0aGUgd3JvbmcgZmxhZyB1c2FnZQo+
ID4gPiBhbmQgZ2V0IGFuIGluZGljYXRpb24gb2YgYW4gZXJyb3Igd2l0aG91dCBwYW5pY2luZyB0
aGUga2VybmVsLgo+ID4gPiBUaGlzIHdpbGwgaGVscCBpZGVudGlmeWluZyBkcml2ZXJzIHRoYXQg
bmVlZCB0byBjbGVhciBWTV9QRk5NQVAgYmVmb3JlCj4gPiA+IHVzaW5nIGRtYWJ1ZiBzeXN0ZW0g
aGVhcCB3aGljaCBpcyBtb3ZpbmcgdG8gdXNlIHZtX2luc2VydF9wYWdlLgo+ID4KPiA+IE5BQ0su
Cj4gPgo+ID4gVGhlIHN5c3RlbSBtYXkgbm90IF9wYW5pY18sIGJ1dCBpdCBpcyBjbGVhcmx5IG5v
dyBfYnJva2VuXy4gIFRoZSBkZXZpY2UKPiA+IGRvZXNuJ3Qgd29yaywgYW5kIHNvIHRoZSBzeXN0
ZW0gaXMgdXNlbGVzcy4gIFlvdSBoYXZlbid0IHJlYWxseSBpbXByb3ZlZAo+ID4gYW55dGhpbmcg
aGVyZS4gIEp1c3QgYmxvYXRlZCB0aGUga2VybmVsIHdpdGggeWV0IGFub3RoZXIgX09OQ0UgdmFy
aWFibGUKPiA+IHRoYXQgaW4gYSBub3JtYWwgc3lzdGVtIHdpbGwgbmV2ZXIgZXZlciBldmVyIGJl
IHRyaWdnZXJlZC4KPgo+IEFsc28sIHdoYXQgdGhlIGhlY2sgYXJlIHlvdSBkb2luZyB3aXRoIHlv
dXIgZHJpdmVycz8gZG1hLWJ1ZiBtbWFwIG11c3QKPiBjYWxsIGRtYV9idWZfbW1hcCgpLCBldmVu
IGZvciBmb3J3YXJkZWQvcmVkaXJlY3RlZCBtbWFwcyBmcm9tIGRyaXZlcgo+IGNoYXIgbm9kZXMu
IElmIHRoYXQgZG9lc24ndCB3b3JrIHdlIGhhdmUgc29tZSBpc3N1ZXMgd2l0aCB0aGUgY2FsbGlu
Zwo+IGNvbnRyYWN0IGZvciB0aGF0IGZ1bmN0aW9uLCBub3QgaW4gdm1faW5zZXJ0X3BhZ2UuCgpU
aGUgcGFydGljdWxhciBpc3N1ZSBJIG9ic2VydmVkIChkZXRhaWxzIHdlcmUgcG9zdGVkIGluCmh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8xMzcyNDA5KSBpcyB0aGF0IERS
TSBkcml2ZXJzCnNldCBWTV9QRk5NQVAgZmxhZyAodmlhIGEgY2FsbCB0byBkcm1fZ2VtX21tYXBf
b2JqKSBiZWZvcmUgY2FsbGluZwpkbWFfYnVmX21tYXAuIFNvbWUgZHJpdmVycyBjbGVhciB0aGF0
IGZsYWcgYnV0IHNvbWUgZG9uJ3QuIEkgY291bGQgbm90CmZpbmQgdGhlIGFuc3dlciB0byB3aHkg
Vk1fUEZOTUFQIGlzIHJlcXVpcmVkIGZvciBkbWFidWYgbWFwcGluZ3MgYW5kCm1heWJlIHNvbWVv
bmUgY2FuIGV4cGxhaW4gdGhhdCBoZXJlPwpJZiB0aGVyZSBpcyBhIHJlYXNvbiB0byBzZXQgdGhp
cyBmbGFnIG90aGVyIHRoYW4gaGlzdG9yaWNhbCB1c2Ugb2YKY2FydmVvdXQgbWVtb3J5IHRoZW4g
d2Ugd2FudGVkIHRvIGNhdGNoIHN1Y2ggY2FzZXMgYW5kIGZpeCB0aGUgZHJpdmVycwp0aGF0IG1v
dmVkIHRvIHVzaW5nIGRtYWJ1ZiBoZWFwcy4gSG93ZXZlciBtYXliZSB0aGVyZSBhcmUgb3RoZXIK
cmVhc29ucyBhbmQgaWYgc28gSSB3b3VsZCBiZSB2ZXJ5IGdyYXRlZnVsIGlmIHNvbWVvbmUgY291
bGQgZXhwbGFpbgp0aGVtLiBUaGF0IHdvdWxkIGhlbHAgbWUgdG8gY29tZSB1cCB3aXRoIGEgYmV0
dGVyIHNvbHV0aW9uLgoKPiBGaW5hbGx5IHdoeSBleGFjdGx5IGRvIHdlIG5lZWQgdG8gbWFrZSB0
aGlzIHN3aXRjaCBmb3Igc3lzdGVtIGhlYXA/Cj4gSSd2ZSByZWNlbnRseSBsb29rZWQgYXQgZ3Vw
IHVzYWdlIGJ5IHJhbmRvbSBkcml2ZXJzLCBhbmQgZm91bmQgYSBsb3QKPiBvZiB3b3JyeWluZyB0
aGluZ3MgdGhlcmUuIGd1cCBvbiBkbWEtYnVmIGlzIHJlYWxseSBiYWQgaWRlYSBpbgo+IGdlbmVy
YWwuCgpUaGUgcmVhc29uIGZvciB0aGUgc3dpdGNoIGlzIHRvIGJlIGFibGUgdG8gYWNjb3VudCBk
bWFidWZzIGFsbG9jYXRlZAp1c2luZyBkbWFidWYgaGVhcHMgdG8gdGhlIHByb2Nlc3NlcyB0aGF0
IG1hcCB0aGVtLiBUaGUgbmV4dCBwYXRjaCBpbgp0aGlzIHNlcmllcyBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTM3NDg1MQppbXBsZW1lbnRpbmcgdGhlIHN3aXRjaCBj
b250YWlucyBtb3JlIGRldGFpbHMgYW5kIHRoZXJlIGlzIGFuIGFjdGl2ZQpkaXNjdXNzaW9uIHRo
ZXJlLiBXb3VsZCB5b3UgbWluZCBqb2luaW5nIHRoYXQgZGlzY3Vzc2lvbiB0byBrZWVwIGl0IGlu
Cm9uZSBwbGFjZT8KVGhhbmtzIQoKPiAtRGFuaWVsCj4gLS0KPiBEYW5pZWwgVmV0dGVyCj4gU29m
dHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gaHR0cDovL2Jsb2cuZmZ3bGwuY2gK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
