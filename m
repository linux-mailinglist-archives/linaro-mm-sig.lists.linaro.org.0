Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B1708227C1E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 11:51:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDCDA665C3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 09:51:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D029A665CF; Tue, 21 Jul 2020 09:51:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1413E665A5;
	Tue, 21 Jul 2020 09:50:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EA8A66089D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 09:50:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D36E8665A5; Tue, 21 Jul 2020 09:50:50 +0000 (UTC)
Received: from mail-oo1-f68.google.com (mail-oo1-f68.google.com
 [209.85.161.68])
 by lists.linaro.org (Postfix) with ESMTPS id 79BB96089D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 09:50:49 +0000 (UTC)
Received: by mail-oo1-f68.google.com with SMTP id d125so3804863oob.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 02:50:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+Mxwe8+/2sAl5aV7lSivEyRgzWsOGsAmcnpV4ySF6Ks=;
 b=eYJEYuu0B2p/wA16KD1vH9xW9wDsfdHANzuWHqp/+WqgAoXH1+M1SoKrs/Y0u3gHHi
 D4EAJJ+lLASbfK5hRUOCeYqor2SbgdDG52woKlhaKVPv+pZyH6SKQL1Whi51wo2Y7iAz
 MESn9eX2EwWkp7wVAi4IdRFwh1eHUTtEGPwzMrFt1PhDg1GPI0FkMC6mmuKCuggT++MS
 ejfdHWxo6kVKgfliDVnLuit843jy4zmJOgfyId751SaleBlL+KOJqfC5gihwNsSawg4v
 Eoxymc+dWIVoREtrtzJ/QjTjB6C2z/A9jKjUk7wdENc0uW5lpaRgu/gNGp1JI9NONjkM
 +Zrg==
X-Gm-Message-State: AOAM5312bk2uMQa3+U7/R3EYZ9+62YUm6SQnGElsqzpgp63BAHz9O1vQ
 V9jzp1YRG0HiaLq7ziugZdPZrCnTdZA7Ht2+Wgzz1g==
X-Google-Smtp-Source: ABdhPJwI3gJQ0NtOaqhq9TtKHG92T7bavDoHOsV389jg+GbUKhN9jTjMRfRhnq5aQBSDS1D+4bTxdMPUI50KzrE96fM=
X-Received: by 2002:a4a:b6c5:: with SMTP id w5mr2677127ooo.89.1595325048653;
 Tue, 21 Jul 2020 02:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
 <2ca2c004-1e11-87f5-4bd8-761e1b44d21f@amd.com>
 <74727f17-b3a5-ca12-6db6-e47543797b72@shipmail.org>
In-Reply-To: <74727f17-b3a5-ca12-6db6-e47543797b72@shipmail.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 21 Jul 2020 11:50:37 +0200
Message-ID: <CAKMK7uFfMi5M5EkCeG6=tjuDANH4=gDLnFpxCYU-E-xyrxwYUg@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Stone <daniels@collabora.com>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>, Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document why
 indefinite fences are a bad idea
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

T24gVHVlLCBKdWwgMjEsIDIwMjAgYXQgMTE6MzggQU0gVGhvbWFzIEhlbGxzdHLDtm0gKEludGVs
KQo8dGhvbWFzX29zQHNoaXBtYWlsLm9yZz4gd3JvdGU6Cj4KPgo+IE9uIDcvMjEvMjAgMTA6NTUg
QU0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gPiBBbSAyMS4wNy4yMCB1bSAxMDo0NyBzY2hy
aWViIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6Cj4gPj4KPiA+PiBPbiA3LzIxLzIwIDk6NDUg
QU0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gPj4+IEFtIDIxLjA3LjIwIHVtIDA5OjQxIHNj
aHJpZWIgRGFuaWVsIFZldHRlcjoKPiA+Pj4+IE9uIE1vbiwgSnVsIDIwLCAyMDIwIGF0IDAxOjE1
OjE3UE0gKzAyMDAsIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkKPiA+Pj4+IHdyb3RlOgo+ID4+
Pj4+IEhpLAo+ID4+Pj4+Cj4gPj4+Pj4gT24gNy85LzIwIDI6MzMgUE0sIERhbmllbCBWZXR0ZXIg
d3JvdGU6Cj4gPj4+Pj4+IENvbWVzIHVwIGV2ZXJ5IGZldyB5ZWFycywgZ2V0cyBzb21ld2hhdCB0
ZWRpb3VzIHRvIGRpc2N1c3MsIGxldCdzCj4gPj4+Pj4+IHdyaXRlIHRoaXMgZG93biBvbmNlIGFu
ZCBmb3IgYWxsLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBXaGF0IEknbSBub3Qgc3VyZSBhYm91dCBpcyB3
aGV0aGVyIHRoZSB0ZXh0IHNob3VsZCBiZSBtb3JlCj4gPj4+Pj4+IGV4cGxpY2l0IGluCj4gPj4+
Pj4+IGZsYXQgb3V0IG1hbmRhdGluZyB0aGUgYW1ka2ZkIGV2aWN0aW9uIGZlbmNlcyBmb3IgbG9u
ZyBydW5uaW5nCj4gPj4+Pj4+IGNvbXB1dGUKPiA+Pj4+Pj4gd29ya2xvYWRzIG9yIHdvcmtsb2Fk
cyB3aGVyZSB1c2Vyc3BhY2UgZmVuY2luZyBpcyBhbGxvd2VkLgo+ID4+Pj4+IEFsdGhvdWdoIChp
biBteSBodW1ibGUgb3BpbmlvbikgaXQgbWlnaHQgYmUgcG9zc2libGUgdG8gY29tcGxldGVseQo+
ID4+Pj4+IHVudGFuZ2xlCj4gPj4+Pj4ga2VybmVsLWludHJvZHVjZWQgZmVuY2VzIGZvciByZXNv
dXJjZSBtYW5hZ2VtZW50IGFuZCBkbWEtZmVuY2VzCj4gPj4+Pj4gdXNlZCBmb3IKPiA+Pj4+PiBj
b21wbGV0aW9uLSBhbmQgZGVwZW5kZW5jeSB0cmFja2luZyBhbmQgbGlmdCBhIGxvdCBvZiByZXN0
cmljdGlvbnMKPiA+Pj4+PiBmb3IgdGhlCj4gPj4+Pj4gZG1hLWZlbmNlcywgaW5jbHVkaW5nIHBy
b2hpYml0aW5nIGluZmluaXRlIG9uZXMsIEkgdGhpbmsgdGhpcwo+ID4+Pj4+IG1ha2VzIHNlbnNl
Cj4gPj4+Pj4gZGVzY3JpYmluZyB0aGUgY3VycmVudCBzdGF0ZS4KPiA+Pj4+IFllYWggSSB0aGlu
ayBhIGZ1dHVyZSBwYXRjaCBuZWVkcyB0byB0eXBlIHVwIGhvdyB3ZSB3YW50IHRvIG1ha2UgdGhh
dAo+ID4+Pj4gaGFwcGVuIChmb3Igc29tZSBjcm9zcyBkcml2ZXIgY29uc2lzdGVuY3kpIGFuZCB3
aGF0IG5lZWRzIHRvIGJlCj4gPj4+PiBjb25zaWRlcmVkLiBTb21lIG9mIHRoZSBuZWNlc3Nhcnkg
cGFydHMgYXJlIGFscmVhZHkgdGhlcmUgKHdpdGgKPiA+Pj4+IGxpa2UgdGhlCj4gPj4+PiBwcmVl
bXB0aW9uIGZlbmNlcyBhbWRrZmQgaGFzIGFzIGFuIGV4YW1wbGUpLCBidXQgSSB0aGluayBzb21l
IGNsZWFyCj4gPj4+PiBkb2NzCj4gPj4+PiBvbiB3aGF0J3MgcmVxdWlyZWQgZnJvbSBib3RoIGh3
LCBkcml2ZXJzIGFuZCB1c2Vyc3BhY2Ugd291bGQgYmUgcmVhbGx5Cj4gPj4+PiBnb29kLgo+ID4+
Pgo+ID4+PiBJJ20gY3VycmVudGx5IHdyaXRpbmcgdGhhdCB1cCwgYnV0IHByb2JhYmx5IHN0aWxs
IG5lZWQgYSBmZXcgZGF5cwo+ID4+PiBmb3IgdGhpcy4KPiA+Pgo+ID4+IEdyZWF0ISBJIHB1dCBk
b3duIHNvbWUgKHZlcnkpIGluaXRpYWwgdGhvdWdodHMgYSBjb3VwbGUgb2Ygd2Vla3MgYWdvCj4g
Pj4gYnVpbGRpbmcgb24gZXZpY3Rpb24gZmVuY2VzIGZvciB2YXJpb3VzIGhhcmR3YXJlIGNvbXBs
ZXhpdHkgbGV2ZWxzIGhlcmU6Cj4gPj4KPiA+PiBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90
ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnaXRsYWIuZnJlZWRlc2t0b3Au
b3JnJTJGdGhvbWFzaCUyRmRvY3MlMkYtJTJGYmxvYiUyRm1hc3RlciUyRlVudGFuZ2xpbmclMjUy
MGRtYS1mZW5jZSUyNTIwYW5kJTI1MjBtZW1vcnklMjUyMGFsbG9jYXRpb24ub2R0JmFtcDtkYXRh
PTAyJTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3Qzg5NzhiYmQ3ODIzZTRiNDE2
NjM3MDhkODJkNTJhZGQzJTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdD
MCU3QzYzNzMwOTE4MDQyNDMxMjM5MCZhbXA7c2RhdGE9dFR4eDJ2Znpmd0xNMUlCSlNxcUFaUncx
NjA0UiUyRjBiSTNNd04xJTJGQmYyVlElM0QmYW1wO3Jlc2VydmVkPTAKPiA+Pgo+ID4KPiA+IEkg
ZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIHdpbGwgZXZlciBiZSBwb3NzaWJsZS4KPiA+Cj4gPiBTZWUg
dGhhdCBEYW5pZWwgZGVzY3JpYmVzIGluIGhpcyB0ZXh0IGlzIHRoYXQgaW5kZWZpbml0ZSBmZW5j
ZXMgYXJlIGEKPiA+IGJhZCBpZGVhIGZvciBtZW1vcnkgbWFuYWdlbWVudCwgYW5kIEkgdGhpbmsg
dGhhdCB0aGlzIGlzIGEgZml4ZWQgZmFjdC4KPiA+Cj4gPiBJbiBvdGhlciB3b3JkcyB0aGUgd2hv
bGUgY29uY2VwdCBvZiBzdWJtaXR0aW5nIHdvcmsgdG8gdGhlIGtlcm5lbAo+ID4gd2hpY2ggZGVw
ZW5kcyBvbiBzb21lIHVzZXIgc3BhY2UgaW50ZXJhY3Rpb24gZG9lc24ndCB3b3JrIGFuZCBuZXZl
ciB3aWxsLgo+Cj4gV2VsbCB0aGUgaWRlYSBoZXJlIGlzIHRoYXQgbWVtb3J5IG1hbmFnZW1lbnQg
d2lsbCAqbmV2ZXIqIGRlcGVuZCBvbgo+IGluZGVmaW5pdGUgZmVuY2VzOiBBcyBzb29uIGFzIHNv
bWVvbmUgd2FpdHMgb24gYSBtZW1vcnkgbWFuYWdlciBmZW5jZQo+IChiZSBpdCBldmljdGlvbiwg
c2hyaW5rZXIgb3IgbW11IG5vdGlmaWVyKSBpdCBicmVha3Mgb3V0IG9mIGFueQo+IGRtYS1mZW5j
ZSBkZXBlbmRlbmNpZXMgYW5kIC9vciB1c2VyLXNwYWNlIGludGVyYWN0aW9uLiBUaGUgdGV4dCB0
cmllcyB0bwo+IGRlc2NyaWJlIHdoYXQncyByZXF1aXJlZCB0byBiZSBhYmxlIHRvIGRvIHRoYXQg
KHNhdmUgZm9yIG5vbi1wcmVlbXB0aWJsZQo+IGdwdXMgd2hlcmUgc29tZW9uZSBzdWJtaXRzIGEg
Zm9yZXZlci1ydW5uaW5nIHNoYWRlcikuCgpZZWFoIEkgdGhpbmsgdGhhdCBwYXJ0IG9mIHlvdXIg
dGV4dCBpcyBnb29kIHRvIGRlc2NyaWJlIGhvdyB0bwp1bnRhbmdsZSBtZW1vcnkgZmVuY2VzIGZy
b20gc3luY2hyb25pemF0aW9uIGZlbmNlcyBnaXZlbiBob3cgbXVjaCB0aGUKaHcgY2FuIGRvLgoK
PiBTbyB3aGlsZSBJIHRoaW5rIHRoaXMgaXMgcG9zc2libGUgKHVudGlsIHNvbWVvbmUgY29tZXMg
dXAgd2l0aCBhIGNhc2UKPiB3aGVyZSBpdCB3b3VsZG4ndCB3b3JrIG9mIGNvdXJzZSksIEkgZ3Vl
c3MgRGFuaWVsIGhhcyBhIHBvaW50IGluIHRoYXQgaXQKPiB3b24ndCBoYXBwZW4gYmVjYXVzZSBv
ZiBpbmVydGlhIGFuZCB0aGVyZSBtaWdodCBiZSBiZXR0ZXIgb3B0aW9ucy4KClllYWggaXQncyBq
dXN0IEkgZG9uJ3Qgc2VlIG11Y2ggY2hhbmNlIGZvciBzcGxpdHRpbmcgZG1hLWZlbmNlIGl0c2Vs
Zi4KVGhhdCdzIGFsc28gd2h5IEknbSBub3QgcG9zaXRpdmUgb24gdGhlICJubyBodyBwcmVlbXB0
aW9uLCBvbmx5CnNjaGVkdWxlciIgY2FzZTogWW91IHN0aWxsIGhhdmUgYSBkbWFfZmVuY2UgZm9y
IHRoZSBiYXRjaCBpdHNlbGYsCndoaWNoIG1lYW5zIHN0aWxsIG5vIHVzZXJzcGFjZSBjb250cm9s
bGVkIHN5bmNocm9uaXphdGlvbiBvciBvdGhlcgpmb3JtIG9mIGluZGVmaW5pdGUgYmF0Y2hlcyBh
bGxvd2VkLiBTbyBub3QgZ2V0dGluZyB1cyBhbnkgY2xvc2VyIHRvCmVuYWJsaW5nIHRoZSBjb21w
dXRlIHVzZSBjYXNlcyBwZW9wbGUgd2FudC4gU28gbWluaW1hbGx5IEkgdGhpbmsgaHcKbmVlZHMg
dG8gYmUgYWJsZSB0byBwcmVlbXB0LCBhbmQgcHJlZW1wdCBmYWlybHkgcXVpY2tseSAoaS5lLiB3
aXRoaW4Kc2hhZGVycyBpZiB5b3UgaGF2ZSBsb25nIHJ1bm5pbmcgc2hhZGVycyBhcyB5b3VyIHVz
ZS1jYXNlKSwgb3Igc3VwcG9ydApncHUgcGFnZSBmYXVsdHMuIEFuZCBkZXBlbmRpbmcgaG93IGl0
IGFsbCB3b3JrcyBkaWZmZXJlbnQgcGFydHMgb2YgdGhlCmRyaXZlciBjb2RlIGVuZCB1cCBpbiBk
bWEgZmVuY2UgY3JpdGljYWwgc2VjdGlvbnMsIHdpdGggZGlmZmVyZW50CnJlc3RyaWN0aW9ucy4K
LURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9y
YXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
