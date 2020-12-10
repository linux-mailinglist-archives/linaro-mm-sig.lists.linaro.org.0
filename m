Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E23E52D5528
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 09:16:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F2E660F2C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Dec 2020 08:16:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 004D46670A; Thu, 10 Dec 2020 08:16:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1DC766539;
	Thu, 10 Dec 2020 08:15:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9C77460DC1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 08:15:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7D78166539; Thu, 10 Dec 2020 08:15:28 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id 5091560DC1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 08:15:27 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id a109so4111112otc.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Dec 2020 00:15:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=olWrAE9JSl9kyhmzpxdnQFXpcomh9eOZ+RfshA6M+Yw=;
 b=aOL8kTL6kJnsj2Z6wKUTFk01RAT8RFU3CxXMZbABLYfmKo+ByNCXgi1NqDsI+6KtB+
 GoOb/H7BnpJ0JSouxG+oPOwF/3Q8m4WF4DsJwm6ocR4U1rEv0dO1BuCsJ+QYyVM0tlZ9
 MVqFbvLsxAu3CMReYZGqt4S3/rVyDnhR1TM7/plhytah1xNVaXLgi5ffyPTGgtP2ofiA
 8WQ0iaIp927++vv8X8gitJQYkFlNctXw/sa/tfLV4IoSon4ldXBBnNKqAwSF98PNirRw
 P3aUd0N+XBJDYd66fHXYmQxzcOM2e+qFUXG1GHIL6dhIbuE+xkcwOL9o8eBULrO94/iG
 7FAA==
X-Gm-Message-State: AOAM530imflDFG+QcJA/Z5QVKXziXuiJygPYzNACIwb9Dm8i9y2Ugkg7
 ae2mShjWUnIjUPaz6fn5os5otBewN4gOn3dKUHie1xQN
X-Google-Smtp-Source: ABdhPJzESi9phEemd0Mo7b+JZyuIKDL6cbPIDC8u/pLidmYe6NDQenscRoW5LI/oInq9snMQmz4nqWLuWYa3ePUC+pk=
X-Received: by 2002:a05:6830:1411:: with SMTP id
 v17mr1298573otp.352.1607588126592; 
 Thu, 10 Dec 2020 00:15:26 -0800 (PST)
MIME-Version: 1.0
References: <20201117181935.3613581-1-minchan@kernel.org>
 <20201117181935.3613581-5-minchan@kernel.org>
 <CGME20201118030110epcas2p1105a09711ea2c123f19f413b32372764@epcas2p1.samsung.com>
 <CALAqxLWqDLHpOHNEayvhDjJeXjEk_uneH2=d9fy8M87EjKfReA@mail.gmail.com>
 <20201119011431.GA136599@KEI>
 <CALAqxLV=r-V6u8hq2fTmxq855nT7QPkkjyAYdPeZRkYPBi_CKg@mail.gmail.com>
 <X9Fjd+eSStUJskOV@google.com>
In-Reply-To: <X9Fjd+eSStUJskOV@google.com>
From: John Stultz <john.stultz@linaro.org>
Date: Thu, 10 Dec 2020 00:15:15 -0800
Message-ID: <CALAqxLWthd8bEDRMWmuOf8dOCW8=cFao9HBawKGuRhQZkdgXXw@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
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

T24gV2VkLCBEZWMgOSwgMjAyMCBhdCAzOjUzIFBNIE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5l
bC5vcmc+IHdyb3RlOgo+IE9uIFdlZCwgTm92IDE4LCAyMDIwIGF0IDA3OjE5OjA3UE0gLTA4MDAs
IEpvaG4gU3R1bHR6IHdyb3RlOgo+ID4gVGhlIENNQSBoZWFwIGN1cnJlbnRseSBvbmx5IHJlZ2lz
dGVycyB0aGUgZGVmYXVsdCBDTUEgaGVhcCwgYXMgd2UKPiA+IGRpZG4ndCB3YW50IHRvIGV4cG9z
ZSBhbGwgQ01BIHJlZ2lvbnMgYW5kIHRoZXJlJ3Mgb3RoZXJ3aXNlIG5vIHdheSB0bwo+ID4gcGlj
ayBhbmQgY2hvb3NlLgo+Cj4gWXViLgo+Cj4gZG1hLWJ1ZiByZWFsbHkgbmVlZCBhIHdheSB0byBt
YWtlIGV4Y2x1c2l2ZSBDTUEgYXJlYS4gT3RoZXJ3aXNlLCBkZWZhdWx0Cj4gQ01BIHdvdWxkIGJl
IHNoYXJlZCBhbW9uZyBkcml2ZXJzIGFuZCBpbnRyb2R1Y2UgZnJhZ21lbnRhdGlvbiBlYXNpbHkK
PiBzaW5jZSB3ZSBjb3VsZG4ndCBjb250cm9sIG90aGVyIGRyaXZlcnMuIEluIHN1Y2ggYXNwZWN0
LCBJIGRvbid0IHRoaW5rCj4gY3VycmVudCBjbWEtaGVhcCB3b3JrcyBpZiB1c2Vyc3BhY2UgbmVl
ZHMgYmlnIG1lbW9yeSBjaHVuay4KClllcywgdGhlIGRlZmF1bHQgQ01BIHJlZ2lvbiBpcyBub3Qg
YWx3YXlzIG9wdGltYWwuCgpUaGF0J3Mgd2h5IEkgd2FzIGhvcGVmdWwgZm9yIEt1bmloaWtvIEhh
eWFzaGkncyBwYXRjaCB0byBhbGxvdyBmb3IKZXhwb3Npbmcgc3BlY2lmaWMgY21hIHJlZ2lvbnM6
CiAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8xNTk0OTQ4MjA4LTQ3MzktMS1naXQtc2Vu
ZC1lbWFpbC1oYXlhc2hpLmt1bmloaWtvQHNvY2lvbmV4dC5jb20vCgpJIHRoaW5rIGl0IHdvdWxk
IGJlIGEgZ29vZCBzb2x1dGlvbiwgYnV0IGFsbCB3ZSBuZWVkIGlzICpzb21lKiBkcml2ZXIKd2hp
Y2ggY2FuIGJlIGNvbnNpZGVyZWQgdGhlIHByaW1hcnkgdXNlci9vd25lciBvZiB0aGUgY21hIHJl
Z2lvbiB3aGljaAp3b3VsZCB0aGVuIGV4cGxpY2l0bHkgZXhwb3J0IGl0IHZpYSB0aGUgZG1hYnVm
IGhlYXBzLgoKPiBIZXJlLCB0aGUgcHJvYmxlbSBpcyB0aGVyZSBpcyBubyBpbi1rZXJuZWwgdXNl
ciB0byBiaW5kIHRoZSBzcGVjaWZpYwo+IENNQSBhcmVhIGJlY2F1c2UgdGhlIG93bmVyIHdpbGwg
YmUgcmFuZG9tIGluIHVzZXJzcGFjZSB2aWEgZG1hLWJ1Zgo+IGludGVyZmFjZS4KCldlbGwsIHdo
aWxlIEkgYWdyZWUgdGhhdCBjb25jZXB0dWFsbHkgdGhlIGRtYWJ1ZiBoZWFwcyBhbGxvdyBmb3IK
YWxsb2NhdGlvbnMgZm9yIG11bHRpLWRldmljZSBwaXBlbGluZXMsIGFuZCB0aHVzIGFyZSBub3Qg
dGllZCB0bwpzcGVjaWZpYyBkZXZpY2VzLiBJIGRvIHRoaW5rIHRoYXQgdGhlIG1lbW9yeSB0eXBl
cyBleHBvc2VkIGFyZSBsaWtlbHkKdG8gaGF2ZSBzcGVjaWZpYyBkZXZpY2VzL2RyaXZlcnMgaW4g
dGhlIHBpcGVsaW5lIHRoYXQgaXQgbWF0dGVycyBtb3N0CnRvLiBTbyBJIGRvbid0IHNlZSBhIGJp
ZyBpc3N1ZSB3aXRoIHRoZSBpbi1rZXJuZWwgZHJpdmVyIHJlZ2lzdGVyaW5nIGEKc3BlY2lmaWMg
Q01BIHJlZ2lvbiBhcyBhIGRtYWJ1ZiBoZWFwLgoKPiA+ID4gSXMgdGhlcmUgYSByZWFzb24gdG8g
dXNlIGRtYS1oZWFwIGZyYW1ld29yayB0byBhZGQgY21hLWFyZWEgZm9yIHNwZWNpZmljIGRldmlj
ZSA/Cj4gPiA+Cj4gPiA+IEV2ZW4gaWYgc29tZSBpbi10cmVlIHVzZXJzIHJlZ2lzdGVyIGRtYS1o
ZWFwIHdpdGggY21hLWFyZWEsIHRoZSBidWZmZXJzIGNvdWxkIGJlIGFsbG9jYXRlZCBpbiB1c2Vy
LWxhbmQgYW5kIHRoZXNlIGNvdWxkIGJlIHNoYXJlZCBhbW9uZyBvdGhlciBkZXZpY2VzLgo+ID4g
PiBGb3IgZXhjbHVzaXZlIGFjY2VzcywgSSBndWVzcywgdGhlIGRldmljZSBkb24ndCBuZWVkIHRv
IHJlZ2lzdGVyIGRtYS1oZWFwIGZvciBjbWEgYXJlYS4KPiA+ID4KPiA+Cj4gPiBJdCdzIG5vdCBy
ZWFsbHkgYWJvdXQgZXhjbHVzaXZlIGFjY2Vzcy4gTW9yZSBqdXN0IHRoYXQgaWYgeW91IHdhbnQg
dG8KPiA+IGJpbmQgYSBtZW1vcnkgcmVzZXJ2YXRpb24vcmVnaW9uIChjbWEgb3Igb3RoZXJ3aXNl
KSwgYXQgbGVhc3QgZm9yIERUUywKPiA+IGl0IG5lZWRzIHRvIGJpbmQgd2l0aCBzb21lIGRldmlj
ZSBpbiBEVC4KPiA+Cj4gPiBUaGVuIHRoZSBkZXZpY2UgZHJpdmVyIGNhbiByZWdpc3RlciB0aGF0
IHJlZ2lvbiB3aXRoIGEgaGVhcCBkcml2ZXIuCj4gPiBUaGlzIGF2b2lkcyBhZGRpbmcgbmV3IExp
bnV4LXNwZWNpZmljIHNvZnR3YXJlIGJpbmRpbmdzIHRvIERULiBJdAo+ID4gYmVjb21lcyBhIGRy
aXZlciBpbXBsZW1lbnRhdGlvbiBkZXRhaWwgaW5zdGVhZC4gVGhlIHByaW1hcnkgdXNlciBvZgo+
ID4gdGhlIGhlYXAgdHlwZSB3b3VsZCBwcm9iYWJseSBiZSBhIHByYWN0aWNhbCBwaWNrIChpZSB0
aGUgZGlzcGxheSBvcgo+ID4gaXNwIGRyaXZlcikuCj4KPiBJZiBpdCdzIHRoZSBvbmx5IHNvbHV0
aW9uLCB3ZSBjb3VsZCBjcmVhdGUgc29tZSBkdW1teSBkcml2ZXIgd2hpY2ggaGFzCj4gb25seSBt
b2R1bGVfaW5pdCBhbmQgYmluZCBpdCBmcm9tIHRoZXJlIGJ1dCBJIGRvbid0IHRoaW5rIGl0J3Mg
YSBnb29kCj4gaWRlYS4KClllYSwgYW4gdW4tdXBzdHJlYW1hYmxlIGR1bW15IGRyaXZlciBpcyBt
YXliZSB3aGF0IGl0IGRldm9sdmVzIHRvIGluCnRoZSB3b3JzdCBjYXNlLiBCdXQgSSBzdXNwZWN0
IGl0IHdvdWxkIGJlIGNsZWFuZXIgZm9yIGEgZGlzcGxheSBvciBJU1AKZHJpdmVyIHRoYXQgYmVu
ZWZpdHMgbW9zdCBmcm9tIHRoZSBoZWFwIHR5cGUgdG8gYWRkIHRoZSByZXNlcnZlZAptZW1vcnkg
cmVmZXJlbmNlIHRvIHRoZWlyIERUIG5vZGUsIGFuZCBvbiBpbml0IGZvciB0aGVtIHRvIHJlZ2lz
dGVyCnRoZSByZWdpb24gd2l0aCB0aGUgZG1hYnVmIGhlYXAgY29kZS4KCgo+ID4gVGhlIG90aGVy
IHBvdGVudGlhbCBzb2x1dGlvbiBSb2IgaGFzIHN1Z2dlc3RlZCBpcyB0aGF0IHdlIGNyZWF0ZSBz
b21lCj4gPiB0YWcgZm9yIHRoZSBtZW1vcnkgcmVzZXJ2YXRpb24gKGllOiBsaWtlIHdlIGRvIHdp
dGggY21hOiAicmV1c2FibGUiKSwKPiA+IHdoaWNoIGNhbiBiZSB1c2VkIHRvIHJlZ2lzdGVyIHRo
ZSByZWdpb24gdG8gYSBoZWFwLiBCdXQgdGhpcyBoYXMgdGhlCj4gPiBwcm9ibGVtIHRoYXQgZWFj
aCB0YWcgaGFzIHRvIGJlIHdlbGwgZGVmaW5lZCBhbmQgbWFwIHRvIGEga25vd24gaGVhcC4KPgo+
IERvIHlvdSB0aGluayB0aGF0J3MgdGhlIG9ubHkgc29sdXRpb24gdG8gbWFrZSBwcm9ncmVzcyBm
b3IgdGhpcyBmZWF0dXJlPwo+IFRoZW4sIGNvdWxkIHlvdSBlbGFib3JhdGUgaXQgYSBiaXQgbW9y
ZSBvciBhbnkgb3RoZXIgaWRlYXMgZnJvbSBkbWEtYnVmCj4gZm9sa3M/CgpJJ20gc2tlcHRpY2Fs
IG9mIHRoYXQgRFQgdGFnIGFwcHJvYWNoIHdvcmtpbmcgb3V0LCBhcyB3ZSdkIG5lZWQgYSBuZXcK
RFQgYmluZGluZyBmb3IgdGhlIG5ldyB0YWcgbmFtZSwgYW5kIHdlJ2QgaGF2ZSB0byBkbyBzbyBm
b3IgZWFjaCBuZXcKaGVhcCB0eXBlIHRoYXQgbmVlZHMgdGhpcyAoc28gbm9uLWRlZmF1bHQgY21h
LCB5b3VyIGNodW5rIGhlYXAsCndoYXRldmVyIG90aGVyIHNpbWlsYXIgaGVhcCB0eXBlcyB0aGF0
IHVzZSByZXNlcnZlZCByZWdpb25zIGZvbGtzIGNvbWUKdXAgd2l0aCkuICBIYXZpbmcgKnNvbWUq
IGRyaXZlciB0YWtlIG93bmVyc2hpcCBmb3IgdGhlIHJlc2VydmVkIHJlZ2lvbgphbmQgcmVnaXN0
ZXIgaXQgd2l0aCB0aGUgYXBwcm9wcmlhdGUgaGVhcCB0eXBlIHNlZW1zIG11Y2gKY2xlYW5lci9m
bGV4aWJsZSBhbmQgYXZvaWRzIG11Y2tpbmcgd2l0aCB0aGUgRFQgQUJJLgoKdGhhbmtzCi1qb2hu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
