Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A0E2D4F17
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 00:54:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41D8561939
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Dec 2020 23:54:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 331D16248D; Wed,  9 Dec 2020 23:54:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04F7C666E7;
	Wed,  9 Dec 2020 23:53:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0CED461939
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Dec 2020 23:53:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E8F7E666E7; Wed,  9 Dec 2020 23:53:33 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by lists.linaro.org (Postfix) with ESMTPS id 64ABF61939
 for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Dec 2020 23:53:32 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id e2so2457448pgi.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Dec 2020 15:53:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=LINlBO/TC6i2SZUXr1MFYVpHThXjdgKp5RJMwGfVaFM=;
 b=e6XZ1slSg7vDQPso0xBTFBgwuYiFqOWDSJwND8ggD0M9SRAjgrBBVYpTKGYNI9iJRU
 9cycM7VQz6EmBQ7kmI6dkoqj6wFaJ3wAaayPDpObIWkbkamq3/V5VVCjSvBRIN5CU5hz
 PeRltZsVsTh/E5ibGgHadwPJdBHH2aa2codqFpKcBK/U9ifw9OSvkqxiRU4/X9T6W8L4
 ZndpU9LxoLKLL6Dv81UW5Uo2Vf5wtCP0q0HHHCDHVvYmtRVlpIwygAt0AxgTD83+FW+H
 zax32SX92luERDClBGp3nWQUCICVUqAB4osXcvofXs8bJD4m21bf82DjE+KfvxX5p4zU
 SWzQ==
X-Gm-Message-State: AOAM531h1vA08ajwlJ6KcLablXlPTtEUBpdK4nxXevN3jClUuVafqsfy
 1Nh6gDC1edRfgRmPgi8iqNU=
X-Google-Smtp-Source: ABdhPJxXQYKC6C+ZALoZwKd3MPYBy3Ldrw2eWk/ZTeLxkruiOLwLFI4xttcrwjLymhD24YOSNPZv7Q==
X-Received: by 2002:a63:cd01:: with SMTP id i1mr4137530pgg.83.1607558011479;
 Wed, 09 Dec 2020 15:53:31 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id f7sm3742524pfe.30.2020.12.09.15.53.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Dec 2020 15:53:30 -0800 (PST)
Date: Wed, 9 Dec 2020 15:53:27 -0800
From: Minchan Kim <minchan@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <X9Fjd+eSStUJskOV@google.com>
References: <20201117181935.3613581-1-minchan@kernel.org>
 <20201117181935.3613581-5-minchan@kernel.org>
 <CGME20201118030110epcas2p1105a09711ea2c123f19f413b32372764@epcas2p1.samsung.com>
 <CALAqxLWqDLHpOHNEayvhDjJeXjEk_uneH2=d9fy8M87EjKfReA@mail.gmail.com>
 <20201119011431.GA136599@KEI>
 <CALAqxLV=r-V6u8hq2fTmxq855nT7QPkkjyAYdPeZRkYPBi_CKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLV=r-V6u8hq2fTmxq855nT7QPkkjyAYdPeZRkYPBi_CKg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-mm <linux-mm@kvack.org>,
 Hyesoo Yu <hyesoo.yu@samsung.com>,
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

T24gV2VkLCBOb3YgMTgsIDIwMjAgYXQgMDc6MTk6MDdQTSAtMDgwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gV2VkLCBOb3YgMTgsIDIwMjAgYXQgNToyMiBQTSBIeWVzb28gWXUgPGh5ZXNvby55
dUBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gVHVlLCBOb3YgMTcsIDIwMjAgYXQgMDc6
MDA6NTRQTSAtMDgwMCwgSm9obiBTdHVsdHogd3JvdGU6Cj4gPiA+IFNvIEkgc3VzcGVjdCBSb2Ig
d2lsbCBwdXNoIGJhY2sgb24gdGhpcyBhcyBoZSBoYXMgZm9yIG90aGVyIGR0Cj4gPiA+IGJpbmRp
bmdzIHJlbGF0ZWQgdG8gaW9uL2RtYWJ1ZiBoZWFwcyAoSSB0cmllZCB0byBwdXNoIGEgc2ltaWxh
cgo+ID4gPiBzb2x1dGlvbiB0byBleHBvcnRpbmcgbXVsdGlwbGUgQ01BIGFyZWFzIHZpYSBkbWFi
dWYgaGVhcHMpLgo+ID4gPgo+ID4gPiBUaGUgcHJvcG9zYWwgaGUgc2VlbWVkIHRvIGxpa2UgYmVz
dCB3YXMgaGF2aW5nIGFuIGluLWtlcm5lbCBmdW5jdGlvbgo+ID4gPiB0aGF0IGEgZHJpdmVyIHdv
dWxkIGNhbGwgdG8gaW5pdGlhbGl6ZSB0aGUgaGVhcCAoYXNzb2NpYXRlZCB3aXRoIHRoZQo+ID4g
PiBDTUEgcmVnaW9uIHRoZSBkcml2ZXIgaXMgaW50ZXJlc3RlZCBpbikuIFNpbWlsYXIgdG8gS3Vu
aWhpa28gSGF5YXNoaSdzCj4gPiA+IHBhdGNoIGhlcmU6Cj4gPiA+ICAgLSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9sa21sLzE1OTQ5NDgyMDgtNDczOS0xLWdpdC1zZW5kLWVtYWlsLWhheWFzaGku
a3VuaWhpa29Ac29jaW9uZXh0LmNvbS8KPiA+ID4KPiA+ID4gVGhlIG9uZSBzdGlja2luZyBwb2lu
dCBmb3IgdGhhdCBwYXRjaCAod2hpY2ggSSB0aGluayBpcyBhIGdvb2Qgb25lKSwKPiA+ID4gaXMg
dGhhdCB3ZSBkb24ndCBoYXZlIGFueSBpbi10cmVlIHVzZXJzLCBzbyBpdCBjb3VsZG4ndCBiZSBt
ZXJnZWQgeWV0Lgo+ID4gPgo+ID4gPiBBIHNpbWlsYXIgYXBwcm9hY2ggbWlnaHQgYmUgZ29vZCBo
ZXJlLCBidXQgYWdhaW4gd2UgcHJvYmFibHkgbmVlZCB0bwo+ID4gPiBoYXZlIGF0IGxlYXN0IG9u
ZSBpbi10cmVlIHVzZXIgd2hpY2ggY291bGQgY2FsbCBzdWNoIGEgcmVnaXN0cmF0aW9uCj4gPiA+
IGZ1bmN0aW9uLgo+ID4KPiA+IFRoYW5rcyBmb3IgeW91ciByZXZpZXcuCj4gPgo+ID4gVGhlIGNo
dW5rIGhlYXAgaXMgbm90IGNvbnNpZGVyZWQgZm9yIGRldmljZS1zcGVjaWZpYyByZXNlcnZlZCBt
ZW1vcnkgYW5kIHNwZWNpZmljIGRyaXZlci4KPiA+IEl0IGlzIHNpbWlsYXIgdG8gc3lzdGVtIGhl
YXAsIGJ1dCBpdCBvbmx5IGNvbGxlY3RzIGhpZ2gtb3JkZXIgcGFnZXMgYnkgdXNpbmcgc3BlY2lm
aWMgY21hLWFyZWEgZm9yIHBlcmZvcm1hbmNlLgo+IAo+IFNvLCB5ZXMgSSBhZ3JlZSwgdGhlIGNo
dW5rIGhlYXAgaXNuJ3QgZGV2aWNlIHNwZWNpZmljLiBJdCdzIGp1c3QgdGhhdAo+IHRoZSBDTUEg
cmVnaW9ucyB1c3VhbGx5IGFyZSB0aWVkIHRvIGRldmljZXMuCj4gCj4gVGhlIG1haW4gb2JqZWN0
aW9uIHRvIHRoaXMgc3R5bGUgb2Ygc29sdXRpb24gaGFzIGJlZW4gZHVlIHRvIHRoZSBmYWN0Cj4g
dGhhdCB0aGUgRFRTIGlzIHN1cHBvc2VkIHRvIGRlc2NyaWJlIHRoZSBwaHlzaWNhbCBoYXJkd2Fy
ZSAoaW4gYW4gT1MKPiBhZ25vc3RpYyB3YXkpLCByYXRoZXIgdGhhbiBkZWZpbmUgY29uZmlndXJh
dGlvbiBpbmZvIGZvciBMaW51eAo+IHNvZnR3YXJlIGRyaXZlcnMuCj4gCj4gT2J2aW91c2x5IHRo
aXMgY2FuIGJlIHF1aWJibGVkIGFib3V0LCBhcyB0aGUgbm9ybWFsIHdheSBvZiB0eWluZwo+IGRl
dmljZXMgdG8gQ01BIGhhcyBzb21lIGFzc3VtcHRpb25zIG9mIHdoYXQgdGhlIGRyaXZlciB3aWxs
IHVzZSB0aGF0Cj4gcmVnaW9uIGZvciwgcmF0aGVyIHRoYW4gc29tZWhvdyByZXByZXNlbnRpbmcg
YSBwaHlzaWNhbCB0aWUgYmV0d2VlbiBhCj4gbWVtb3J5IHJlc2VydmF0aW9uIGFuZCBhIGRldmlj
ZS4gTm9uZXRoZWxlc3MsIFJvYiBoYXMgYmVlbiBoZXNpdGFudCB0bwo+IHRha2UgYW55IHNvcnQg
b2YgSU9OL0RtYUJ1ZiBIZWFwIERUIGRldmljZXMsIGFuZCBoYXMgYmVlbiBtb3JlCj4gaW50ZXJl
c3RlZCBpbiBzb21lIGRldmljZSBoYXZpbmcgdGhlIG1lbW9yeSByZXNlcnZhdGlvbiByZWZlcmVu
Y2UgYW5kCj4gdGhlIGRyaXZlciBmb3IgdGhhdCBkb2luZyB0aGUgcmVnaXN0cmF0aW9uLgo+IAo+
ID4gSXQgaXMgc3RyYW5nZSB0aGF0IHRoZXJlIGlzIGluLXRyZWUgdXNlciB3aG8gcmVnaXN0ZXJz
IGNodW5rIGhlYXAuCj4gPiAoV291bGRuJ3QgaXQgYmUgc3RyYW5nZSBmb3Igc29tZSB1c2VycyB0
byByZWdpc3RlciB0aGUgc3lzdGVtIGhlYXA/KQo+IAo+IFdlbGwsIGFzIHRoZXJlJ3Mgbm8gcmVz
ZXJ2YXRpb24vY29uZmlndXJhdGlvbiBuZWVkZWQsIHRoZSBzeXN0ZW0gaGVhcAo+IGNhbiByZWdp
c3RlciBpdHNlbGYuCj4gCj4gVGhlIENNQSBoZWFwIGN1cnJlbnRseSBvbmx5IHJlZ2lzdGVycyB0
aGUgZGVmYXVsdCBDTUEgaGVhcCwgYXMgd2UKPiBkaWRuJ3Qgd2FudCB0byBleHBvc2UgYWxsIENN
QSByZWdpb25zIGFuZCB0aGVyZSdzIG90aGVyd2lzZSBubyB3YXkgdG8KPiBwaWNrIGFuZCBjaG9v
c2UuCgpZdWIuCgpkbWEtYnVmIHJlYWxseSBuZWVkIGEgd2F5IHRvIG1ha2UgZXhjbHVzaXZlIENN
QSBhcmVhLiBPdGhlcndpc2UsIGRlZmF1bHQKQ01BIHdvdWxkIGJlIHNoYXJlZCBhbW9uZyBkcml2
ZXJzIGFuZCBpbnRyb2R1Y2UgZnJhZ21lbnRhdGlvbiBlYXNpbHkKc2luY2Ugd2UgY291bGRuJ3Qg
Y29udHJvbCBvdGhlciBkcml2ZXJzLiBJbiBzdWNoIGFzcGVjdCwgSSBkb24ndCB0aGluawpjdXJy
ZW50IGNtYS1oZWFwIHdvcmtzIGlmIHVzZXJzcGFjZSBuZWVkcyBiaWcgbWVtb3J5IGNodW5rLgoK
SGVyZSwgdGhlIHByb2JsZW0gaXMgdGhlcmUgaXMgbm8gaW4ta2VybmVsIHVzZXIgdG8gYmluZCB0
aGUgc3BlY2lmaWMKQ01BIGFyZWEgYmVjYXVzZSB0aGUgb3duZXIgd2lsbCBiZSByYW5kb20gaW4g
dXNlcnNwYWNlIHZpYSBkbWEtYnVmCmludGVyZmFjZS4KCj4gCj4gPiBJcyB0aGVyZSBhIHJlYXNv
biB0byB1c2UgZG1hLWhlYXAgZnJhbWV3b3JrIHRvIGFkZCBjbWEtYXJlYSBmb3Igc3BlY2lmaWMg
ZGV2aWNlID8KPiA+Cj4gPiBFdmVuIGlmIHNvbWUgaW4tdHJlZSB1c2VycyByZWdpc3RlciBkbWEt
aGVhcCB3aXRoIGNtYS1hcmVhLCB0aGUgYnVmZmVycyBjb3VsZCBiZSBhbGxvY2F0ZWQgaW4gdXNl
ci1sYW5kIGFuZCB0aGVzZSBjb3VsZCBiZSBzaGFyZWQgYW1vbmcgb3RoZXIgZGV2aWNlcy4KPiA+
IEZvciBleGNsdXNpdmUgYWNjZXNzLCBJIGd1ZXNzLCB0aGUgZGV2aWNlIGRvbid0IG5lZWQgdG8g
cmVnaXN0ZXIgZG1hLWhlYXAgZm9yIGNtYSBhcmVhLgo+ID4KPiAKPiBJdCdzIG5vdCByZWFsbHkg
YWJvdXQgZXhjbHVzaXZlIGFjY2Vzcy4gTW9yZSBqdXN0IHRoYXQgaWYgeW91IHdhbnQgdG8KPiBi
aW5kIGEgbWVtb3J5IHJlc2VydmF0aW9uL3JlZ2lvbiAoY21hIG9yIG90aGVyd2lzZSksIGF0IGxl
YXN0IGZvciBEVFMsCj4gaXQgbmVlZHMgdG8gYmluZCB3aXRoIHNvbWUgZGV2aWNlIGluIERULgo+
IAo+IFRoZW4gdGhlIGRldmljZSBkcml2ZXIgY2FuIHJlZ2lzdGVyIHRoYXQgcmVnaW9uIHdpdGgg
YSBoZWFwIGRyaXZlci4KPiBUaGlzIGF2b2lkcyBhZGRpbmcgbmV3IExpbnV4LXNwZWNpZmljIHNv
ZnR3YXJlIGJpbmRpbmdzIHRvIERULiBJdAo+IGJlY29tZXMgYSBkcml2ZXIgaW1wbGVtZW50YXRp
b24gZGV0YWlsIGluc3RlYWQuIFRoZSBwcmltYXJ5IHVzZXIgb2YKPiB0aGUgaGVhcCB0eXBlIHdv
dWxkIHByb2JhYmx5IGJlIGEgcHJhY3RpY2FsIHBpY2sgKGllIHRoZSBkaXNwbGF5IG9yCj4gaXNw
IGRyaXZlcikuCgpJZiBpdCdzIHRoZSBvbmx5IHNvbHV0aW9uLCB3ZSBjb3VsZCBjcmVhdGUgc29t
ZSBkdW1teSBkcml2ZXIgd2hpY2ggaGFzIApvbmx5IG1vZHVsZV9pbml0IGFuZCBiaW5kIGl0IGZy
b20gdGhlcmUgYnV0IEkgZG9uJ3QgdGhpbmsgaXQncyBhIGdvb2QKaWRlYS4KCj4gCj4gVGhlIG90
aGVyIHBvdGVudGlhbCBzb2x1dGlvbiBSb2IgaGFzIHN1Z2dlc3RlZCBpcyB0aGF0IHdlIGNyZWF0
ZSBzb21lCj4gdGFnIGZvciB0aGUgbWVtb3J5IHJlc2VydmF0aW9uIChpZTogbGlrZSB3ZSBkbyB3
aXRoIGNtYTogInJldXNhYmxlIiksCj4gd2hpY2ggY2FuIGJlIHVzZWQgdG8gcmVnaXN0ZXIgdGhl
IHJlZ2lvbiB0byBhIGhlYXAuIEJ1dCB0aGlzIGhhcyB0aGUKPiBwcm9ibGVtIHRoYXQgZWFjaCB0
YWcgaGFzIHRvIGJlIHdlbGwgZGVmaW5lZCBhbmQgbWFwIHRvIGEga25vd24gaGVhcC4KCkRvIHlv
dSB0aGluayB0aGF0J3MgdGhlIG9ubHkgc29sdXRpb24gdG8gbWFrZSBwcm9ncmVzcyBmb3IgdGhp
cyBmZWF0dXJlPwpUaGVuLCBjb3VsZCB5b3UgZWxhYm9yYXRlIGl0IGEgYml0IG1vcmUgb3IgYW55
IG90aGVyIGlkZWFzIGZyb20gZG1hLWJ1Zgpmb2xrcz8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
