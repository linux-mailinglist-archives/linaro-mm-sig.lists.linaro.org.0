Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C315D30E50E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 22:42:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC812614FF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 21:42:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C900166049; Wed,  3 Feb 2021 21:42:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E66A861081;
	Wed,  3 Feb 2021 21:41:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id ABB83609A8
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 21:41:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 87CED61081; Wed,  3 Feb 2021 21:41:41 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 7FE47609A8
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 21:41:39 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id z6so961220wrq.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Feb 2021 13:41:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g4TI1e7gQdTzltegKMdoZTR4RsT2JvIHbsFUh2uPQzU=;
 b=C9e2J6Ohfk9/nTKDCk7JqYR5bMGlyEZ16RZ0EeqmH/xhk+RvEjl5k4v4ywAe8DlNHS
 tVOmt8njEvRx8CXj2DoC3880/s8tHhhkeXO9dqNqs8bfu0siEAuoSFnzXwkPlof3o+2O
 Np8m5fDcCynOInA3nU7CVwu+kBS7VoAwQ3btoszzYwmUv4MNwEl5xCZWkymAs3PN/Gm4
 Dt1oH3Lhfxx6hiEBpA+Y5yAqMbvG/IvyyA4gc57WNFrI19l9hqAtpnXABXZEdm9cJURQ
 ssMqWAGZmxhhF+8+bzTU5vU3hD6bxgJbCo83tKmsojkS2JSi4e3JEU+47IVy82cccwX0
 Hz4A==
X-Gm-Message-State: AOAM533j1CkSJwX0kYM1qb8b/J5wvjJZXDuQ1qT1MqbIdG3NF29fvMwL
 9LMn9zGtefDEm5ieNvmUifb9GAhrzX8qScGO/V570Q==
X-Google-Smtp-Source: ABdhPJzzh/22FCOvdxdEB1nz5RwcUyDObG7CumW8G2BNoPbJyps54cEi6LEoHpcOS3UqBhEPnFBnf/YNKMZ2wK03ovA=
X-Received: by 2002:a5d:453b:: with SMTP id j27mr5802147wra.92.1612388498425; 
 Wed, 03 Feb 2021 13:41:38 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
 <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
 <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
 <CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com>
 <CAKMK7uETu_m+=MHyPmqBbEP__qjMF_wmr4c2BiVTPcwE8c+5Mg@mail.gmail.com>
In-Reply-To: <CAKMK7uETu_m+=MHyPmqBbEP__qjMF_wmr4c2BiVTPcwE8c+5Mg@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Wed, 3 Feb 2021 13:41:26 -0800
Message-ID: <CAJuCfpHC6P5cJh-1hv=vjGHCCkM6mA_p19H6tCZmCDxhTuASkQ@mail.gmail.com>
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

T24gV2VkLCBGZWIgMywgMjAyMSBhdCAxOjI1IFBNIERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+Cj4gT24gV2VkLCBGZWIgMywgMjAyMSBhdCA5OjI5IFBNIERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+ID4KPiA+IE9uIFdl
ZCwgRmViIDMsIDIwMjEgYXQgOToyMCBQTSBTdXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29n
bGUuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gV2VkLCBGZWIgMywgMjAyMSBhdCAxMjo1MiBB
TSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToKPiA+ID4gPgo+
ID4gPiA+IE9uIFdlZCwgRmViIDMsIDIwMjEgYXQgMjo1NyBBTSBNYXR0aGV3IFdpbGNveCA8d2ls
bHlAaW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gT24gVHVlLCBGZWIg
MDIsIDIwMjEgYXQgMDQ6MzE6MzNQTSAtMDgwMCwgU3VyZW4gQmFnaGRhc2FyeWFuIHdyb3RlOgo+
ID4gPiA+ID4gPiBSZXBsYWNlIEJVR19PTih2bWEtPnZtX2ZsYWdzICYgVk1fUEZOTUFQKSBpbiB2
bV9pbnNlcnRfcGFnZSB3aXRoCj4gPiA+ID4gPiA+IFdBUk5fT05fT05DRSBhbmQgcmV0dXJuaW5n
IGFuIGVycm9yLiBUaGlzIGlzIHRvIGVuc3VyZSB1c2VycyBvZiB0aGUKPiA+ID4gPiA+ID4gdm1f
aW5zZXJ0X3BhZ2UgdGhhdCBzZXQgVk1fUEZOTUFQIGFyZSBub3RpZmllZCBvZiB0aGUgd3Jvbmcg
ZmxhZyB1c2FnZQo+ID4gPiA+ID4gPiBhbmQgZ2V0IGFuIGluZGljYXRpb24gb2YgYW4gZXJyb3Ig
d2l0aG91dCBwYW5pY2luZyB0aGUga2VybmVsLgo+ID4gPiA+ID4gPiBUaGlzIHdpbGwgaGVscCBp
ZGVudGlmeWluZyBkcml2ZXJzIHRoYXQgbmVlZCB0byBjbGVhciBWTV9QRk5NQVAgYmVmb3JlCj4g
PiA+ID4gPiA+IHVzaW5nIGRtYWJ1ZiBzeXN0ZW0gaGVhcCB3aGljaCBpcyBtb3ZpbmcgdG8gdXNl
IHZtX2luc2VydF9wYWdlLgo+ID4gPiA+ID4KPiA+ID4gPiA+IE5BQ0suCj4gPiA+ID4gPgo+ID4g
PiA+ID4gVGhlIHN5c3RlbSBtYXkgbm90IF9wYW5pY18sIGJ1dCBpdCBpcyBjbGVhcmx5IG5vdyBf
YnJva2VuXy4gIFRoZSBkZXZpY2UKPiA+ID4gPiA+IGRvZXNuJ3Qgd29yaywgYW5kIHNvIHRoZSBz
eXN0ZW0gaXMgdXNlbGVzcy4gIFlvdSBoYXZlbid0IHJlYWxseSBpbXByb3ZlZAo+ID4gPiA+ID4g
YW55dGhpbmcgaGVyZS4gIEp1c3QgYmxvYXRlZCB0aGUga2VybmVsIHdpdGggeWV0IGFub3RoZXIg
X09OQ0UgdmFyaWFibGUKPiA+ID4gPiA+IHRoYXQgaW4gYSBub3JtYWwgc3lzdGVtIHdpbGwgbmV2
ZXIgZXZlciBldmVyIGJlIHRyaWdnZXJlZC4KPiA+ID4gPgo+ID4gPiA+IEFsc28sIHdoYXQgdGhl
IGhlY2sgYXJlIHlvdSBkb2luZyB3aXRoIHlvdXIgZHJpdmVycz8gZG1hLWJ1ZiBtbWFwIG11c3QK
PiA+ID4gPiBjYWxsIGRtYV9idWZfbW1hcCgpLCBldmVuIGZvciBmb3J3YXJkZWQvcmVkaXJlY3Rl
ZCBtbWFwcyBmcm9tIGRyaXZlcgo+ID4gPiA+IGNoYXIgbm9kZXMuIElmIHRoYXQgZG9lc24ndCB3
b3JrIHdlIGhhdmUgc29tZSBpc3N1ZXMgd2l0aCB0aGUgY2FsbGluZwo+ID4gPiA+IGNvbnRyYWN0
IGZvciB0aGF0IGZ1bmN0aW9uLCBub3QgaW4gdm1faW5zZXJ0X3BhZ2UuCj4gPiA+Cj4gPiA+IFRo
ZSBwYXJ0aWN1bGFyIGlzc3VlIEkgb2JzZXJ2ZWQgKGRldGFpbHMgd2VyZSBwb3N0ZWQgaW4KPiA+
ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEzNzI0MDkpIGlzIHRo
YXQgRFJNIGRyaXZlcnMKPiA+ID4gc2V0IFZNX1BGTk1BUCBmbGFnICh2aWEgYSBjYWxsIHRvIGRy
bV9nZW1fbW1hcF9vYmopIGJlZm9yZSBjYWxsaW5nCj4gPiA+IGRtYV9idWZfbW1hcC4gU29tZSBk
cml2ZXJzIGNsZWFyIHRoYXQgZmxhZyBidXQgc29tZSBkb24ndC4gSSBjb3VsZCBub3QKPiA+ID4g
ZmluZCB0aGUgYW5zd2VyIHRvIHdoeSBWTV9QRk5NQVAgaXMgcmVxdWlyZWQgZm9yIGRtYWJ1ZiBt
YXBwaW5ncyBhbmQKPiA+ID4gbWF5YmUgc29tZW9uZSBjYW4gZXhwbGFpbiB0aGF0IGhlcmU/Cj4g
PiA+IElmIHRoZXJlIGlzIGEgcmVhc29uIHRvIHNldCB0aGlzIGZsYWcgb3RoZXIgdGhhbiBoaXN0
b3JpY2FsIHVzZSBvZgo+ID4gPiBjYXJ2ZW91dCBtZW1vcnkgdGhlbiB3ZSB3YW50ZWQgdG8gY2F0
Y2ggc3VjaCBjYXNlcyBhbmQgZml4IHRoZSBkcml2ZXJzCj4gPiA+IHRoYXQgbW92ZWQgdG8gdXNp
bmcgZG1hYnVmIGhlYXBzLiBIb3dldmVyIG1heWJlIHRoZXJlIGFyZSBvdGhlcgo+ID4gPiByZWFz
b25zIGFuZCBpZiBzbyBJIHdvdWxkIGJlIHZlcnkgZ3JhdGVmdWwgaWYgc29tZW9uZSBjb3VsZCBl
eHBsYWluCj4gPiA+IHRoZW0uIFRoYXQgd291bGQgaGVscCBtZSB0byBjb21lIHVwIHdpdGggYSBi
ZXR0ZXIgc29sdXRpb24uCj4gPiA+Cj4gPiA+ID4gRmluYWxseSB3aHkgZXhhY3RseSBkbyB3ZSBu
ZWVkIHRvIG1ha2UgdGhpcyBzd2l0Y2ggZm9yIHN5c3RlbSBoZWFwPwo+ID4gPiA+IEkndmUgcmVj
ZW50bHkgbG9va2VkIGF0IGd1cCB1c2FnZSBieSByYW5kb20gZHJpdmVycywgYW5kIGZvdW5kIGEg
bG90Cj4gPiA+ID4gb2Ygd29ycnlpbmcgdGhpbmdzIHRoZXJlLiBndXAgb24gZG1hLWJ1ZiBpcyBy
ZWFsbHkgYmFkIGlkZWEgaW4KPiA+ID4gPiBnZW5lcmFsLgo+ID4gPgo+ID4gPiBUaGUgcmVhc29u
IGZvciB0aGUgc3dpdGNoIGlzIHRvIGJlIGFibGUgdG8gYWNjb3VudCBkbWFidWZzIGFsbG9jYXRl
ZAo+ID4gPiB1c2luZyBkbWFidWYgaGVhcHMgdG8gdGhlIHByb2Nlc3NlcyB0aGF0IG1hcCB0aGVt
LiBUaGUgbmV4dCBwYXRjaCBpbgo+ID4gPiB0aGlzIHNlcmllcyBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTM3NDg1MQo+ID4gPiBpbXBsZW1lbnRpbmcgdGhlIHN3aXRj
aCBjb250YWlucyBtb3JlIGRldGFpbHMgYW5kIHRoZXJlIGlzIGFuIGFjdGl2ZQo+ID4gPiBkaXNj
dXNzaW9uIHRoZXJlLiBXb3VsZCB5b3UgbWluZCBqb2luaW5nIHRoYXQgZGlzY3Vzc2lvbiB0byBr
ZWVwIGl0IGluCj4gPiA+IG9uZSBwbGFjZT8KPiA+Cj4gPiBIb3cgbWFueSBzZW1pLXVucmVsYXRl
ZCBidWZmZXIgYWNjb3VudGluZyBzY2hlbWVzIGRvZXMgZ29vZ2xlIGNvbWUgdXAgd2l0aD8KPiA+
Cj4gPiBXZSdyZSBhdCB0aHJlZSB3aXRoIHRoaXMgb25lLgo+ID4KPiA+IEFuZCBhbHNvIHdlIF9j
YW5ub3RfIHJlcXVpcmVkIHRoYXQgYWxsIGRtYS1idWZzIGFyZSBiYWNrZWQgYnkgc3RydWN0Cj4g
PiBwYWdlLCBzbyByZXF1aXJpbmcgc3RydWN0IHBhZ2UgdG8gbWFrZSB0aGlzIHdvcmsgaXMgYSBu
by1nby4KPiA+Cj4gPiBTZWNvbmQsIHdlIGRvIG5vdCB3YW50IHRvIGFsbCBnZXRfdXNlcl9wYWdl
cyBhbmQgZnJpZW5kcyB0byB3b3JrIG9uCj4gPiBkbWEtYnVmLCBpdCBjYXVzZXMgYWxsIGtpbmRz
IG9mIHBhaW4uIFllcyBvbiBTb0Mgd2hlcmUgZG1hLWJ1ZiBhcmUKPiA+IGV4Y2x1c2l2ZWx5IGlu
IHN5c3RlbSBtZW1vcnkgeW91IGNhbiBtYXliZSBnZXQgYXdheSB3aXRoIHRoaXMsIGJ1dAo+ID4g
ZG1hLWJ1ZiBpcyBzdXBwb3NlZCB0byB3b3JrIGluIG1vcmUgcGxhY2VzIHRoYW4ganVzdCBBbmRy
b2lkIFNvQ3MuCj4KPiBJIGp1c3QgcmVhbGl6ZWQgdGhhdCB2bV9pbnNlcl9wYWdlIGRvZXNuJ3Qg
ZXZlbiB3b3JrIGZvciBDTUEsIGl0IHdvdWxkCj4gdXBzZXQgZ2V0X3VzZXJfcGFnZXMgcHJldHR5
IGJhZGx5IC0geW91J3JlIHRyeWluZyB0byBwaW4gYSBwYWdlIGluCj4gWk9ORV9NT1ZFQUJMRSBi
dXQgeW91IGNhbid0IG1vdmUgaXQgYmVjYXVzZSBpdCdzIHJhdGhlciBzcGVjaWFsLgo+IFZNX1NQ
RUNJQUwgaXMgZXhhY3RseSBtZWFudCB0byBjYXRjaCB0aGlzIHN0dWZmLgoKVGhhbmtzIGZvciB0
aGUgaW5wdXQsIERhbmllbCEgTGV0IG1lIHRoaW5rIGFib3V0IHRoZSBjYXNlcyB5b3UgcG9pbnRl
ZCBvdXQuCgpJTUhPLCB0aGUgaXNzdWUgd2l0aCBQU1MgaXMgdGhlIGRpZmZpY3VsdHkgb2YgY2Fs
Y3VsYXRpbmcgdGhpcyBtZXRyaWMKd2l0aG91dCBzdHJ1Y3QgcGFnZSB1c2FnZS4gSSBkb24ndCB0
aGluayB0aGF0IHByb2JsZW0gYmVjb21lcyBlYXNpZXIKaWYgd2UgdXNlIGNncm91cHMgb3IgYW55
IG90aGVyIEFQSS4gSSB3YW50ZWQgdG8gZW5hYmxlIGV4aXN0aW5nIFBTUwpjYWxjdWxhdGlvbiBt
ZWNoYW5pc21zIGZvciB0aGUgZG1hYnVmcyBrbm93biB0byBiZSBiYWNrZWQgYnkgc3RydWN0CnBh
Z2VzIChzaW5jZSB3ZSBrbm93IGhvdyB0aGUgaGVhcCBhbGxvY2F0ZWQgdGhhdCBtZW1vcnkpLCBi
dXQgc291bmRzCmxpa2UgdGhpcyB3b3VsZCBsZWFkIHRvIHByb2JsZW1zIHRoYXQgSSBkaWQgbm90
IGNvbnNpZGVyLgpUaGFua3MsClN1cmVuLgoKPiAtRGFuaWVsCj4KPiA+IElmIHlvdSB3YW50IHRv
IGFjY291bnQgZG1hLWJ1ZnMsIGFuZCBncHUgbWVtb3J5IGluIGdlbmVyYWwsIEknZCBzYXkKPiA+
IHRoZSBzb2xpZCBzb2x1dGlvbiBpcyBjZ3JvdXBzLiBUaGVyZSdzIHBhdGNoZXMgZmxvYXRpbmcg
YXJvdW5kLiBBbmQKPiA+IGdpdmVuIHRoYXQgR29vZ2xlIEFuZHJvaWQgY2FuJ3QgZXZlbiBhZ3Jl
ZSBpbnRlcm5hbGx5IG9uIHdoYXQgZXhhY3RseQo+ID4geW91IHdhbnQgSSdkIHNheSB3ZSBqdXN0
IG5lZWQgdG8gY3V0IG92ZXIgdG8gdGhhdCBhbmQgbWFrZSBpdCBoYXBwZW4uCj4gPgo+ID4gQ2hl
ZXJzLCBEYW5pZWwKPiA+IC0tCj4gPiBEYW5pZWwgVmV0dGVyCj4gPiBTb2Z0d2FyZSBFbmdpbmVl
ciwgSW50ZWwgQ29ycG9yYXRpb24KPiA+IGh0dHA6Ly9ibG9nLmZmd2xsLmNoCj4KPgo+Cj4gLS0K
PiBEYW5pZWwgVmV0dGVyCj4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4g
aHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
