Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E4F205B69
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2020 21:03:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EC8260733
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2020 19:03:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8C23D6192C; Tue, 23 Jun 2020 19:03:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55E2B664E2;
	Tue, 23 Jun 2020 19:02:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F098460733
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 19:02:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D4D06664E2; Tue, 23 Jun 2020 19:02:39 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 0B1FD60733
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 19:02:38 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z13so9897702wrw.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 12:02:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=XDcsteRMJEoW0C3+Kl+uWDnjv0MhfNk7S9Vrs1qi/2Y=;
 b=riqy7OMKDj/RlE1oGDeGj55yKIhDhBFMcXCmAACi2/6UJGV9F4xT6nay43IMGSGi+E
 kId/VFGodVEY3pf+s2hpoRCWqPYN49Mf4LZ0ug7pTbAxRsL4SgqT6m+9yXKfIftLdY8p
 ECEOEi0WVrVdbT7tZrAJwF0TIVoNF2rrDRFPgXK6ataNjdcNwuuaOJ46QbiegoyG2vA4
 m8pZUxfhLDKQxt5pazI7X8Z8SS/6dtu51hWNwfLTViH0paM4Vb2d+4ITA12gHqWSkzI+
 dqZNMaQvuDd0O871vbR1ppLbRZERJ6YqinKLHH5VHFeKnZasQyJtul+ZcdVstLv6Z5iB
 yDBw==
X-Gm-Message-State: AOAM530s1O14Cl84vwbGtwHzGOly81PoDrhQVtmFqgE2GPz8mI30fNkr
 MFfWPhJtwxt3vV8v1EKDcV5njw==
X-Google-Smtp-Source: ABdhPJynbn/cTBvNbobb+7TOV12TXtahoSjCWh3GnuIRy64vKHvTHEysZa+/3Plm+28KWqKEN1sWIw==
X-Received: by 2002:a5d:470b:: with SMTP id y11mr18155209wrq.101.1592938956979; 
 Tue, 23 Jun 2020 12:02:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l17sm4698578wmi.3.2020.06.23.12.02.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jun 2020 12:02:35 -0700 (PDT)
Date: Tue, 23 Jun 2020 21:02:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Felix Kuehling <felix.kuehling@amd.com>
Message-ID: <20200623190233.GP20149@phenom.ffwll.local>
Mail-Followup-To: Felix Kuehling <felix.kuehling@amd.com>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
 <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
 <CAKMK7uHBKrpDWu+DvtYncDK=LOdGJyMK7t6fpOaGovnYFiBUZw@mail.gmail.com>
 <99758c09-262a-e9a1-bf65-5702b35b4388@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99758c09-262a-e9a1-bf65-5702b35b4388@amd.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime lockdep
 annotations
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

T24gVHVlLCBKdW4gMjMsIDIwMjAgYXQgMDI6NDQ6MjRQTSAtMDQwMCwgRmVsaXggS3VlaGxpbmcg
d3JvdGU6Cj4gQW0gMjAyMC0wNi0yMyB1bSAzOjM5IGEubS4gc2NocmllYiBEYW5pZWwgVmV0dGVy
Ogo+ID4gT24gRnJpLCBKdW4gMTIsIDIwMjAgYXQgMTozNSBBTSBGZWxpeCBLdWVobGluZyA8ZmVs
aXgua3VlaGxpbmdAYW1kLmNvbT4gd3JvdGU6Cj4gPj4gQW0gMjAyMC0wNi0xMSB1bSAxMDoxNSBh
Lm0uIHNjaHJpZWIgSmFzb24gR3VudGhvcnBlOgo+ID4+PiBPbiBUaHUsIEp1biAxMSwgMjAyMCBh
dCAxMDozNDozMEFNICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4+Pj4+IEkgc3RpbGwg
aGF2ZSBteSBkb3VidHMgYWJvdXQgYWxsb3dpbmcgZmVuY2Ugd2FpdGluZyBmcm9tIHdpdGhpbiBz
aHJpbmtlcnMuCj4gPj4+Pj4gSU1PIGlkZWFsbHkgdGhleSBzaG91bGQgdXNlIGEgdHJ5d2FpdCBh
cHByb2FjaCwgaW4gb3JkZXIgdG8gYWxsb3cgbWVtb3J5Cj4gPj4+Pj4gYWxsb2NhdGlvbiBkdXJp
bmcgY29tbWFuZCBzdWJtaXNzaW9uIGZvciBkcml2ZXJzIHRoYXQKPiA+Pj4+PiBwdWJsaXNoIGZl
bmNlcyBiZWZvcmUgY29tbWFuZCBzdWJtaXNzaW9uLiAoU2luY2UgZWFybHkgcmVzZXJ2YXRpb24g
b2JqZWN0Cj4gPj4+Pj4gcmVsZWFzZSByZXF1aXJlcyB0aGF0KS4KPiA+Pj4+IFllYWggaXQgaXMg
YSBiaXQgYW5ub3lpbmcsIGUuZy4gZm9yIGRybS9zY2hlZHVsZXIgSSB0aGluayB3ZSdsbCBlbmQg
dXAKPiA+Pj4+IHdpdGggYSBtZW1wb29sIHRvIG1ha2Ugc3VyZSBpdCBjYW4gaGFuZGxlIGl0J3Mg
YWxsb2NhdGlvbnMuCj4gPj4+Pgo+ID4+Pj4+IEJ1dCBzaW5jZSBkcml2ZXJzIGFyZSBhbHJlYWR5
IHdhaXRpbmcgZnJvbSB3aXRoaW4gc2hyaW5rZXJzIGFuZCBJIHRha2UgeW91cgo+ID4+Pj4+IHdv
cmQgZm9yIEhNTSByZXF1aXJpbmcgdGhpcywKPiA+Pj4+IFllYWggdGhlIGJpZyB0cm91YmxlIGlz
IEhNTSBhbmQgbW11IG5vdGlmaWVycy4gVGhhdCdzIHRoZSByZWFsbHkgYXdrd2FyZAo+ID4+Pj4g
b25lLCB0aGUgc2hyaW5rZXIgb25lIGlzIGEgbG90IGxlc3MgZXN0YWJsaXNoZWQuCj4gPj4+IEkg
cmVhbGx5IHF1ZXN0aW9uIGlmIEhXIHRoYXQgbmVlZHMgc29tZXRoaW5nIGxpa2UgRE1BIGZlbmNl
IHNob3VsZAo+ID4+PiBldmVuIGJlIHVzaW5nIG1tdSBub3RpZmllcnMgLSB0aGUgYmVzdCB1c2Ug
aXMgSFcgdGhhdCBjYW4gZmVuY2UgdGhlCj4gPj4+IERNQSBkaXJlY3RseSB3aXRob3V0IGhhdmlu
ZyB0byBnZXQgaW52b2x2ZWQgd2l0aCBzb21lIGNvbW1hbmQgc3RyZWFtCj4gPj4+IHByb2Nlc3Np
bmcuCj4gPj4+Cj4gPj4+IE9yIGF0IHRoZSB2ZXJ5IGxlYXN0IGl0IHNob3VsZCBub3QgYmUgYSBn
ZW5lcmljIERNQSBmZW5jZSBidXQgYQo+ID4+PiBuYXJyb3dlZCBjb21wbGV0aW9uIHRpZWQgb25s
eSBpbnRvIHRoZSBzYW1lIEdQVSBkcml2ZXIncyBjb21tYW5kCj4gPj4+IGNvbXBsZXRpb24gcHJv
Y2Vzc2luZyB3aGljaCBzaG91bGQgYmUgYWJsZSB0byBwcm9ncmVzcyB3aXRob3V0Cj4gPj4+IGJs
b2NraW5nLgo+ID4+Pgo+ID4+PiBUaGUgaW50ZW50IG9mIG5vdGlmaWVycyB3YXMgbmV2ZXIgdG8g
ZW5kbGVzc2x5IGJsb2NrIHdoaWxlIHZhc3QKPiA+Pj4gYW1vdW50cyBvZiBTVyBkb2VzIHdvcmsu
Cj4gPj4+Cj4gPj4+IEdvaW5nIGFyb3VuZCBhbmQgc3dpdGNoaW5nIGV2ZXJ5dGhpbmcgaW4gYSBH
UFUgdG8gR0ZQX0FUT01JQyBzZWVtcwo+ID4+PiBsaWtlIGJhZCBpZGVhLgo+ID4+Pgo+ID4+Pj4g
SSd2ZSBwaW5nZWQgYSBidW5jaCBvZiBhcm1zb2MgZ3B1IGRyaXZlciBwZW9wbGUgYW5kIGFzayB0
aGVtIGhvdyBtdWNoIHRoaXMKPiA+Pj4+IGh1cnRzLCBzbyB0aGF0IHdlIGhhdmUgYSBjbGVhciBh
bnN3ZXIuIE9uIHg4NiBJIGRvbid0IHRoaW5rIHdlIGhhdmUgbXVjaAo+ID4+Pj4gb2YgYSBjaG9p
Y2Ugb24gdGhpcywgd2l0aCB1c2VycHRyIGluIGFtZCBhbmQgaTkxNSBhbmQgaG1tIHdvcmsgaW4g
bm91dmVhdQo+ID4+Pj4gKGJ1dCBub3V2ZWF1IEkgdGhpbmsgZG9lc24ndCB1c2UgZG1hX2ZlbmNl
IGluIHRoZXJlKS4KPiA+PiBTb29uIG5vdXZlYXUgd2lsbCBnZXQgY29tcGFueS4gV2UncmUgd29y
a2luZyBvbiBhIHJlY292ZXJhYmxlIHBhZ2UgZmF1bHQKPiA+PiBpbXBsZW1lbnRhdGlvbiBmb3Ig
SE1NIGluIGFtZGdwdSB3aGVyZSB3ZSdsbCBuZWVkIHRvIHVwZGF0ZSBwYWdlIHRhYmxlcwo+ID4+
IHVzaW5nIHRoZSBHUFVzIFNETUEgZW5naW5lIGFuZCB3YWl0IGZvciBjb3JyZXNwb25kaW5nIGZl
bmNlcyBpbiBNTVUKPiA+PiBub3RpZmllcnMuCj4gPiBDYW4geW91IHBscyBjYyB0aGVzZSBwYXRj
aGVzIHRvIGRyaS1kZXZlbCB3aGVuIHRoZXkgc2hvdyB1cD8gRGVwZW5kaW5nCj4gPiB1cG9uIGhv
dyB5b3VyIGh3IHdvcmtzIHRoZXJlJ3MgYW5kIGVuZGxlc3MgYW1vdW50IG9mIGJhZCB0aGluZ3Mg
dGhhdAo+ID4gY2FuIGhhcHBlbi4KPiAKPiBZZXMsIEknbGwgZG8gdGhhdC4KPiAKPiAKPiA+Cj4g
PiBBbHNvIEkgdGhpbmsgKGFnYWluIGRlcGVuZGluZyB1cG9uIGhvdyB0aGUgaHcgZXhhY3RseSB3
b3JrcykgdGhpcwo+ID4gc3R1ZmYgd291bGQgYmUgYSBwZXJmZWN0IGV4YW1wbGUgZm9yIHRoZSBk
bWFfZmVuY2UgYW5ub3RhdGlvbnMuCj4gCj4gV2UgaGF2ZSBhbHJlYWR5IGFwcGxpZWQgeW91ciBw
YXRjaCBzZXJpZXMgdG8gb3VyIGRldmVsb3BtZW50IGJyYW5jaC4gSQo+IGhhdmVuJ3QgbG9va2Vk
IGludG8gd2hhdCBhbm5vdGF0aW9ucyB3ZSdkIGhhdmUgdG8gYWRkIHRvIG91ciBuZXcgY29kZSB5
ZXQuCj4gCj4gCj4gPgo+ID4gVGhlIHdvcnN0IGNhc2UgaXMgaWYgeW91ciBodyBjYW5ub3QgcHJl
ZW1wdCB3aGlsZSBhIGh3IHBhZ2UgZmF1bHQgaXMKPiA+IHBlbmRpbmcuIFRoYXQgbWVhbnMgbm9u
ZSBvZiB0aGUgZG1hX2ZlbmNlIHdpbGwgZXZlciBzaWduYWwgKHRoZSBhbWRrZmQKPiA+IHByZWVt
cHQgY3R4IGZlbmNlcyB3b250LCBhbmQgdGhlIGNsYXNzaWMgZmVuY2VzIGZyb20gYW1kZ3B1IG1p
Z2h0IGJlCj4gPiBhbHNvIHN0YWxsKS4gQXQgbGVhc3Qgd2hlbiB5b3UncmUgdW5sdWNreSBhbmQg
dGhlIGZlbmNlIHlvdSdyZSB3YWl0aW5nCj4gPiBvbiBzb21laG93IChhbnl3aGVyZSBpbiBpdHMg
ZGVwZW5kZW5jeSBjaGFpbiByZWFsbHkpIG5lZWQgdGhlIGVuZ2luZQo+ID4gdGhhdCdzIGN1cnJl
bnRseSBibG9ja2VkIHdhaXRpbmcgZm9yIHRoZSBodyBwYWdlIGZhdWx0Lgo+IAo+IE91ciBIVyBj
YW4gcHJlZW1wdCB3aGlsZSBoYW5kbGluZyBhIHBhZ2UgZmF1bHQsIGF0IGxlYXN0IG9uIHRoZSBH
UFUKPiBnZW5lcmF0aW9uIHdlJ3JlIHdvcmtpbmcgb24gbm93LiBPbiBvdGhlciBHUFVzIHdlIGhh
dmVuJ3QgaW5jbHVkZWQgaW4KPiBvdXIgaW5pdGlhbCBlZmZvcnQsIHdlIHdpbGwgbm90IGJlIGFi
bGUgdG8gcHJlZW1wdCB3aGlsZSBhIHBhZ2UgZmF1bHQgaXMKPiBpbiBwcm9ncmVzcy4gVGhpcyBp
cyBwcm9ibGVtYXRpYywgYnV0IHRoYXQncyBmb3IgcmVhc29ucyByZWxhdGVkIHRvIG91cgo+IEdQ
VSBoYXJkd2FyZSBzY2hlZHVsZXIgYW5kIHVucmVsYXRlZCB0byBmZW5jZXMuCgpXZWxsIHRoZSB0
cm91YmxlIGlzIGlmIHRoZSBwYWdlIGZhdWx0IGhvbGRzIHVwIGEgcHJlZW1wdCwgdGhlbiB0aGVy
ZSdzIG5vCndheSBmb3IgYSBkbWFfZmVuY2UgdG8gY29tcGxldGUgd2hpbGUgeW91ciBodyBwYWdl
IGZhdWx0IGhhbmRsZXIgaXMgc3R1Y2sKZG9pbmcgd2hhdGV2ZXIuIFRoYXQgbWVhbnMgdGhlIGVu
dGlyZSBodyBwYWdlIGZhdWx0IGJlY29tZXMgYSBmZW5jZQpzaWduYWxsaW5nIGNyaXRpY2FsIHNl
Y3Rpb24sIHdpdGggdGhlIGNvbnNlcXVlbmNlIHRoYXQgdGhlcmUncyBhbG1vc3QKbm90aGluZyB5
b3UgY2FuIGFjdHVhbGx5IGRvLiBTeXN0ZW0gbWVtb3J5IGJlY29tZXMgR0ZQX0FUT01JQyBvbmx5
LCBhbmQKZm9yIHZyYW0geW91IG5lZWQgdG8gbWFrZSBzdXJlIHRoYXQgeW91IG5ldmVyIGV2aWN0
IGFueXRoaW5nIHRoYXQgbWlnaHQgYmUKaW4gYWN0aXZlIHVzZS4KClNvIG5vdCBlbmFibGluZyB0
aGVzZSBwbGF0Zm9ybXMgc291bmRzIGxpa2UgYSB2ZXJ5IGdvb2QgcGxhbiB0byBtZSA6LSkKCj4g
PiBUaGF0IGluIHR1cm4gbWVhbnMgYW55dGhpbmcgeW91IGRvIGluIHlvdXIgaHcgcGFnZSBmYXVs
dCBoYW5kbGVyIGlzIGluCj4gPiB0aGUgY3JpdGljYWwgc2VjdGlvbiBmb3IgZG1hIGZlbmNlIHNp
Z25hbGxpbmcsIHdoaWNoIGhhcyBmYXIgcmVhY2hpbmcKPiA+IGltcGxpY2F0aW9ucy4KPiAKPiBJ
J20gbm90IHN1cmUgSSBhZ3JlZSwgYXQgbGVhc3QgZm9yIEtGRC4gVGhlIG9ubHkgcGxhY2Ugd2hl
cmUgS0ZEIHVzZXMKPiBmZW5jZXMgdGhhdCBkZXBlbmQgb24gcHJlZW1wdGlvbnMgaXMgZXZpY3Rp
b24gZmVuY2VzLiBBbmQgd2UgY2FuIGdldCByaWQKPiBvZiB0aG9zZSBpZiB3ZSBjYW4gcHJlZW1w
dCBHUFUgYWNjZXNzIHRvIHNwZWNpZmljIEJPcyBieSBpbnZhbGlkYXRpbmcKPiBHUFUgUFRFcy4g
VGhhdCB3YXkgd2UgZG9uJ3QgbmVlZCB0byBwcmVlbXB0IHRoZSBHUFUgcXVldWVzIHdoaWxlIGEg
cGFnZQo+IGZhdWx0IGlzIGluIHByb2dyZXNzLiBJbnN0ZWFkIHdlIHdvdWxkIGNyZWF0ZSBtb3Jl
IHBhZ2UgZmF1bHRzLgoKVGhlIGJpZyBwcm9ibGVtIGlzbid0IHB1cmUga2ZkIHdvcmtsb2Fkcywg
YWxsIHRoZSB0cm91YmxlIGNvbWVzIGluIHdoZW4KeW91IG1peCBrZmQgYW5kIGFtZGdwdSB3b3Jr
bG9hZHMuIGtmZCBhbG9uZSBpcyBlYXN5LCBqdXN0IG1ha2Ugc3VyZQp0aGVyZSdzIG5vIGZlbmNl
cyB0byBiZWdpbiB3aXRoLCBhbmQgdGhlcmUgd2lsbCBiZSBubyBwcm9ibGVtcy4KCj4gVGhhdCBh
c3N1bWVzIHRoYXQgd2UgY2FuIGludmFsaWRhdGUgR1BVIFBURXMgd2l0aG91dCBkZXBlbmRpbmcg
b24KPiBmZW5jZXMuIFdlJ3ZlIGRpc2N1c3NlZCBwb3NzaWJsZSBkZWFkbG9ja3MgZHVlIHRvIG1l
bW9yeSBhbGxvY2F0aW9ucwo+IG5lZWRlZCBvbiB0aGF0IGNvZGUgcGF0aHMgZm9yIElCcyBvciBw
YWdlIHRhYmxlcy4gV2UndmUgYWxyZWFkeQo+IGVsaW1pbmF0ZWQgcGFnZSB0YWJsZSBhbGxvY2F0
aW9ucyBhbmQgcmVzZXJ2YXRpb24gbG9ja3Mgb24gdGhlIFBURQo+IGludmFsaWRhdGlvbiBjb2Rl
IHBhdGguIEFuZCB3ZSdyZSB1c2luZyBhIHNlcGFyYXRlIHNjaGVkdWxlciBlbnRpdHkgc28KPiB3
ZSBjYW4ndCBnZXQgc3R1Y2sgYmVoaW5kIG90aGVyIElCcyB0aGF0IGRlcGVuZCBvbiBmZW5jZXMu
IElJUkMsCj4gQ2hyaXN0aWFuIGFsc28gaW1wbGVtZW50ZWQgYSBzZXBhcmF0ZSBtZW1vcnkgcG9v
bCBmb3IgSUJzIGZvciB0aGlzIGNvZGUKPiBwYXRoLgoKWWVhaCBpdCdzIHRoZSBtZW1vcnkgYWxs
b2NhdGlvbnMgdGhhdCBraWxsIHlvdS4gQm90aCBzeXN0ZW0gbWVtb3J5LCBidXQKYWxzbyB2cmFt
LiBTaW5jZSBldmljdGluZyB2cmFtIG1pZ2h0IG1lYW4geW91IGVuZCB1cCBzdHVjayBiZWhpbmQg
YQpkbWFfZmVuY2Ugb2YgYSBsZWdhY3kgY29udGV4dCBob2dnaW5nIHRoYXQgbWVtb3J5LCBhbmQg
cHJvYmFibHkgYWxzbyBtZWFucwpkb2luZyBhIGZldyBkbWFfcmVzdl9sb2NrLiBBbGwgb2YgdGhl
c2UgdGhpbmcgZGVhZGxvY2sgaWYgeW91IGNhbid0CnByZWVtcHQgdGhlIGNvbnRleHQgd2l0aCBz
b21ldGhpbmcgZWxzZS4KLURhbmllbAoKCj4gCj4gUmVnYXJkcywKPiDCoCBGZWxpeAo+IAo+IAo+
ID4gLURhbmllbAo+ID4KPiA+PiBSZWdhcmRzLAo+ID4+ICAgRmVsaXgKPiA+Pgo+ID4+Cj4gPj4+
IFJpZ2h0LCBub3Igd2lsbCBSRE1BIE9EUC4KPiA+Pj4KPiA+Pj4gSmFzb24KPiA+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4gYW1kLWdmeCBt
YWlsaW5nIGxpc3QKPiA+Pj4gYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+Pj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9hbWQtZ2Z4Cj4gPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBkcmkt
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
ID4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRl
dmVsCj4gPgo+ID4KCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBD
b3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
