Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D73642D6135
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 17:09:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F068161939
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 16:09:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E4E7566539; Thu, 10 Dec 2020 16:09:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA36566708;
	Thu, 10 Dec 2020 16:06:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 07BE060861
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 16:06:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E4ACA61939; Thu, 10 Dec 2020 16:06:43 +0000 (UTC)
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by lists.linaro.org (Postfix) with ESMTPS id 8EE4360861
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 16:06:41 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id c12so4498528pfo.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 08:06:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=+JSgMk2msbA8mHhf4SGmCfSpNmhQM7k91wlY8aggnvo=;
 b=QZ5lZqfo3lqPd+CEuvCMffDGj5ICMwdyt+x9cLStGmRVp1Z9zsUlqW7cj9QxIBOoLZ
 0FjKYRcjNtELa2JYpv9ov+U5V1T/7UzC6t2vmDZhEEU6Br/5Cks4csIhst6GvtNQlUtD
 G4sFtWSdyd0y01vGRhxUe9tupSsDev0U9a5JTIl3FPbxiHNCiDBhBufTxb9C+WRIKSll
 9/GHGhVE+QXC2UNN5eDQ+LG8OtTbFy7HK7W8LxKqy7FF2qbE9BEu8LwWG4Vtg/HO0TWq
 PtTViNeFDO64nQlZpGv8UfUGuorW/xDkSwuSp5BHU72qb+kZfv9GWGj1lH7IuqThbrgw
 fZlw==
X-Gm-Message-State: AOAM533pRLkhvbodGa7O5nzPZ9F1n1+9C4VOFdhogHx4I/xvkrjDZxn9
 KgTzb5Iu6Txukp7/IU4SFpA=
X-Google-Smtp-Source: ABdhPJyacNBT7X4OevsSO0bCcLV9+8O4gwMJexjecYnLGPFoA/pI4ihWL3JWMpxMwAHQK6Fyy4lDmA==
X-Received: by 2002:a17:90a:4402:: with SMTP id
 s2mr8387612pjg.37.1607616400810; 
 Thu, 10 Dec 2020 08:06:40 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id y2sm6340909pfe.10.2020.12.10.08.06.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 08:06:39 -0800 (PST)
Date: Thu, 10 Dec 2020 08:06:36 -0800
From: Minchan Kim <minchan@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <X9JHjPTdxv6Z7lCW@google.com>
References: <20201117181935.3613581-1-minchan@kernel.org>
 <20201117181935.3613581-5-minchan@kernel.org>
 <CGME20201118030110epcas2p1105a09711ea2c123f19f413b32372764@epcas2p1.samsung.com>
 <CALAqxLWqDLHpOHNEayvhDjJeXjEk_uneH2=d9fy8M87EjKfReA@mail.gmail.com>
 <20201119011431.GA136599@KEI>
 <CALAqxLV=r-V6u8hq2fTmxq855nT7QPkkjyAYdPeZRkYPBi_CKg@mail.gmail.com>
 <X9Fjd+eSStUJskOV@google.com>
 <CALAqxLWthd8bEDRMWmuOf8dOCW8=cFao9HBawKGuRhQZkdgXXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLWthd8bEDRMWmuOf8dOCW8=cFao9HBawKGuRhQZkdgXXw@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 linux-mm <linux-mm@kvack.org>, Hyesoo Yu <hyesoo.yu@samsung.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Christian Koenig <christian.koenig@amd.com>, John Dias <joaodias@google.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 4/4] dma-heap: Devicetree binding for
	chunk heap
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

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMTI6MTU6MTVBTSAtMDgwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gV2VkLCBEZWMgOSwgMjAyMCBhdCAzOjUzIFBNIE1pbmNoYW4gS2ltIDxtaW5jaGFu
QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gT24gV2VkLCBOb3YgMTgsIDIwMjAgYXQgMDc6MTk6MDdQ
TSAtMDgwMCwgSm9obiBTdHVsdHogd3JvdGU6Cj4gPiA+IFRoZSBDTUEgaGVhcCBjdXJyZW50bHkg
b25seSByZWdpc3RlcnMgdGhlIGRlZmF1bHQgQ01BIGhlYXAsIGFzIHdlCj4gPiA+IGRpZG4ndCB3
YW50IHRvIGV4cG9zZSBhbGwgQ01BIHJlZ2lvbnMgYW5kIHRoZXJlJ3Mgb3RoZXJ3aXNlIG5vIHdh
eSB0bwo+ID4gPiBwaWNrIGFuZCBjaG9vc2UuCj4gPgo+ID4gWXViLgo+ID4KPiA+IGRtYS1idWYg
cmVhbGx5IG5lZWQgYSB3YXkgdG8gbWFrZSBleGNsdXNpdmUgQ01BIGFyZWEuIE90aGVyd2lzZSwg
ZGVmYXVsdAo+ID4gQ01BIHdvdWxkIGJlIHNoYXJlZCBhbW9uZyBkcml2ZXJzIGFuZCBpbnRyb2R1
Y2UgZnJhZ21lbnRhdGlvbiBlYXNpbHkKPiA+IHNpbmNlIHdlIGNvdWxkbid0IGNvbnRyb2wgb3Ro
ZXIgZHJpdmVycy4gSW4gc3VjaCBhc3BlY3QsIEkgZG9uJ3QgdGhpbmsKPiA+IGN1cnJlbnQgY21h
LWhlYXAgd29ya3MgaWYgdXNlcnNwYWNlIG5lZWRzIGJpZyBtZW1vcnkgY2h1bmsuCj4gCj4gWWVz
LCB0aGUgZGVmYXVsdCBDTUEgcmVnaW9uIGlzIG5vdCBhbHdheXMgb3B0aW1hbC4KPiAKPiBUaGF0
J3Mgd2h5IEkgd2FzIGhvcGVmdWwgZm9yIEt1bmloaWtvIEhheWFzaGkncyBwYXRjaCB0byBhbGxv
dyBmb3IKPiBleHBvc2luZyBzcGVjaWZpYyBjbWEgcmVnaW9uczoKPiAgIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xrbWwvMTU5NDk0ODIwOC00NzM5LTEtZ2l0LXNlbmQtZW1haWwtaGF5YXNoaS5r
dW5paGlrb0Bzb2Npb25leHQuY29tLwo+IAo+IEkgdGhpbmsgaXQgd291bGQgYmUgYSBnb29kIHNv
bHV0aW9uLCBidXQgYWxsIHdlIG5lZWQgaXMgKnNvbWUqIGRyaXZlcgo+IHdoaWNoIGNhbiBiZSBj
b25zaWRlcmVkIHRoZSBwcmltYXJ5IHVzZXIvb3duZXIgb2YgdGhlIGNtYSByZWdpb24gd2hpY2gK
PiB3b3VsZCB0aGVuIGV4cGxpY2l0bHkgZXhwb3J0IGl0IHZpYSB0aGUgZG1hYnVmIGhlYXBzLgo+
IAo+ID4gSGVyZSwgdGhlIHByb2JsZW0gaXMgdGhlcmUgaXMgbm8gaW4ta2VybmVsIHVzZXIgdG8g
YmluZCB0aGUgc3BlY2lmaWMKPiA+IENNQSBhcmVhIGJlY2F1c2UgdGhlIG93bmVyIHdpbGwgYmUg
cmFuZG9tIGluIHVzZXJzcGFjZSB2aWEgZG1hLWJ1Zgo+ID4gaW50ZXJmYWNlLgo+IAo+IFdlbGws
IHdoaWxlIEkgYWdyZWUgdGhhdCBjb25jZXB0dWFsbHkgdGhlIGRtYWJ1ZiBoZWFwcyBhbGxvdyBm
b3IKPiBhbGxvY2F0aW9ucyBmb3IgbXVsdGktZGV2aWNlIHBpcGVsaW5lcywgYW5kIHRodXMgYXJl
IG5vdCB0aWVkIHRvCj4gc3BlY2lmaWMgZGV2aWNlcy4gSSBkbyB0aGluayB0aGF0IHRoZSBtZW1v
cnkgdHlwZXMgZXhwb3NlZCBhcmUgbGlrZWx5Cj4gdG8gaGF2ZSBzcGVjaWZpYyBkZXZpY2VzL2Ry
aXZlcnMgaW4gdGhlIHBpcGVsaW5lIHRoYXQgaXQgbWF0dGVycyBtb3N0Cj4gdG8uIFNvIEkgZG9u
J3Qgc2VlIGEgYmlnIGlzc3VlIHdpdGggdGhlIGluLWtlcm5lbCBkcml2ZXIgcmVnaXN0ZXJpbmcg
YQo+IHNwZWNpZmljIENNQSByZWdpb24gYXMgYSBkbWFidWYgaGVhcC4KClRoZW4sIEkgYW0gd29y
cnkgYWJvdXQgdGhhdCB3ZSBzcHJlYWQgb3V0IGRtYV9oZWFwX2FkZF9jbWEgdG8gdG9vIG1hbnkK
ZHJpdmVycyBzaW5jZSBrZXJuZWwgZG9lc24ndCBob3cgdXNlcnNwYWNlIHdpbGwgdXNlIGl0LgpG
b3IgZXhhbXBsZSwgc3lzdGVtIDEgY291bGQgaGF2ZSBkZXZpY2UgQS1CLUMgcGlwZWxpbmUgc28g
dGhleSBhZGRlZAppdCBBIGRyaXZlci4gQWZ0ZXIgdGhhdCwgc3lzdGVtIDIgY291bGQgaGF2ZSBk
ZXZpY2UgQi1DLUQgcGlwZWxpbmUKc28gdGhleSBhZGQgZG1hX2hlYXBfYWRkX2NtYSBpbnRvIEIg
ZGV2aWNlLgoKPiAKPiA+ID4gPiBJcyB0aGVyZSBhIHJlYXNvbiB0byB1c2UgZG1hLWhlYXAgZnJh
bWV3b3JrIHRvIGFkZCBjbWEtYXJlYSBmb3Igc3BlY2lmaWMgZGV2aWNlID8KPiA+ID4gPgo+ID4g
PiA+IEV2ZW4gaWYgc29tZSBpbi10cmVlIHVzZXJzIHJlZ2lzdGVyIGRtYS1oZWFwIHdpdGggY21h
LWFyZWEsIHRoZSBidWZmZXJzIGNvdWxkIGJlIGFsbG9jYXRlZCBpbiB1c2VyLWxhbmQgYW5kIHRo
ZXNlIGNvdWxkIGJlIHNoYXJlZCBhbW9uZyBvdGhlciBkZXZpY2VzLgo+ID4gPiA+IEZvciBleGNs
dXNpdmUgYWNjZXNzLCBJIGd1ZXNzLCB0aGUgZGV2aWNlIGRvbid0IG5lZWQgdG8gcmVnaXN0ZXIg
ZG1hLWhlYXAgZm9yIGNtYSBhcmVhLgo+ID4gPiA+Cj4gPiA+Cj4gPiA+IEl0J3Mgbm90IHJlYWxs
eSBhYm91dCBleGNsdXNpdmUgYWNjZXNzLiBNb3JlIGp1c3QgdGhhdCBpZiB5b3Ugd2FudCB0bwo+
ID4gPiBiaW5kIGEgbWVtb3J5IHJlc2VydmF0aW9uL3JlZ2lvbiAoY21hIG9yIG90aGVyd2lzZSks
IGF0IGxlYXN0IGZvciBEVFMsCj4gPiA+IGl0IG5lZWRzIHRvIGJpbmQgd2l0aCBzb21lIGRldmlj
ZSBpbiBEVC4KPiA+ID4KPiA+ID4gVGhlbiB0aGUgZGV2aWNlIGRyaXZlciBjYW4gcmVnaXN0ZXIg
dGhhdCByZWdpb24gd2l0aCBhIGhlYXAgZHJpdmVyLgo+ID4gPiBUaGlzIGF2b2lkcyBhZGRpbmcg
bmV3IExpbnV4LXNwZWNpZmljIHNvZnR3YXJlIGJpbmRpbmdzIHRvIERULiBJdAo+ID4gPiBiZWNv
bWVzIGEgZHJpdmVyIGltcGxlbWVudGF0aW9uIGRldGFpbCBpbnN0ZWFkLiBUaGUgcHJpbWFyeSB1
c2VyIG9mCj4gPiA+IHRoZSBoZWFwIHR5cGUgd291bGQgcHJvYmFibHkgYmUgYSBwcmFjdGljYWwg
cGljayAoaWUgdGhlIGRpc3BsYXkgb3IKPiA+ID4gaXNwIGRyaXZlcikuCj4gPgo+ID4gSWYgaXQn
cyB0aGUgb25seSBzb2x1dGlvbiwgd2UgY291bGQgY3JlYXRlIHNvbWUgZHVtbXkgZHJpdmVyIHdo
aWNoIGhhcwo+ID4gb25seSBtb2R1bGVfaW5pdCBhbmQgYmluZCBpdCBmcm9tIHRoZXJlIGJ1dCBJ
IGRvbid0IHRoaW5rIGl0J3MgYSBnb29kCj4gPiBpZGVhLgo+IAo+IFllYSwgYW4gdW4tdXBzdHJl
YW1hYmxlIGR1bW15IGRyaXZlciBpcyBtYXliZSB3aGF0IGl0IGRldm9sdmVzIHRvIGluCj4gdGhl
IHdvcnN0IGNhc2UuIEJ1dCBJIHN1c3BlY3QgaXQgd291bGQgYmUgY2xlYW5lciBmb3IgYSBkaXNw
bGF5IG9yIElTUAo+IGRyaXZlciB0aGF0IGJlbmVmaXRzIG1vc3QgZnJvbSB0aGUgaGVhcCB0eXBl
IHRvIGFkZCB0aGUgcmVzZXJ2ZWQKPiBtZW1vcnkgcmVmZXJlbmNlIHRvIHRoZWlyIERUIG5vZGUs
IGFuZCBvbiBpbml0IGZvciB0aGVtIHRvIHJlZ2lzdGVyCj4gdGhlIHJlZ2lvbiB3aXRoIHRoZSBk
bWFidWYgaGVhcCBjb2RlLgoKQXMgSSBtZW50aW9uZWQgYWJvdmUsIGl0IGNvdWxkIGJlIGEgZGlz
cGxheSBhdCB0aGlzIG1vbWVudCBidXQgaXQgY291bGQKYmUgZGlmZmVyZW50IGRyaXZlciBuZXh0
IHRpbWUuIElmIEkgbWlzcyB5b3VyIHBvaW50LCBsZXQgbWUga25vdy4KClRoYW5rcyBmb3IgdGhl
IHJldmlldywgSm9obi4KCj4gCj4gCj4gPiA+IFRoZSBvdGhlciBwb3RlbnRpYWwgc29sdXRpb24g
Um9iIGhhcyBzdWdnZXN0ZWQgaXMgdGhhdCB3ZSBjcmVhdGUgc29tZQo+ID4gPiB0YWcgZm9yIHRo
ZSBtZW1vcnkgcmVzZXJ2YXRpb24gKGllOiBsaWtlIHdlIGRvIHdpdGggY21hOiAicmV1c2FibGUi
KSwKPiA+ID4gd2hpY2ggY2FuIGJlIHVzZWQgdG8gcmVnaXN0ZXIgdGhlIHJlZ2lvbiB0byBhIGhl
YXAuIEJ1dCB0aGlzIGhhcyB0aGUKPiA+ID4gcHJvYmxlbSB0aGF0IGVhY2ggdGFnIGhhcyB0byBi
ZSB3ZWxsIGRlZmluZWQgYW5kIG1hcCB0byBhIGtub3duIGhlYXAuCj4gPgo+ID4gRG8geW91IHRo
aW5rIHRoYXQncyB0aGUgb25seSBzb2x1dGlvbiB0byBtYWtlIHByb2dyZXNzIGZvciB0aGlzIGZl
YXR1cmU/Cj4gPiBUaGVuLCBjb3VsZCB5b3UgZWxhYm9yYXRlIGl0IGEgYml0IG1vcmUgb3IgYW55
IG90aGVyIGlkZWFzIGZyb20gZG1hLWJ1Zgo+ID4gZm9sa3M/Cj4gCj4gSSdtIHNrZXB0aWNhbCBv
ZiB0aGF0IERUIHRhZyBhcHByb2FjaCB3b3JraW5nIG91dCwgYXMgd2UnZCBuZWVkIGEgbmV3Cj4g
RFQgYmluZGluZyBmb3IgdGhlIG5ldyB0YWcgbmFtZSwgYW5kIHdlJ2QgaGF2ZSB0byBkbyBzbyBm
b3IgZWFjaCBuZXcKPiBoZWFwIHR5cGUgdGhhdCBuZWVkcyB0aGlzIChzbyBub24tZGVmYXVsdCBj
bWEsIHlvdXIgY2h1bmsgaGVhcCwKPiB3aGF0ZXZlciBvdGhlciBzaW1pbGFyIGhlYXAgdHlwZXMg
dGhhdCB1c2UgcmVzZXJ2ZWQgcmVnaW9ucyBmb2xrcyBjb21lCj4gdXAgd2l0aCkuICBIYXZpbmcg
KnNvbWUqIGRyaXZlciB0YWtlIG93bmVyc2hpcCBmb3IgdGhlIHJlc2VydmVkIHJlZ2lvbgo+IGFu
ZCByZWdpc3RlciBpdCB3aXRoIHRoZSBhcHByb3ByaWF0ZSBoZWFwIHR5cGUgc2VlbXMgbXVjaAo+
IGNsZWFuZXIvZmxleGlibGUgYW5kIGF2b2lkcyBtdWNraW5nIHdpdGggdGhlIERUIEFCSS4KPiAK
PiB0aGFua3MKPiAtam9obgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
