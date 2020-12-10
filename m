Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 796BE2D6AF0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Dec 2020 00:31:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A24326670B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 23:31:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 938F76670C; Thu, 10 Dec 2020 23:31:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 113606658C;
	Thu, 10 Dec 2020 23:31:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DFCD060DC1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 23:31:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C20A96658C; Thu, 10 Dec 2020 23:31:00 +0000 (UTC)
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by lists.linaro.org (Postfix) with ESMTPS id 9890960DC1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 23:30:59 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id v29so5757909pgk.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 15:30:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=DxIVSUX2H6bimNutMDtAzIsDtpsebc1xO6PGsZ2Pwhk=;
 b=DurGnCkLPft35yXgW214yFzj5N55fUT7xaJTaiZRuJ2MpYHQNAcL5/QPwiQweGS8s0
 JmGGmRDgviQkDdcAubRA2MVwidS5W34nRfErQ5M4JEK7vlCIZN4E9ThXrqY+sw2wWra9
 xcKcojYcFKNy9hoeGni52uG7/oAt9LDPDeBNruOsieHVgihs1u5aDajubphC0cl5MK5/
 VbmOH8bB036YOQqNuWxLf3tB6KMJRBZqeMla7OU8Y0G5tNDM/5ZkzZJlE4uwljiTK+f5
 iUng7Vysjv6LsVLHKz7L74ZIcMYV+h6yZ1xeGQZq6Av9Uv0BqJZFFDyj7+QTj3QwksiY
 2Zig==
X-Gm-Message-State: AOAM531cSRsTSx3rMLhVbICrjMsfZ3H2qjkpilXIxSE9mMu+rqcRuXp3
 GPMWrdg4YcaNiUWswjZfwHE=
X-Google-Smtp-Source: ABdhPJzQ34O5574nawCtthvGcN4o4HywTqDu4/7/e/5QfeGCNPMRhSxX4RTQEVQMyXAdO/WoAlfGnw==
X-Received: by 2002:a62:19ca:0:b029:19d:cd0d:af83 with SMTP id
 193-20020a6219ca0000b029019dcd0daf83mr9006284pfz.51.1607643058804; 
 Thu, 10 Dec 2020 15:30:58 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id e24sm5119240pjt.16.2020.12.10.15.30.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 15:30:57 -0800 (PST)
Date: Thu, 10 Dec 2020 15:30:54 -0800
From: Minchan Kim <minchan@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <X9KvruEuDsuuqlfA@google.com>
References: <20201117181935.3613581-1-minchan@kernel.org>
 <20201117181935.3613581-5-minchan@kernel.org>
 <CGME20201118030110epcas2p1105a09711ea2c123f19f413b32372764@epcas2p1.samsung.com>
 <CALAqxLWqDLHpOHNEayvhDjJeXjEk_uneH2=d9fy8M87EjKfReA@mail.gmail.com>
 <20201119011431.GA136599@KEI>
 <CALAqxLV=r-V6u8hq2fTmxq855nT7QPkkjyAYdPeZRkYPBi_CKg@mail.gmail.com>
 <X9Fjd+eSStUJskOV@google.com>
 <CALAqxLWthd8bEDRMWmuOf8dOCW8=cFao9HBawKGuRhQZkdgXXw@mail.gmail.com>
 <X9JHjPTdxv6Z7lCW@google.com>
 <CALAqxLVz5bCYxehjVtCJ5eEJ-Wz81=fe30sqRtYtZpXWMkXZiw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLVz5bCYxehjVtCJ5eEJ-Wz81=fe30sqRtYtZpXWMkXZiw@mail.gmail.com>
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

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMDI6NDA6MzhQTSAtMDgwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgODowNiBBTSBNaW5jaGFuIEtpbSA8bWluY2hh
bkBrZXJuZWwub3JnPiB3cm90ZToKPiA+IE9uIFRodSwgRGVjIDEwLCAyMDIwIGF0IDEyOjE1OjE1
QU0gLTA4MDAsIEpvaG4gU3R1bHR6IHdyb3RlOgo+ID4gPiBXZWxsLCB3aGlsZSBJIGFncmVlIHRo
YXQgY29uY2VwdHVhbGx5IHRoZSBkbWFidWYgaGVhcHMgYWxsb3cgZm9yCj4gPiA+IGFsbG9jYXRp
b25zIGZvciBtdWx0aS1kZXZpY2UgcGlwZWxpbmVzLCBhbmQgdGh1cyBhcmUgbm90IHRpZWQgdG8K
PiA+ID4gc3BlY2lmaWMgZGV2aWNlcy4gSSBkbyB0aGluayB0aGF0IHRoZSBtZW1vcnkgdHlwZXMg
ZXhwb3NlZCBhcmUgbGlrZWx5Cj4gPiA+IHRvIGhhdmUgc3BlY2lmaWMgZGV2aWNlcy9kcml2ZXJz
IGluIHRoZSBwaXBlbGluZSB0aGF0IGl0IG1hdHRlcnMgbW9zdAo+ID4gPiB0by4gU28gSSBkb24n
dCBzZWUgYSBiaWcgaXNzdWUgd2l0aCB0aGUgaW4ta2VybmVsIGRyaXZlciByZWdpc3RlcmluZyBh
Cj4gPiA+IHNwZWNpZmljIENNQSByZWdpb24gYXMgYSBkbWFidWYgaGVhcC4KPiA+Cj4gPiBUaGVu
LCBJIGFtIHdvcnJ5IGFib3V0IHRoYXQgd2Ugc3ByZWFkIG91dCBkbWFfaGVhcF9hZGRfY21hIHRv
IHRvbyBtYW55Cj4gPiBkcml2ZXJzIHNpbmNlIGtlcm5lbCBkb2Vzbid0IGhvdyB1c2Vyc3BhY2Ug
d2lsbCB1c2UgaXQuCj4gPiBGb3IgZXhhbXBsZSwgc3lzdGVtIDEgY291bGQgaGF2ZSBkZXZpY2Ug
QS1CLUMgcGlwZWxpbmUgc28gdGhleSBhZGRlZAo+ID4gaXQgQSBkcml2ZXIuIEFmdGVyIHRoYXQs
IHN5c3RlbSAyIGNvdWxkIGhhdmUgZGV2aWNlIEItQy1EIHBpcGVsaW5lCj4gPiBzbyB0aGV5IGFk
ZCBkbWFfaGVhcF9hZGRfY21hIGludG8gQiBkZXZpY2UuCj4gCj4gSSdtIG5vdCBzdXJlIEkgc2Vl
IHRoaXMgYXMgYSBtYWpvciBpc3N1ZT8gSWYgdGhlIGRyaXZlcnMgYWRkIGl0IGJhc2VkCj4gb24g
dGhlIGR0IG1lbW9yeSByZWZlcmVuY2UsIHRob3NlIHdpbGwgYmUgY29uZmlndXJlZCB0byBub3Qg
YWRkCj4gZHVwbGljYXRlIGhlYXBzIChhbmQgZXZlbiBzbyB0aGUgaGVhcCBkcml2ZXIgY2FuIGFs
c28gZW5zdXJlIHdlIGRvbid0Cj4gdHJ5IHRvIGFkZCBhIGhlYXAgdHdpY2UpLgoKU3VyZSwgaXQg
ZG9lc24ndCBoYXZlIGFueSBwcm9ibGVtIHRvIHdvcmsgYnV0IGRlc2lnbiBwb25pbnQgb2Ygdmll
dywKaXQgbG9va3Mgd2VyaWQgdG8gbWUgaW4gdGhhdCBvbmUgb2YgcmFuZG9tIGRyaXZlciBpbiB0
aGUgc3BlY2lmaWMKc2NlbmFyaW8gc2hvdWxkIGhhdmUgdGhlIGhlYXAgcmVnaXN0cmF0aW9uIGFu
ZCB0aGVuIHdlIHByb3BhZ2F0ZQp0aGUgaGVhcCByZWdpc3RlcmF0aW9uIGxvZ2ljcyB0byBvdGhl
ciBkcml2ZXJzIGRheSBieSBkYXkuIFRvIGF2b2lkIERUCmJpbmRpbmcgd2l0aCBkbWFidWYgZGly
ZWN0eSBidXQgaXQgc2VlbXMgd2UgaGF2ZSBiYWQgZGVzaWduLgpUbyBtZSwgaXQgc291bmRzIGxp
a2UgdG8gdG9zcyBEVCB3aXRoIGFub255bW91cyBkbWFidWYgYmluZGluZyBwcm9ibGVtCnRvIGRl
dmljZSBkcml2ZXJzLgoKPiAKPiA+ID4gWWVhLCBhbiB1bi11cHN0cmVhbWFibGUgZHVtbXkgZHJp
dmVyIGlzIG1heWJlIHdoYXQgaXQgZGV2b2x2ZXMgdG8gaW4KPiA+ID4gdGhlIHdvcnN0IGNhc2Uu
IEJ1dCBJIHN1c3BlY3QgaXQgd291bGQgYmUgY2xlYW5lciBmb3IgYSBkaXNwbGF5IG9yIElTUAo+
ID4gPiBkcml2ZXIgdGhhdCBiZW5lZml0cyBtb3N0IGZyb20gdGhlIGhlYXAgdHlwZSB0byBhZGQg
dGhlIHJlc2VydmVkCj4gPiA+IG1lbW9yeSByZWZlcmVuY2UgdG8gdGhlaXIgRFQgbm9kZSwgYW5k
IG9uIGluaXQgZm9yIHRoZW0gdG8gcmVnaXN0ZXIKPiA+ID4gdGhlIHJlZ2lvbiB3aXRoIHRoZSBk
bWFidWYgaGVhcCBjb2RlLgo+ID4KPiA+IEFzIEkgbWVudGlvbmVkIGFib3ZlLCBpdCBjb3VsZCBi
ZSBhIGRpc3BsYXkgYXQgdGhpcyBtb21lbnQgYnV0IGl0IGNvdWxkCj4gPiBiZSBkaWZmZXJlbnQg
ZHJpdmVyIG5leHQgdGltZS4gSWYgSSBtaXNzIHlvdXIgcG9pbnQsIGxldCBtZSBrbm93Lgo+ID4K
PiAKPiBJIGd1ZXNzIEkganVzdCBkb24ndCBzZWUgcG90ZW50aWFsbHkgaGF2aW5nIHRoZSByZWdp
c3RyYXRpb24gY2FsbHMKPiBhZGRlZCB0byBtdWx0aXBsZSBkcml2ZXJzIGFzIGEgYmlnIHByb2Js
ZW0uCj4gCj4gSWRlYWxseSwgeWVzLCBJJ2QgcHJvYmFibHkgcmF0aGVyIHNlZSBhIERUIG5vZGUg
dGhhdCB3b3VsZCBhbGxvdyB0aGUKPiBoZWFwIGRyaXZlciB0byByZWdpc3RlciBzcGVjaWZpZWQg
cmVnaW9ucywgYnV0IHRoYXQncyBiZWVuIE5BQ0tlZAo+IG11bHRpcGxlIHRpbWVzLiBHaXZlbiB0
aGF0LCBoYXZpbmcgaG9va3MgaW4gZGV2aWNlIGRyaXZlcnMgdG8gZXhwb3J0Cj4gdGhlIHJlZ2lv
biBzZWVtcyB0byBtZSBsaWtlIHRoZSBuZXh0IGJlc3QgYXBwcm9hY2gsIGFzIGl0IGF2b2lkcyBE
VAo+IEFCSSAoIGlmIGVuZHMgdXAgaXRzIGEgYmFkIGFwcHJvYWNoLCBpdHMgbm90IHNvbWV0aGlu
ZyB3ZSBoYXZlIHRvCj4ga2VlcCkuCj4gCj4gVGhlIGJpZ2dlciBwcm9ibGVtIHJpZ2h0IG5vdyBp
cyBub3QgdGhhdCB0aGVyZSBhcmUgdG9vIG1hbnkgcGxhY2VzIHRoZQo+IHJlZ2lzdHJhdGlvbiBj
YWxsIHdvdWxkIGJlIG1hZGUgZnJvbSwgYnV0IHRoYXQgdGhlcmUgYXJlbid0IHVwc3RyZWFtCj4g
ZHJpdmVycyB3aGljaCBJJ20gYXdhcmUgb2Ygd2hlcmUgaXQgd291bGQgY3VycmVudGx5IG1ha2Ug
c2Vuc2UgdG8gYWRkCj4gc3BlY2lmaWMgZG1hX2hlYXBfYWRkX2NtYSgpIHJlZ2lzdHJhdGlvbiBo
b29rcyB0by4gIFdlIG5lZWQgYW4KPiB1cHN0cmVhbSB1c2VyIG9mIEt1bmloaWtvIEhheWFzaGkn
cyBwYXRjaC4KCkhtbSwgaWYgdGhhdCdzIG9ubHkgd2F5IHRvIHByb2NlZWQsIEh5ZXNvbywgZG8g
eW91IGhhdmUgYW55IHNwZWNpZmlkCmRyaXZlciBpbiB5b3VyIG1pbmQgdG8gYmluZCB0aGUgQ01B
IGFyZWE/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
