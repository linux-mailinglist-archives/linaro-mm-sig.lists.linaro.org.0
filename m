Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D8630E4EB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 22:26:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCCAB60C30
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 21:26:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BCF1666049; Wed,  3 Feb 2021 21:26:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7E0461081;
	Wed,  3 Feb 2021 21:25:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9B1FF607DB
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 21:25:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 80AAA61081; Wed,  3 Feb 2021 21:25:25 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
 [209.85.210.53])
 by lists.linaro.org (Postfix) with ESMTPS id 1FE4C607DB
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 21:25:24 +0000 (UTC)
Received: by mail-ot1-f53.google.com with SMTP id d1so1262415otl.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Feb 2021 13:25:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iZMC9aBcPlgaxRBYNOkc0uhviDBibZJkuU/B+Oy0jvs=;
 b=RkbjVfF26/pb3QBnX8mxiPAz6+U4lWhrCk3VFkH/RNhigicTpTvWi0nYpkERlBJ0b0
 4+T15RdohfGz6ZMC/BQcx3IWWMuJbire/mxjo5fFhhLH8mND1xwpEuDqOu626gv/Sspp
 /YNiIGeNnPp9R/NHp5GintHnnW8Wf01dodfUb2fI9l6hNOPbTSWe1pFSDDMFZbUFIVp8
 hs5G3CiHGXykOs/7/FKhALtKK0SYjqtagsmsvcrl8OUFDybFA0gZunQ+2iGO9j3HRUpb
 B3WrC3izgheol9wqO6zWY2wosluqla7mtLpLt/ORlsMR0+t2n6m0R9pe+/y/NhDoeFmE
 8LdQ==
X-Gm-Message-State: AOAM5302ZH/oryPBhs5Kc/moLK1kp8m186U9K112LShYhjHyL48w71+M
 TGyRwNj97cGaRbv2dFYepQlAfCgZJlq44fQg/WWHcg==
X-Google-Smtp-Source: ABdhPJyeyn1ayHYYRh5/JJcIY/+l0YzWXziRkV8RSQ+9BR+8vImNPQYSnTETeFgdBKs6kdQJIsa6PUWdvh/NnD62vdI=
X-Received: by 2002:a9d:b85:: with SMTP id 5mr3433355oth.281.1612387523565;
 Wed, 03 Feb 2021 13:25:23 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
 <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
 <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
 <CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com>
In-Reply-To: <CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 3 Feb 2021 22:25:11 +0100
Message-ID: <CAKMK7uETu_m+=MHyPmqBbEP__qjMF_wmr4c2BiVTPcwE8c+5Mg@mail.gmail.com>
To: Suren Baghdasaryan <surenb@google.com>
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

T24gV2VkLCBGZWIgMywgMjAyMSBhdCA5OjI5IFBNIERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+Cj4gT24gV2VkLCBGZWIgMywgMjAyMSBhdCA5OjIwIFBNIFN1
cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFdl
ZCwgRmViIDMsIDIwMjEgYXQgMTI6NTIgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFdlZCwgRmViIDMsIDIwMjEgYXQgMjo1NyBB
TSBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4gPiA+ID4KPiA+
ID4gPiBPbiBUdWUsIEZlYiAwMiwgMjAyMSBhdCAwNDozMTozM1BNIC0wODAwLCBTdXJlbiBCYWdo
ZGFzYXJ5YW4gd3JvdGU6Cj4gPiA+ID4gPiBSZXBsYWNlIEJVR19PTih2bWEtPnZtX2ZsYWdzICYg
Vk1fUEZOTUFQKSBpbiB2bV9pbnNlcnRfcGFnZSB3aXRoCj4gPiA+ID4gPiBXQVJOX09OX09OQ0Ug
YW5kIHJldHVybmluZyBhbiBlcnJvci4gVGhpcyBpcyB0byBlbnN1cmUgdXNlcnMgb2YgdGhlCj4g
PiA+ID4gPiB2bV9pbnNlcnRfcGFnZSB0aGF0IHNldCBWTV9QRk5NQVAgYXJlIG5vdGlmaWVkIG9m
IHRoZSB3cm9uZyBmbGFnIHVzYWdlCj4gPiA+ID4gPiBhbmQgZ2V0IGFuIGluZGljYXRpb24gb2Yg
YW4gZXJyb3Igd2l0aG91dCBwYW5pY2luZyB0aGUga2VybmVsLgo+ID4gPiA+ID4gVGhpcyB3aWxs
IGhlbHAgaWRlbnRpZnlpbmcgZHJpdmVycyB0aGF0IG5lZWQgdG8gY2xlYXIgVk1fUEZOTUFQIGJl
Zm9yZQo+ID4gPiA+ID4gdXNpbmcgZG1hYnVmIHN5c3RlbSBoZWFwIHdoaWNoIGlzIG1vdmluZyB0
byB1c2Ugdm1faW5zZXJ0X3BhZ2UuCj4gPiA+ID4KPiA+ID4gPiBOQUNLLgo+ID4gPiA+Cj4gPiA+
ID4gVGhlIHN5c3RlbSBtYXkgbm90IF9wYW5pY18sIGJ1dCBpdCBpcyBjbGVhcmx5IG5vdyBfYnJv
a2VuXy4gIFRoZSBkZXZpY2UKPiA+ID4gPiBkb2Vzbid0IHdvcmssIGFuZCBzbyB0aGUgc3lzdGVt
IGlzIHVzZWxlc3MuICBZb3UgaGF2ZW4ndCByZWFsbHkgaW1wcm92ZWQKPiA+ID4gPiBhbnl0aGlu
ZyBoZXJlLiAgSnVzdCBibG9hdGVkIHRoZSBrZXJuZWwgd2l0aCB5ZXQgYW5vdGhlciBfT05DRSB2
YXJpYWJsZQo+ID4gPiA+IHRoYXQgaW4gYSBub3JtYWwgc3lzdGVtIHdpbGwgbmV2ZXIgZXZlciBl
dmVyIGJlIHRyaWdnZXJlZC4KPiA+ID4KPiA+ID4gQWxzbywgd2hhdCB0aGUgaGVjayBhcmUgeW91
IGRvaW5nIHdpdGggeW91ciBkcml2ZXJzPyBkbWEtYnVmIG1tYXAgbXVzdAo+ID4gPiBjYWxsIGRt
YV9idWZfbW1hcCgpLCBldmVuIGZvciBmb3J3YXJkZWQvcmVkaXJlY3RlZCBtbWFwcyBmcm9tIGRy
aXZlcgo+ID4gPiBjaGFyIG5vZGVzLiBJZiB0aGF0IGRvZXNuJ3Qgd29yayB3ZSBoYXZlIHNvbWUg
aXNzdWVzIHdpdGggdGhlIGNhbGxpbmcKPiA+ID4gY29udHJhY3QgZm9yIHRoYXQgZnVuY3Rpb24s
IG5vdCBpbiB2bV9pbnNlcnRfcGFnZS4KPiA+Cj4gPiBUaGUgcGFydGljdWxhciBpc3N1ZSBJIG9i
c2VydmVkIChkZXRhaWxzIHdlcmUgcG9zdGVkIGluCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9wYXRjaHdvcmsvcGF0Y2gvMTM3MjQwOSkgaXMgdGhhdCBEUk0gZHJpdmVycwo+ID4gc2V0IFZN
X1BGTk1BUCBmbGFnICh2aWEgYSBjYWxsIHRvIGRybV9nZW1fbW1hcF9vYmopIGJlZm9yZSBjYWxs
aW5nCj4gPiBkbWFfYnVmX21tYXAuIFNvbWUgZHJpdmVycyBjbGVhciB0aGF0IGZsYWcgYnV0IHNv
bWUgZG9uJ3QuIEkgY291bGQgbm90Cj4gPiBmaW5kIHRoZSBhbnN3ZXIgdG8gd2h5IFZNX1BGTk1B
UCBpcyByZXF1aXJlZCBmb3IgZG1hYnVmIG1hcHBpbmdzIGFuZAo+ID4gbWF5YmUgc29tZW9uZSBj
YW4gZXhwbGFpbiB0aGF0IGhlcmU/Cj4gPiBJZiB0aGVyZSBpcyBhIHJlYXNvbiB0byBzZXQgdGhp
cyBmbGFnIG90aGVyIHRoYW4gaGlzdG9yaWNhbCB1c2Ugb2YKPiA+IGNhcnZlb3V0IG1lbW9yeSB0
aGVuIHdlIHdhbnRlZCB0byBjYXRjaCBzdWNoIGNhc2VzIGFuZCBmaXggdGhlIGRyaXZlcnMKPiA+
IHRoYXQgbW92ZWQgdG8gdXNpbmcgZG1hYnVmIGhlYXBzLiBIb3dldmVyIG1heWJlIHRoZXJlIGFy
ZSBvdGhlcgo+ID4gcmVhc29ucyBhbmQgaWYgc28gSSB3b3VsZCBiZSB2ZXJ5IGdyYXRlZnVsIGlm
IHNvbWVvbmUgY291bGQgZXhwbGFpbgo+ID4gdGhlbS4gVGhhdCB3b3VsZCBoZWxwIG1lIHRvIGNv
bWUgdXAgd2l0aCBhIGJldHRlciBzb2x1dGlvbi4KPiA+Cj4gPiA+IEZpbmFsbHkgd2h5IGV4YWN0
bHkgZG8gd2UgbmVlZCB0byBtYWtlIHRoaXMgc3dpdGNoIGZvciBzeXN0ZW0gaGVhcD8KPiA+ID4g
SSd2ZSByZWNlbnRseSBsb29rZWQgYXQgZ3VwIHVzYWdlIGJ5IHJhbmRvbSBkcml2ZXJzLCBhbmQg
Zm91bmQgYSBsb3QKPiA+ID4gb2Ygd29ycnlpbmcgdGhpbmdzIHRoZXJlLiBndXAgb24gZG1hLWJ1
ZiBpcyByZWFsbHkgYmFkIGlkZWEgaW4KPiA+ID4gZ2VuZXJhbC4KPiA+Cj4gPiBUaGUgcmVhc29u
IGZvciB0aGUgc3dpdGNoIGlzIHRvIGJlIGFibGUgdG8gYWNjb3VudCBkbWFidWZzIGFsbG9jYXRl
ZAo+ID4gdXNpbmcgZG1hYnVmIGhlYXBzIHRvIHRoZSBwcm9jZXNzZXMgdGhhdCBtYXAgdGhlbS4g
VGhlIG5leHQgcGF0Y2ggaW4KPiA+IHRoaXMgc2VyaWVzIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3BhdGNod29yay9wYXRjaC8xMzc0ODUxCj4gPiBpbXBsZW1lbnRpbmcgdGhlIHN3aXRjaCBjb250
YWlucyBtb3JlIGRldGFpbHMgYW5kIHRoZXJlIGlzIGFuIGFjdGl2ZQo+ID4gZGlzY3Vzc2lvbiB0
aGVyZS4gV291bGQgeW91IG1pbmQgam9pbmluZyB0aGF0IGRpc2N1c3Npb24gdG8ga2VlcCBpdCBp
bgo+ID4gb25lIHBsYWNlPwo+Cj4gSG93IG1hbnkgc2VtaS11bnJlbGF0ZWQgYnVmZmVyIGFjY291
bnRpbmcgc2NoZW1lcyBkb2VzIGdvb2dsZSBjb21lIHVwIHdpdGg/Cj4KPiBXZSdyZSBhdCB0aHJl
ZSB3aXRoIHRoaXMgb25lLgo+Cj4gQW5kIGFsc28gd2UgX2Nhbm5vdF8gcmVxdWlyZWQgdGhhdCBh
bGwgZG1hLWJ1ZnMgYXJlIGJhY2tlZCBieSBzdHJ1Y3QKPiBwYWdlLCBzbyByZXF1aXJpbmcgc3Ry
dWN0IHBhZ2UgdG8gbWFrZSB0aGlzIHdvcmsgaXMgYSBuby1nby4KPgo+IFNlY29uZCwgd2UgZG8g
bm90IHdhbnQgdG8gYWxsIGdldF91c2VyX3BhZ2VzIGFuZCBmcmllbmRzIHRvIHdvcmsgb24KPiBk
bWEtYnVmLCBpdCBjYXVzZXMgYWxsIGtpbmRzIG9mIHBhaW4uIFllcyBvbiBTb0Mgd2hlcmUgZG1h
LWJ1ZiBhcmUKPiBleGNsdXNpdmVseSBpbiBzeXN0ZW0gbWVtb3J5IHlvdSBjYW4gbWF5YmUgZ2V0
IGF3YXkgd2l0aCB0aGlzLCBidXQKPiBkbWEtYnVmIGlzIHN1cHBvc2VkIHRvIHdvcmsgaW4gbW9y
ZSBwbGFjZXMgdGhhbiBqdXN0IEFuZHJvaWQgU29Dcy4KCkkganVzdCByZWFsaXplZCB0aGF0IHZt
X2luc2VyX3BhZ2UgZG9lc24ndCBldmVuIHdvcmsgZm9yIENNQSwgaXQgd291bGQKdXBzZXQgZ2V0
X3VzZXJfcGFnZXMgcHJldHR5IGJhZGx5IC0geW91J3JlIHRyeWluZyB0byBwaW4gYSBwYWdlIGlu
ClpPTkVfTU9WRUFCTEUgYnV0IHlvdSBjYW4ndCBtb3ZlIGl0IGJlY2F1c2UgaXQncyByYXRoZXIg
c3BlY2lhbC4KVk1fU1BFQ0lBTCBpcyBleGFjdGx5IG1lYW50IHRvIGNhdGNoIHRoaXMgc3R1ZmYu
Ci1EYW5pZWwKCj4gSWYgeW91IHdhbnQgdG8gYWNjb3VudCBkbWEtYnVmcywgYW5kIGdwdSBtZW1v
cnkgaW4gZ2VuZXJhbCwgSSdkIHNheQo+IHRoZSBzb2xpZCBzb2x1dGlvbiBpcyBjZ3JvdXBzLiBU
aGVyZSdzIHBhdGNoZXMgZmxvYXRpbmcgYXJvdW5kLiBBbmQKPiBnaXZlbiB0aGF0IEdvb2dsZSBB
bmRyb2lkIGNhbid0IGV2ZW4gYWdyZWUgaW50ZXJuYWxseSBvbiB3aGF0IGV4YWN0bHkKPiB5b3Ug
d2FudCBJJ2Qgc2F5IHdlIGp1c3QgbmVlZCB0byBjdXQgb3ZlciB0byB0aGF0IGFuZCBtYWtlIGl0
IGhhcHBlbi4KPgo+IENoZWVycywgRGFuaWVsCj4gLS0KPiBEYW5pZWwgVmV0dGVyCj4gU29mdHdh
cmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKCgoK
LS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0
dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
