Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3012CB1E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 01:58:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A13860639
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Dec 2020 00:58:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3A43965F83; Wed,  2 Dec 2020 00:58:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BAB6766015;
	Wed,  2 Dec 2020 00:57:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AD0F365F83
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 00:57:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9280766015; Wed,  2 Dec 2020 00:57:48 +0000 (UTC)
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by lists.linaro.org (Postfix) with ESMTPS id 87D6665F83
 for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Dec 2020 00:57:47 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id r20so165541pjp.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Dec 2020 16:57:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=u8Im7pUwrYZIu0XDUm9McsW1+o37J6dtqvcGYr5EvvM=;
 b=VY3igtgT/yD4N3+2A31Y7oWPQYpZdKqp4MTUFx1KE2CIsdbaWlshR6+8bgkU5yjIQK
 XN5VIz03A7hVadpPmL/a0tSKlHoZd9dtBiL78sZKUuwa+D4jR3SZC1WnZsezCNX9hkMJ
 LuUj6p8WIngNjFmd4YcPMaFXgpmOpHe+exsidyyCMODTejLFqlDGC11kIhh77pVmk453
 YRe1t8H9rMSxODM57V9yqm5zhobD5lGgVBH+Bf30Y/Rh/Y8zHRc1/m4d6gufB3Dj3Yz/
 BFFgm37YRRIX8O5QGJvyKpsnc3tx/WpDyorOhYQnKGfZfc/QMVtrkNI8aKzjdZh8xso4
 +gkw==
X-Gm-Message-State: AOAM533qDmixpnAJkg8V35xnPPJltPHczPova8kBTQuPO0+3eAd7NQMT
 zFUc1Rw/cxjLSP3FX2HEtyM=
X-Google-Smtp-Source: ABdhPJxOwt1LLWu0zBZo4zhSX/vym8XXbM9DzbOWO25SHPiEUpnWcuYQuilFfwq2/N2y63yU4bdXqA==
X-Received: by 2002:a17:90a:ee8c:: with SMTP id
 i12mr406366pjz.33.1606870666635; 
 Tue, 01 Dec 2020 16:57:46 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id y25sm119905pfn.44.2020.12.01.16.57.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 16:57:45 -0800 (PST)
Date: Tue, 1 Dec 2020 16:57:42 -0800
From: Minchan Kim <minchan@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20201202005742.GC3968963@google.com>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-5-minchan@kernel.org>
 <CALAqxLXFeUStaJ8Mtm5v3kSxmeqnjzLTsyathkrKF0ke3fYGiQ@mail.gmail.com>
 <20201201225554.GA3968963@google.com>
 <CALAqxLW-n4-VSd9dj=KXS4WRDrPmKOShAwP9tCfCZnk+4kxW-w@mail.gmail.com>
 <20201202001302.GB3968963@google.com>
 <CALAqxLVBRPOCwLU1iY44Nh1-SpDpsfMz+2c1XRX2WofkpjrhcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLVBRPOCwLU1iY44Nh1-SpDpsfMz+2c1XRX2WofkpjrhcQ@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-mm <linux-mm@kvack.org>, Christian Koenig <christian.koenig@amd.com>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH v2 4/4] dma-buf: heaps: add chunk heap
	to dmabuf heaps
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

T24gVHVlLCBEZWMgMDEsIDIwMjAgYXQgMDQ6MzM6MTRQTSAtMDgwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gVHVlLCBEZWMgMSwgMjAyMCBhdCA0OjEzIFBNIE1pbmNoYW4gS2ltIDxtaW5jaGFu
QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIFR1ZSwgRGVjIDAxLCAyMDIwIGF0IDAzOjM4
OjE0UE0gLTA4MDAsIEpvaG4gU3R1bHR6IHdyb3RlOgo+ID4gPiBPbiBUdWUsIERlYyAxLCAyMDIw
IGF0IDI6NTUgUE0gTWluY2hhbiBLaW0gPG1pbmNoYW5Aa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+
ID4gT24gVHVlLCBEZWMgMDEsIDIwMjAgYXQgMTE6NDg6MTVBTSAtMDgwMCwgSm9obiBTdHVsdHog
d3JvdGU6Cj4gPiA+ID4gPiBPbiBUdWUsIERlYyAxLCAyMDIwIGF0IDk6NTEgQU0gTWluY2hhbiBL
aW0gPG1pbmNoYW5Aa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhhbmtz
IGZvciByZXdvcmtpbmcgYW5kIHJlc2VuZGluZyB0aGlzIQo+ID4gPiA+ID4KPiA+ID4gPiA+IC4u
Lgo+ID4gPiA+ID4gPiArc3RhdGljIGludCBfX2luaXQgY2h1bmtfaGVhcF9pbml0KHZvaWQpCj4g
PiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiA+ICsgICAgICAgc3RydWN0IGNtYSAqZGVmYXVsdF9jbWEg
PSBkZXZfZ2V0X2NtYV9hcmVhKE5VTEwpOwo+ID4gPiA+ID4gPiArICAgICAgIHN0cnVjdCBkbWFf
aGVhcF9leHBvcnRfaW5mbyBleHBfaW5mbzsKPiA+ID4gPiA+ID4gKyAgICAgICBzdHJ1Y3QgY2h1
bmtfaGVhcCAqY2h1bmtfaGVhcDsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgIGlm
ICghZGVmYXVsdF9jbWEpCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArICAgICAgIGNodW5rX2hlYXAgPSBremFsbG9jKHNpemVv
ZigqY2h1bmtfaGVhcCksIEdGUF9LRVJORUwpOwo+ID4gPiA+ID4gPiArICAgICAgIGlmICghY2h1
bmtfaGVhcCkKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ID4g
PiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgICAgY2h1bmtfaGVhcC0+b3JkZXIgPSBDSFVOS19I
RUFQX09SREVSOwo+ID4gPiA+ID4gPiArICAgICAgIGNodW5rX2hlYXAtPmNtYSA9IGRlZmF1bHRf
Y21hOwo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsgICAgICAgZXhwX2luZm8ubmFtZSA9IGNt
YV9nZXRfbmFtZShkZWZhdWx0X2NtYSk7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gU28sIHRoaXMgd291
bGQgY3JlYXRlIGEgY2h1bmsgaGVhcCBuYW1lIHdpdGggdGhlIGRlZmF1bHQgQ01BIG5hbWUsCj4g
PiA+ID4gPiB3aGljaCB3b3VsZCBiZSBpbmRpc3Rpbmd1aXNoYWJsZSBmcm9tIHRoZSBoZWFwIG5h
bWUgdXNlZCBmb3IgdGhlIHBsYWluCj4gPiA+ID4gPiBDTUEgaGVhcC4KPiA+ID4gPiA+Cj4gPiA+
ID4gPiBQcm9iYWJseSBhIGdvb2QgaWRlYSB0byBwcmVmaXggaXQgd2l0aCAiY2h1bmstIiBzbyB0
aGUgaGVhcCBkZXZpY2UKPiA+ID4gPiA+IG5hbWVzIGFyZSB1bmlxdWU/Cj4gPiA+ID4KPiA+ID4g
PiBUaGF0IHdpbGwgZ2l2ZSBhbiBpbXByZXNzaW9uIHRvIHVzZXIgdGhhdCB0aGV5IGFyZSB1c2lu
ZyBkaWZmZXJlbnQgQ01BCj4gPiA+ID4gYXJlYSBidXQgdGhhdCdzIG5vdCB0cnVlLiBJTUhPLCBs
ZXQncyBiZSBob25lc3QgYXQgdGhpcyBtb21lbnQuCj4gPiA+Cj4gPiA+IEkgZGlzYWdyZWUuICBU
aGUgZG1hYnVmIGhlYXBzIHByb3ZpZGUgYW4gYWJzdHJhY3Rpb24gZm9yIGFsbG9jYXRpbmcgYQo+
ID4gPiB0eXBlIG9mIG1lbW9yeSwgYW5kIHdoaWxlIHlvdXIgaGVhcCBpcyBwdWxsaW5nIGZyb20g
Q01BLCB5b3UgYXJlbid0Cj4gPiA+ICJqdXN0IiBhbGxvY2F0aW5nIENNQSBhcyB0aGUgZXhpc3Rp
bmcgQ01BIGhlYXAgd291bGQgc3VmZmljZSBmb3IgdGhhdC4KPiA+ID4KPiA+ID4gU2luY2UgeW91
IG5lZWQgYSBzbGlnaHRseSBkaWZmZXJlbnQgbWV0aG9kIHRvIGFsbG9jYXRlIGhpZ2ggb3JkZXIK
PiA+ID4gcGFnZXMgaW4gYnVsaywgd2UgcmVhbGx5IHNob3VsZCBoYXZlIGEgdW5pcXVlIHdheSB0
byBuYW1lIHRoZQo+ID4gPiBhbGxvY2F0b3IgaW50ZXJmYWNlLiBUaGF0J3Mgd2h5IEknZCBzdWdn
ZXN0IHRoZSAiY2h1bmstIiBwcmVmaXggdG8gdGhlCj4gPiA+IGhlYXAgbmFtZS4KPiA+Cj4gPiBH
b3QgaXQuIEhvdyBhYm91dCB0aGlzPwo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvaGVhcHMvY2h1bmtfaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NodW5rX2hlYXAu
Ywo+ID4gaW5kZXggMDI3NzcwN2E5M2E5Li4zNmUxODlkMGI3M2QgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2RtYS1idWYvaGVhcHMvY2h1bmtfaGVhcC5jCj4gPiArKysgYi9kcml2ZXJzL2RtYS1i
dWYvaGVhcHMvY2h1bmtfaGVhcC5jCj4gPiBAQCAtNDEwLDcgKzQxMCw3IEBAIHN0YXRpYyBpbnQg
X19pbml0IGNodW5rX2hlYXBfaW5pdCh2b2lkKQo+ID4gICAgICAgICBjaHVua19oZWFwLT5vcmRl
ciA9IENIVU5LX0hFQVBfT1JERVI7Cj4gPiAgICAgICAgIGNodW5rX2hlYXAtPmNtYSA9IGRlZmF1
bHRfY21hOwo+ID4KPiA+IC0gICAgICAgZXhwX2luZm8ubmFtZSA9IGNtYV9nZXRfbmFtZShkZWZh
dWx0X2NtYSk7Cj4gPiArICAgICAgIGV4cF9pbmZvLm5hbWUgPSAiY21hLWNodW5rLWhlYXAiOwo+
IAo+IFRoYXQncyBzdGlsbCBhIGJpdCBnZW5lcmFsIGZvciB0aGUgZGVmYXVsdCBjbWEgKHdoaWNo
IGNhbiBiZSBuYW1lZAo+IGRpZmZlcmVudGx5KS4gSSB0aGluayBpbmNsdWRpbmcgY21hIG5hbWUg
aXMgaW1wb3J0YW50LCBqdXN0IGFkZGluZyB0aGUKPiBjaHVuayBwcmVmaXggbWlnaHQgYmUgYmVz
dC4KPiAKPiBTbyBzb21ldGhpbmcgbGlrZQo+ICAgc3ByaW50ZihidWYsICJjaHVuay0lcyIsIGNt
YV9nZXRfbmFtZShkZWZhdWx0X2NtYSkpOwo+ICAgZXhwX2luZm8ubmFtZSA9IGJ1ZjsKCk5vIHBy
b2JsZW0uIFdpbGwgZG8gdGhhdCBpbiByZXNwb2luLgpPdGhlciB0aGFuIHRoYXQsIGNhbiB5b3Ug
Z2l2ZSBhbnkgQWNrZWQtYnkgb3IgUmV2aWV3ZWQtYnkgdG8gc2F2ZQppdGVyYXRpb24/Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
