Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E25FC2291D6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jul 2020 09:12:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1891C61936
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jul 2020 07:12:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0413B66014; Wed, 22 Jul 2020 07:12:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A50061942;
	Wed, 22 Jul 2020 07:12:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B3638607B2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jul 2020 07:12:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A4AC661942; Wed, 22 Jul 2020 07:12:08 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by lists.linaro.org (Postfix) with ESMTPS id A917E607B2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jul 2020 07:12:06 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id e4so1035430oib.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jul 2020 00:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JwkeYyBomvbYnFOaLpEKlvJ8DzuwKSpH8FekeAKJGLk=;
 b=hTDOnn1wsvl+uSew0Z6WN9UABp/8CeFT1thNeEVbQU8ZNUdnH08wT25NeFlSpemm7M
 yqmtMGZyrLfgsrlpNb+wQ+bmGnNpnHSfTzmvrf4z89qB1RjnWlTGWbHnvMxe8XeJd8//
 pV3F8jHYkgKeltI76qMTekNVsHb04tMwt5x4eJ6jZW1DQEdUbyINsqNQv7CjpC+q3WGa
 mL2pEBkhggoOCKAY2pnRvYD3+AfUtLrvQPfy7qXvHWCkfh7zi1l0FvNN+7CvbK8o5g8e
 803vyzgoLiCfKftDcZC/+lQf9nC7OiX7j1OfNWr7rGr8TPnBW28jbHn5TT2uArrr4DCk
 pgRw==
X-Gm-Message-State: AOAM532MMjNi9jjcTresUbu7LO22a7WXQcVyqhEvz19canpWUUzv8pzs
 n/8+c65jBZ5aIq81mCZBh3I0aYsZW6Pr8bvmPlmzfA==
X-Google-Smtp-Source: ABdhPJw79eBtwBgNaIl2ZcTK/cPqRyZb7BtTpgm+YE8+ssCbvckOKoeqxVWT4IlUKWv7BYthNQjzDv0cdeiPNmWCvMQ=
X-Received: by 2002:a05:6808:88:: with SMTP id
 s8mr5710875oic.101.1595401926052; 
 Wed, 22 Jul 2020 00:12:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
 <CAPM=9twUWeenf-26GEvkuKo3wHgS3BCyrva=sNaWo6+=A5qdoQ@mail.gmail.com>
 <805c49b7-f0b3-45dc-5fe3-b352f0971527@shipmail.org>
In-Reply-To: <805c49b7-f0b3-45dc-5fe3-b352f0971527@shipmail.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 22 Jul 2020 09:11:55 +0200
Message-ID: <CAKMK7uHhhxBC2MvnNnU9FjxJaWkEcP3m5m7AN3yzfw=wxFsckA@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Felix Kuehling <Felix.Kuehling@amd.com>,
 Daniel Stone <daniels@collabora.com>, linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>, Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
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

T24gV2VkLCBKdWwgMjIsIDIwMjAgYXQgODo0NSBBTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
Cjx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPgo+Cj4gT24gMjAyMC0wNy0yMiAwMDo0
NSwgRGF2ZSBBaXJsaWUgd3JvdGU6Cj4gPiBPbiBUdWUsIDIxIEp1bCAyMDIwIGF0IDE4OjQ3LCBU
aG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpCj4gPiA8dGhvbWFzX29zQHNoaXBtYWlsLm9yZz4gd3Jv
dGU6Cj4gPj4KPiA+PiBPbiA3LzIxLzIwIDk6NDUgQU0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
Cj4gPj4+IEFtIDIxLjA3LjIwIHVtIDA5OjQxIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPiA+Pj4+
IE9uIE1vbiwgSnVsIDIwLCAyMDIwIGF0IDAxOjE1OjE3UE0gKzAyMDAsIFRob21hcyBIZWxsc3Ry
w7ZtIChJbnRlbCkKPiA+Pj4+IHdyb3RlOgo+ID4+Pj4+IEhpLAo+ID4+Pj4+Cj4gPj4+Pj4gT24g
Ny85LzIwIDI6MzMgUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPj4+Pj4+IENvbWVzIHVwIGV2
ZXJ5IGZldyB5ZWFycywgZ2V0cyBzb21ld2hhdCB0ZWRpb3VzIHRvIGRpc2N1c3MsIGxldCdzCj4g
Pj4+Pj4+IHdyaXRlIHRoaXMgZG93biBvbmNlIGFuZCBmb3IgYWxsLgo+ID4+Pj4+Pgo+ID4+Pj4+
PiBXaGF0IEknbSBub3Qgc3VyZSBhYm91dCBpcyB3aGV0aGVyIHRoZSB0ZXh0IHNob3VsZCBiZSBt
b3JlIGV4cGxpY2l0IGluCj4gPj4+Pj4+IGZsYXQgb3V0IG1hbmRhdGluZyB0aGUgYW1ka2ZkIGV2
aWN0aW9uIGZlbmNlcyBmb3IgbG9uZyBydW5uaW5nIGNvbXB1dGUKPiA+Pj4+Pj4gd29ya2xvYWRz
IG9yIHdvcmtsb2FkcyB3aGVyZSB1c2Vyc3BhY2UgZmVuY2luZyBpcyBhbGxvd2VkLgo+ID4+Pj4+
IEFsdGhvdWdoIChpbiBteSBodW1ibGUgb3BpbmlvbikgaXQgbWlnaHQgYmUgcG9zc2libGUgdG8g
Y29tcGxldGVseQo+ID4+Pj4+IHVudGFuZ2xlCj4gPj4+Pj4ga2VybmVsLWludHJvZHVjZWQgZmVu
Y2VzIGZvciByZXNvdXJjZSBtYW5hZ2VtZW50IGFuZCBkbWEtZmVuY2VzIHVzZWQKPiA+Pj4+PiBm
b3IKPiA+Pj4+PiBjb21wbGV0aW9uLSBhbmQgZGVwZW5kZW5jeSB0cmFja2luZyBhbmQgbGlmdCBh
IGxvdCBvZiByZXN0cmljdGlvbnMKPiA+Pj4+PiBmb3IgdGhlCj4gPj4+Pj4gZG1hLWZlbmNlcywg
aW5jbHVkaW5nIHByb2hpYml0aW5nIGluZmluaXRlIG9uZXMsIEkgdGhpbmsgdGhpcyBtYWtlcwo+
ID4+Pj4+IHNlbnNlCj4gPj4+Pj4gZGVzY3JpYmluZyB0aGUgY3VycmVudCBzdGF0ZS4KPiA+Pj4+
IFllYWggSSB0aGluayBhIGZ1dHVyZSBwYXRjaCBuZWVkcyB0byB0eXBlIHVwIGhvdyB3ZSB3YW50
IHRvIG1ha2UgdGhhdAo+ID4+Pj4gaGFwcGVuIChmb3Igc29tZSBjcm9zcyBkcml2ZXIgY29uc2lz
dGVuY3kpIGFuZCB3aGF0IG5lZWRzIHRvIGJlCj4gPj4+PiBjb25zaWRlcmVkLiBTb21lIG9mIHRo
ZSBuZWNlc3NhcnkgcGFydHMgYXJlIGFscmVhZHkgdGhlcmUgKHdpdGggbGlrZSB0aGUKPiA+Pj4+
IHByZWVtcHRpb24gZmVuY2VzIGFtZGtmZCBoYXMgYXMgYW4gZXhhbXBsZSksIGJ1dCBJIHRoaW5r
IHNvbWUgY2xlYXIgZG9jcwo+ID4+Pj4gb24gd2hhdCdzIHJlcXVpcmVkIGZyb20gYm90aCBodywg
ZHJpdmVycyBhbmQgdXNlcnNwYWNlIHdvdWxkIGJlIHJlYWxseQo+ID4+Pj4gZ29vZC4KPiA+Pj4g
SSdtIGN1cnJlbnRseSB3cml0aW5nIHRoYXQgdXAsIGJ1dCBwcm9iYWJseSBzdGlsbCBuZWVkIGEg
ZmV3IGRheXMgZm9yCj4gPj4+IHRoaXMuCj4gPj4gR3JlYXQhIEkgcHV0IGRvd24gc29tZSAodmVy
eSkgaW5pdGlhbCB0aG91Z2h0cyBhIGNvdXBsZSBvZiB3ZWVrcyBhZ28KPiA+PiBidWlsZGluZyBv
biBldmljdGlvbiBmZW5jZXMgZm9yIHZhcmlvdXMgaGFyZHdhcmUgY29tcGxleGl0eSBsZXZlbHMg
aGVyZToKPiA+Pgo+ID4+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy90aG9tYXNoL2Rv
Y3MvLS9ibG9iL21hc3Rlci9VbnRhbmdsaW5nJTIwZG1hLWZlbmNlJTIwYW5kJTIwbWVtb3J5JTIw
YWxsb2NhdGlvbi5vZHQKPiA+IFdlIGFyZSBzZWVpbmcgSFcgdGhhdCBoYXMgcmVjb3ZlcmFibGUg
R1BVIHBhZ2UgZmF1bHRzIGJ1dCBvbmx5IGZvcgo+ID4gY29tcHV0ZSB0YXNrcywgYW5kIHNjaGVk
dWxlciB3aXRob3V0IHNlbWFwaG9yZXMgaHcgZm9yIGdyYXBoaWNzLgo+ID4KPiA+IFNvIGEgc2lu
Z2xlIGRyaXZlciBtYXkgaGF2ZSB0byBleHBvc2UgYm90aCBtb2RlbHMgdG8gdXNlcnNwYWNlIGFu
ZAo+ID4gYWxzbyBpbnRyb2R1Y2VzIHRoZSBwcm9ibGVtIG9mIGhvdyB0byBpbnRlcm9wZXJhdGUg
YmV0d2VlbiB0aGUgdHdvCj4gPiBtb2RlbHMgb24gb25lIGNhcmQuCj4gPgo+ID4gRGF2ZS4KPgo+
IEhtbSwgeWVzIHRvIGJlZ2luIHdpdGggaXQncyBpbXBvcnRhbnQgdG8gbm90ZSB0aGF0IHRoaXMg
aXMgbm90IGEKPiByZXBsYWNlbWVudCBmb3IgbmV3IHByb2dyYW1taW5nIG1vZGVscyBvciBBUElz
LCBUaGlzIGlzIHNvbWV0aGluZyB0aGF0Cj4gdGFrZXMgcGxhY2UgaW50ZXJuYWxseSBpbiBkcml2
ZXJzIHRvIG1pdGlnYXRlIG1hbnkgb2YgdGhlIHJlc3RyaWN0aW9ucwo+IHRoYXQgYXJlIGN1cnJl
bnRseSBpbXBvc2VkIG9uIGRtYS1mZW5jZSBhbmQgZG9jdW1lbnRlZCBpbiB0aGlzIGFuZAo+IHBy
ZXZpb3VzIHNlcmllcy4gSXQncyBiYXNpY2FsbHkgdGhlIGRyaXZlci1wcml2YXRlIG5hcnJvdyBj
b21wbGV0aW9ucwo+IEphc29uIHN1Z2dlc3RlZCBpbiB0aGUgbG9ja2RlcCBwYXRjaGVzIGRpc2N1
c3Npb25zIGltcGxlbWVudGVkIHRoZSBzYW1lCj4gd2F5IGFzIGV2aWN0aW9uLWZlbmNlcy4KPgo+
IFRoZSBtZW1vcnkgZmVuY2UgQVBJIHdvdWxkIGJlIGxvY2FsIHRvIGhlbHBlcnMgYW5kIG1pZGRs
ZS1sYXllcnMgbGlrZQo+IFRUTSwgYW5kIHRoZSBjb3JyZXNwb25kaW5nIGRyaXZlcnMuICBUaGUg
b25seSBjcm9zcy1kcml2ZXItbGlrZQo+IHZpc2liaWxpdHkgd291bGQgYmUgdGhhdCB0aGUgZG1h
LWJ1ZiBtb3ZlX25vdGlmeSgpIGNhbGxiYWNrIHdvdWxkIG5vdCBiZQo+IGFsbG93ZWQgdG8gd2Fp
dCBvbiBkbWEtZmVuY2VzIG9yIHNvbWV0aGluZyB0aGF0IGRlcGVuZHMgb24gYSBkbWEtZmVuY2Uu
CgpCZWNhdXNlIHdlIGNhbid0IHByZWVtcHQgKG9uIHNvbWUgZW5naW5lcyBhdCBsZWFzdCkgd2Ug
YWxyZWFkeSBoYXZlCnRoZSByZXF1aXJlbWVudCB0aGF0IGNyb3NzIGRyaXZlciBidWZmZXIgbWFu
YWdlbWVudCBjYW4gZ2V0IHN0dWNrIG9uIGEKZG1hLWZlbmNlLiBOb3QgZXZlbiB0YWtpbmcgaW50
byBhY2NvdW50IHRoZSBob3Jyb3JzIHdlIGRvIHdpdGgKdXNlcnB0ciwgd2hpY2ggYXJlIGNyb3Nz
IGRyaXZlciBubyBtYXR0ZXIgd2hhdC4gTGltaXRpbmcgbW92ZV9ub3RpZnkKdG8gbWVtb3J5IGZl
bmNlcyBvbmx5IGRvZXNuJ3Qgd29yaywgc2luY2UgdGhlIHB0ZSBjbGVhcmluZyBtaWdodCBuZWVk
CnRvIHdhaXQgZm9yIGEgZG1hX2ZlbmNlIGZpcnN0LiBIZW5jZSB0aGlzIGJlY29tZXMgYSBmdWxs
IGVuZC1vZi1iYXRjaApmZW5jZSwgbm90IGp1c3QgYSBsaW1pdGVkIGtlcm5lbC1pbnRlcm5hbCBt
ZW1vcnkgZmVuY2UuCgpUaGF0J3Mga2luZGEgd2h5IEkgdGhpbmsgb25seSByZWFzb25hYmxlIG9w
dGlvbiBpcyB0byB0b3NzIGluIHRoZQp0b3dlbCBhbmQgZGVjbGFyZSBkbWEtZmVuY2UgdG8gYmUg
dGhlIG1lbW9yeSBmZW5jZSAoYW5kIHN1Y2sgdXAgYWxsCnRoZSBjb25zZXF1ZW5jZXMgb2YgdGhh
dCBkZWNpc2lvbiBhcyB1YXBpLCB3aGljaCBpcyBraW5kYSB3aGVyZSB3ZQphcmUpLCBhbmQgY29u
c3RydWN0IHNvbWV0aGluZyBuZXcmZW50aXJlbHkgZnJlZS13aGVlbGluZyBmb3IgdXNlcnNwYWNl
CmZlbmNpbmcuIEJ1dCBvbmx5IGZvciBlbmdpbmVzIHRoYXQgYWxsb3cgZW5vdWdoIHByZWVtcHQv
Z3B1IHBhZ2UKZmF1bHRpbmcgdG8gbWFrZSB0aGF0IHBvc3NpYmxlLiBGcmVlIHdoZWVsaW5nIHVz
ZXJzcGFjZSBmZW5jZXMvZ3B1CnNlbWFwaG9yZXMgb3Igd2hhdGV2ZXIgeW91IHdhbnQgdG8gY2Fs
bCB0aGVtIChvbiB3aW5kb3dzIEkgdGhpbmsgaXQncwptb25pdG9yZWQgZmVuY2UpIG9ubHkgd29y
ayBpZiB5b3UgY2FuIHByZWVtcHQgdG8gZGVjb3VwbGUgdGhlIG1lbW9yeQpmZW5jZXMgZnJvbSB5
b3VyIGdwdSBjb21tYW5kIGV4ZWN1dGlvbi4KClRoZXJlJ3MgdGhlIGluLWJldHdlZW4gc3RlcCBv
ZiBqdXN0IGRlY291cGxpbmcgdGhlIGJhdGNoYnVmZmVyCnN1Ym1pc3Npb24gcHJlcCBmb3IgaHcg
d2l0aG91dCBhbnkgcHJlZW1wdCAoYnV0IGEgc2NoZWR1bGVyKSwgYnV0IHRoYXQKc2VlbXMga2lu
ZGEgcG9pbnRsZXNzLiBNb2Rlcm4gZXhlY2J1ZiBzaG91bGQgYmUgTygxKSBmYXN0cGF0aCwgd2l0
aAphbGwgdGhlIGFsbG9jYXRpb24vbWFwcGluZyB3b3JrIHB1bGxlZCBvdXQgYWhlYWQuIHZrIGV4
cG9zZXMgdGhhdAptb2RlbCBkaXJlY3RseSB0byBjbGllbnRzLCBHTCBkcml2ZXJzIGNvdWxkIHVz
ZSBpdCBpbnRlcm5hbGx5IHRvbywgc28KSSBzZWUgemVybyB2YWx1ZSBpbiBzcGVuZGluZyBsb3Rz
IG9mIHRpbWUgZW5naW5lZXJpbmcgdmVyeSB0cmlja3kKa2VybmVsIGNvZGUganVzdCBmb3Igb2xk
IHVzZXJzcGFjZS4gTXVjaCBtb3JlIHJlYXNvbmFibGUgdG8gZG8gdGhhdCBpbgp1c2Vyc3BhY2Us
IHdoZXJlIHdlIGhhdmUgcmVhbCBkZWJ1Z2dlcnMgYW5kIG5vIHBhbmljcyBhYm91dCBzZWN1cml0
eQpidWdzIChvciB3ZWxsLCBhIGxvdCBsZXNzLCB3ZWJnbCBpcyBzdGlsbCBhIHRoaW5nLCBidXQg
YXQgbGVhc3QKYnJvd3NlcnMgcmVhbGl6ZWQgeW91IG5lZWQgdG8gY29udGFpbmVyIHRoYXQgY29t
cGxldGVseSkuCgpDaGVlcnMsIERhbmllbAoKPiBTbyB3aXRoIHRoYXQgaW4gbWluZCwgSSBkb24n
dCBmb3Jlc2VlIGVuZ2luZXMgd2l0aCBkaWZmZXJlbnQKPiBjYXBhYmlsaXRpZXMgb24gdGhlIHNh
bWUgY2FyZCBiZWluZyBhIHByb2JsZW0uCj4KPiAvVGhvbWFzCj4KPgoKCi0tIApEYW5pZWwgVmV0
dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZnds
bC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
