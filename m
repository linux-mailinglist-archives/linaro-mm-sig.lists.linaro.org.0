Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6D22484D3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:35:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CCA660E68
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:35:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ED041619B1; Tue, 18 Aug 2020 12:35:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3231865F75;
	Tue, 18 Aug 2020 12:32:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3AC766073E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 10:47:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1EE3D665C5; Tue, 21 Jul 2020 10:47:41 +0000 (UTC)
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by lists.linaro.org (Postfix) with ESMTPS id 8F8856073E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 10:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 634B53FAA9;
 Tue, 21 Jul 2020 12:47:38 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lnu7aDB-FEDZ; Tue, 21 Jul 2020 12:47:37 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id B619E3FA36;
 Tue, 21 Jul 2020 12:47:33 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id C976C36014B;
 Tue, 21 Jul 2020 12:47:32 +0200 (CEST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
 <2ca2c004-1e11-87f5-4bd8-761e1b44d21f@amd.com>
 <74727f17-b3a5-ca12-6db6-e47543797b72@shipmail.org>
 <CAKMK7uFfMi5M5EkCeG6=tjuDANH4=gDLnFpxCYU-E-xyrxwYUg@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <ae4e4188-39e6-ec41-c11d-91e9211b4d3a@shipmail.org>
Date: Tue, 21 Jul 2020 12:47:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uFfMi5M5EkCeG6=tjuDANH4=gDLnFpxCYU-E-xyrxwYUg@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
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
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Ck9uIDcvMjEvMjAgMTE6NTAgQU0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gVHVlLCBKdWwg
MjEsIDIwMjAgYXQgMTE6MzggQU0gVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKQo+IDx0aG9tYXNf
b3NAc2hpcG1haWwub3JnPiB3cm90ZToKPj4KPj4gT24gNy8yMS8yMCAxMDo1NSBBTSwgQ2hyaXN0
aWFuIEvDtm5pZyB3cm90ZToKPj4+IEFtIDIxLjA3LjIwIHVtIDEwOjQ3IHNjaHJpZWIgVGhvbWFz
IEhlbGxzdHLDtm0gKEludGVsKToKPj4+PiBPbiA3LzIxLzIwIDk6NDUgQU0sIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6Cj4+Pj4+IEFtIDIxLjA3LjIwIHVtIDA5OjQxIHNjaHJpZWIgRGFuaWVsIFZl
dHRlcjoKPj4+Pj4+IE9uIE1vbiwgSnVsIDIwLCAyMDIwIGF0IDAxOjE1OjE3UE0gKzAyMDAsIFRo
b21hcyBIZWxsc3Ryw7ZtIChJbnRlbCkKPj4+Pj4+IHdyb3RlOgo+Pj4+Pj4+IEhpLAo+Pj4+Pj4+
Cj4+Pj4+Pj4gT24gNy85LzIwIDI6MzMgUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4+Pj4+
IENvbWVzIHVwIGV2ZXJ5IGZldyB5ZWFycywgZ2V0cyBzb21ld2hhdCB0ZWRpb3VzIHRvIGRpc2N1
c3MsIGxldCdzCj4+Pj4+Pj4+IHdyaXRlIHRoaXMgZG93biBvbmNlIGFuZCBmb3IgYWxsLgo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiBXaGF0IEknbSBub3Qgc3VyZSBhYm91dCBpcyB3aGV0aGVyIHRoZSB0ZXh0
IHNob3VsZCBiZSBtb3JlCj4+Pj4+Pj4+IGV4cGxpY2l0IGluCj4+Pj4+Pj4+IGZsYXQgb3V0IG1h
bmRhdGluZyB0aGUgYW1ka2ZkIGV2aWN0aW9uIGZlbmNlcyBmb3IgbG9uZyBydW5uaW5nCj4+Pj4+
Pj4+IGNvbXB1dGUKPj4+Pj4+Pj4gd29ya2xvYWRzIG9yIHdvcmtsb2FkcyB3aGVyZSB1c2Vyc3Bh
Y2UgZmVuY2luZyBpcyBhbGxvd2VkLgo+Pj4+Pj4+IEFsdGhvdWdoIChpbiBteSBodW1ibGUgb3Bp
bmlvbikgaXQgbWlnaHQgYmUgcG9zc2libGUgdG8gY29tcGxldGVseQo+Pj4+Pj4+IHVudGFuZ2xl
Cj4+Pj4+Pj4ga2VybmVsLWludHJvZHVjZWQgZmVuY2VzIGZvciByZXNvdXJjZSBtYW5hZ2VtZW50
IGFuZCBkbWEtZmVuY2VzCj4+Pj4+Pj4gdXNlZCBmb3IKPj4+Pj4+PiBjb21wbGV0aW9uLSBhbmQg
ZGVwZW5kZW5jeSB0cmFja2luZyBhbmQgbGlmdCBhIGxvdCBvZiByZXN0cmljdGlvbnMKPj4+Pj4+
PiBmb3IgdGhlCj4+Pj4+Pj4gZG1hLWZlbmNlcywgaW5jbHVkaW5nIHByb2hpYml0aW5nIGluZmlu
aXRlIG9uZXMsIEkgdGhpbmsgdGhpcwo+Pj4+Pj4+IG1ha2VzIHNlbnNlCj4+Pj4+Pj4gZGVzY3Jp
YmluZyB0aGUgY3VycmVudCBzdGF0ZS4KPj4+Pj4+IFllYWggSSB0aGluayBhIGZ1dHVyZSBwYXRj
aCBuZWVkcyB0byB0eXBlIHVwIGhvdyB3ZSB3YW50IHRvIG1ha2UgdGhhdAo+Pj4+Pj4gaGFwcGVu
IChmb3Igc29tZSBjcm9zcyBkcml2ZXIgY29uc2lzdGVuY3kpIGFuZCB3aGF0IG5lZWRzIHRvIGJl
Cj4+Pj4+PiBjb25zaWRlcmVkLiBTb21lIG9mIHRoZSBuZWNlc3NhcnkgcGFydHMgYXJlIGFscmVh
ZHkgdGhlcmUgKHdpdGgKPj4+Pj4+IGxpa2UgdGhlCj4+Pj4+PiBwcmVlbXB0aW9uIGZlbmNlcyBh
bWRrZmQgaGFzIGFzIGFuIGV4YW1wbGUpLCBidXQgSSB0aGluayBzb21lIGNsZWFyCj4+Pj4+PiBk
b2NzCj4+Pj4+PiBvbiB3aGF0J3MgcmVxdWlyZWQgZnJvbSBib3RoIGh3LCBkcml2ZXJzIGFuZCB1
c2Vyc3BhY2Ugd291bGQgYmUgcmVhbGx5Cj4+Pj4+PiBnb29kLgo+Pj4+PiBJJ20gY3VycmVudGx5
IHdyaXRpbmcgdGhhdCB1cCwgYnV0IHByb2JhYmx5IHN0aWxsIG5lZWQgYSBmZXcgZGF5cwo+Pj4+
PiBmb3IgdGhpcy4KPj4+PiBHcmVhdCEgSSBwdXQgZG93biBzb21lICh2ZXJ5KSBpbml0aWFsIHRo
b3VnaHRzIGEgY291cGxlIG9mIHdlZWtzIGFnbwo+Pj4+IGJ1aWxkaW5nIG9uIGV2aWN0aW9uIGZl
bmNlcyBmb3IgdmFyaW91cyBoYXJkd2FyZSBjb21wbGV4aXR5IGxldmVscyBoZXJlOgo+Pj4+Cj4+
Pj4gaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0
dHBzJTNBJTJGJTJGZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZyUyRnRob21hc2glMkZkb2NzJTJGLSUy
RmJsb2IlMkZtYXN0ZXIlMkZVbnRhbmdsaW5nJTI1MjBkbWEtZmVuY2UlMjUyMGFuZCUyNTIwbWVt
b3J5JTI1MjBhbGxvY2F0aW9uLm9kdCZhbXA7ZGF0YT0wMiU3QzAxJTdDY2hyaXN0aWFuLmtvZW5p
ZyU0MGFtZC5jb20lN0M4OTc4YmJkNzgyM2U0YjQxNjYzNzA4ZDgyZDUyYWRkMyU3QzNkZDg5NjFm
ZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2MzczMDkxODA0MjQzMTIzOTAmYW1w
O3NkYXRhPXRUeHgydmZ6ZndMTTFJQkpTcXFBWlJ3MTYwNFIlMkYwYkkzTXdOMSUyRkJmMlZRJTNE
JmFtcDtyZXNlcnZlZD0wCj4+Pj4KPj4+IEkgZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIHdpbGwgZXZl
ciBiZSBwb3NzaWJsZS4KPj4+Cj4+PiBTZWUgdGhhdCBEYW5pZWwgZGVzY3JpYmVzIGluIGhpcyB0
ZXh0IGlzIHRoYXQgaW5kZWZpbml0ZSBmZW5jZXMgYXJlIGEKPj4+IGJhZCBpZGVhIGZvciBtZW1v
cnkgbWFuYWdlbWVudCwgYW5kIEkgdGhpbmsgdGhhdCB0aGlzIGlzIGEgZml4ZWQgZmFjdC4KPj4+
Cj4+PiBJbiBvdGhlciB3b3JkcyB0aGUgd2hvbGUgY29uY2VwdCBvZiBzdWJtaXR0aW5nIHdvcmsg
dG8gdGhlIGtlcm5lbAo+Pj4gd2hpY2ggZGVwZW5kcyBvbiBzb21lIHVzZXIgc3BhY2UgaW50ZXJh
Y3Rpb24gZG9lc24ndCB3b3JrIGFuZCBuZXZlciB3aWxsLgo+PiBXZWxsIHRoZSBpZGVhIGhlcmUg
aXMgdGhhdCBtZW1vcnkgbWFuYWdlbWVudCB3aWxsICpuZXZlciogZGVwZW5kIG9uCj4+IGluZGVm
aW5pdGUgZmVuY2VzOiBBcyBzb29uIGFzIHNvbWVvbmUgd2FpdHMgb24gYSBtZW1vcnkgbWFuYWdl
ciBmZW5jZQo+PiAoYmUgaXQgZXZpY3Rpb24sIHNocmlua2VyIG9yIG1tdSBub3RpZmllcikgaXQg
YnJlYWtzIG91dCBvZiBhbnkKPj4gZG1hLWZlbmNlIGRlcGVuZGVuY2llcyBhbmQgL29yIHVzZXIt
c3BhY2UgaW50ZXJhY3Rpb24uIFRoZSB0ZXh0IHRyaWVzIHRvCj4+IGRlc2NyaWJlIHdoYXQncyBy
ZXF1aXJlZCB0byBiZSBhYmxlIHRvIGRvIHRoYXQgKHNhdmUgZm9yIG5vbi1wcmVlbXB0aWJsZQo+
PiBncHVzIHdoZXJlIHNvbWVvbmUgc3VibWl0cyBhIGZvcmV2ZXItcnVubmluZyBzaGFkZXIpLgo+
IFllYWggSSB0aGluayB0aGF0IHBhcnQgb2YgeW91ciB0ZXh0IGlzIGdvb2QgdG8gZGVzY3JpYmUg
aG93IHRvCj4gdW50YW5nbGUgbWVtb3J5IGZlbmNlcyBmcm9tIHN5bmNocm9uaXphdGlvbiBmZW5j
ZXMgZ2l2ZW4gaG93IG11Y2ggdGhlCj4gaHcgY2FuIGRvLgo+Cj4+IFNvIHdoaWxlIEkgdGhpbmsg
dGhpcyBpcyBwb3NzaWJsZSAodW50aWwgc29tZW9uZSBjb21lcyB1cCB3aXRoIGEgY2FzZQo+PiB3
aGVyZSBpdCB3b3VsZG4ndCB3b3JrIG9mIGNvdXJzZSksIEkgZ3Vlc3MgRGFuaWVsIGhhcyBhIHBv
aW50IGluIHRoYXQgaXQKPj4gd29uJ3QgaGFwcGVuIGJlY2F1c2Ugb2YgaW5lcnRpYSBhbmQgdGhl
cmUgbWlnaHQgYmUgYmV0dGVyIG9wdGlvbnMuCj4gWWVhaCBpdCdzIGp1c3QgSSBkb24ndCBzZWUg
bXVjaCBjaGFuY2UgZm9yIHNwbGl0dGluZyBkbWEtZmVuY2UgaXRzZWxmLgo+IFRoYXQncyBhbHNv
IHdoeSBJJ20gbm90IHBvc2l0aXZlIG9uIHRoZSAibm8gaHcgcHJlZW1wdGlvbiwgb25seQo+IHNj
aGVkdWxlciIgY2FzZTogWW91IHN0aWxsIGhhdmUgYSBkbWFfZmVuY2UgZm9yIHRoZSBiYXRjaCBp
dHNlbGYsCj4gd2hpY2ggbWVhbnMgc3RpbGwgbm8gdXNlcnNwYWNlIGNvbnRyb2xsZWQgc3luY2hy
b25pemF0aW9uIG9yIG90aGVyCj4gZm9ybSBvZiBpbmRlZmluaXRlIGJhdGNoZXMgYWxsb3dlZC4g
U28gbm90IGdldHRpbmcgdXMgYW55IGNsb3NlciB0bwo+IGVuYWJsaW5nIHRoZSBjb21wdXRlIHVz
ZSBjYXNlcyBwZW9wbGUgd2FudC4KClllcywgd2UgY2FuJ3QgZG8gbWFnaWMuIEFzIHNvb24gYXMg
YW4gaW5kZWZpbml0ZSBiYXRjaCBtYWtlcyBpdCB0byBzdWNoIApoYXJkd2FyZSB3ZSd2ZSBsb3N0
LiBCdXQgc2luY2Ugd2UgY2FuIGJyZWFrIG91dCB3aGlsZSB0aGUgYmF0Y2ggaXMgc3R1Y2sgCmlu
IHRoZSBzY2hlZHVsZXIgd2FpdGluZywgd2hhdCBJIGJlbGlldmUgd2UgKmNhbiogZG8gd2l0aCB0
aGlzIGFwcHJvYWNoIAppcyB0byBhdm9pZCBkZWFkbG9ja3MgZHVlIHRvIGxvY2FsbHkgdW5rbm93
biBkZXBlbmRlbmNpZXMsIHdoaWNoIGhhcyAKc29tZSBiZWFyaW5nIG9uIHRoaXMgZG9jdW1lbnRh
dGlvbiBwYXRjaCwgYW5kIGFsc28gdG8gYWxsb3cgbWVtb3J5IAphbGxvY2F0aW9uIGluIGRtYS1m
ZW5jZSAobm90IG1lbW9yeS1mZW5jZSkgY3JpdGljYWwgc2VjdGlvbnMsIGxpa2UgZ3B1IApmYXVs
dC0gYW5kIGVycm9yIGhhbmRsZXJzIHdpdGhvdXQgcmVzb3J0aW5nIHRvIHVzaW5nIG1lbW9yeSBw
b29scy4KCkJ1dCBhZ2Fpbi4gSSdtIG5vdCBzYXlpbmcgd2Ugc2hvdWxkIGFjdHVhbGx5IGltcGxl
bWVudCB0aGlzLiBCZXR0ZXIgdG8gCmNvbnNpZGVyIGl0IGFuZCByZWplY3QgaXQgdGhhbiBub3Qg
Y29uc2lkZXIgaXQgYXQgYWxsLgoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
