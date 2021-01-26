Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BF630487E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 20:25:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 680F066756
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 19:25:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 58CDC6675B; Tue, 26 Jan 2021 19:25:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 190876673A;
	Tue, 26 Jan 2021 19:24:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A5C9966737
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 19:24:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8FB0E66743; Tue, 26 Jan 2021 19:24:49 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by lists.linaro.org (Postfix) with ESMTPS id E1E3F66737
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 19:24:47 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id p15so2587679pjv.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 11:24:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=PQEAhCm3+TMoHM6fCNFPYeDIJ30oYf/VDFpXx3VbChw=;
 b=cY8R0dZ1tbH5jkqMC2ucE8doSt9D6cuPAXXEbrxoevo8hXDD5L6vV3GSbEsIlFpbWB
 EqiCRRR+TaJ57/KHcIz/B3klO9vgMIWRigld1IInUwb6vocmSTqD/CDZD/hjA7Ry8TgV
 zGsm6WvT9SNa3EXROi90cpUNkYLxBqRtNKugx/H8kobIuLUQONd0msNMQlZ1dW+XIhQo
 8tjFzF8XM5gOoVr/yJI1SGF//VoHfnemgJSTTcWhTI5FKkoG55V+EuniRsUhzGrFNYCn
 QIAzX21X5/l62OwRqEnQk9Rbby5DPi0amtSHR3Rh+ABH9u2zoQ1plcy02rHqUM+QUU8x
 GDTA==
X-Gm-Message-State: AOAM530m33OQKPz0bNLAUPXCETFgfKtxr64Q/kUwlmce+qF6LMpxriEz
 UbaFuK5Jcb3HcJ1F4Rxf2jg=
X-Google-Smtp-Source: ABdhPJxdJr9i8PyYeuFQBxPxm7+nZIJNNDk8XULgbT6ihBzMPiuZA67mDinh9JKsG2HkLZaC7sxFnw==
X-Received: by 2002:a17:90a:5403:: with SMTP id
 z3mr1385657pjh.198.1611689087020; 
 Tue, 26 Jan 2021 11:24:47 -0800 (PST)
Received: from google.com ([2620:15c:211:201:9dd5:b47b:bb84:dede])
 by smtp.gmail.com with ESMTPSA id jx15sm2818337pjb.17.2021.01.26.11.24.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 11:24:45 -0800 (PST)
Date: Tue, 26 Jan 2021 11:24:43 -0800
From: Minchan Kim <minchan@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <YBBse31hUxQcglig@google.com>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-5-minchan@kernel.org>
 <CALAqxLWJDo=pM8bvt9YWrzJ+VyK5gojoL-v7ch1fQC=cjGwJOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLWJDo=pM8bvt9YWrzJ+VyK5gojoL-v7ch1fQC=cjGwJOw@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Michal Hocko <mhocko@suse.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Christoph Hellwig <hch@infradead.org>,
 linux-mm <linux-mm@kvack.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH v4 4/4] dma-buf: heaps: add chunk heap
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

T24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMTE6MzI6NTdQTSAtMDgwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gVGh1LCBKYW4gMjEsIDIwMjEgYXQgOTo1NSBBTSBNaW5jaGFuIEtpbSA8bWluY2hh
bkBrZXJuZWwub3JnPiB3cm90ZToKPiAKPiBIZXkgTWluY2hhbiwKPiAgIFRoYW5rcyBmb3Igc2Vu
ZGluZyB0aGlzIG91dCEgSSdtIHN0aWxsIHdvcmtpbmcgdGhyb3VnaCB0ZXN0aW5nIHdpdGgKPiB0
aGlzIHBhdGNoIHNldCwgc28gSSBtYXkgaGF2ZSBzb21lIG1vcmUgZmVlZGJhY2sgdG9tb3Jyb3cs
IGJ1dCBhIGZldwo+IHF1aWNrIGl0ZW1zIEkgZGlkIGhpdCBiZWxvdy4KPiAKPiA+ICsKPiA+ICsj
ZGVmaW5lIENIVU5LX1BSRUZJWCAiY2h1bmstIgo+ID4gKwo+ID4gK3N0YXRpYyBpbnQgcmVnaXN0
ZXJfY2h1bmtfaGVhcChzdHJ1Y3QgY2h1bmtfaGVhcCAqY2h1bmtfaGVhcF9pbmZvKQo+ID4gK3sK
PiA+ICsgICAgICAgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvIGV4cF9pbmZvOwo+ID4gKyAg
ICAgICBjb25zdCBjaGFyICpuYW1lID0gY21hX2dldF9uYW1lKGNodW5rX2hlYXBfaW5mby0+Y21h
KTsKPiA+ICsgICAgICAgc2l6ZV90IGxlbiA9IHN0cmxlbihDSFVOS19QUkVGSVgpICsgc3RybGVu
KG5hbWUpICsgMTsKPiA+ICsgICAgICAgY2hhciAqYnVmID0ga21hbGxvYyhsZW4sIEdGUF9LRVJO
RUwpOwo+ID4gKwo+ID4gKyAgICAgICBpZiAoIWJ1ZikKPiA+ICsgICAgICAgICAgICAgICByZXR1
cm4gLUVOT01FTTsKPiA+ICsKPiA+ICsgICAgICAgc3ByaW50ZihidWYsIENIVU5LX1BSRUZJWCIl
cyIsIGNtYV9nZXRfbmFtZShjaHVua19oZWFwX2luZm8tPmNtYSkpOwo+ID4gKyAgICAgICBidWZb
bGVuXSA9ICdcMCc7Cj4gPiArCj4gPiArICAgICAgIGV4cF9pbmZvLm5hbWUgPSBidWY7Cj4gPiAr
ICAgICAgIGV4cF9pbmZvLm5hbWUgPSBjbWFfZ2V0X25hbWUoY2h1bmtfaGVhcF9pbmZvLT5jbWEp
Owo+IAo+IEkgdGhpbmsgeW91IGludGVuZGVkIHRvIGRlbGV0ZSB0aGlzIGxpbmUsIGFzIGl0J3Mg
b3ZlcndyaXRpbmcgeW91cgo+IHByZWZpeGVkIG5hbWUuCgpIaSBKb2huLAoKWW91J3JlIHJpZ2h0
LiBXaWxsIGZpeCBpdC4KCj4gCj4gPiArICAgICAgIGV4cF9pbmZvLm9wcyA9ICZjaHVua19oZWFw
X29wczsKPiA+ICsgICAgICAgZXhwX2luZm8ucHJpdiA9IGNodW5rX2hlYXBfaW5mbzsKPiA+ICsK
PiA+ICsgICAgICAgY2h1bmtfaGVhcF9pbmZvLT5oZWFwID0gZG1hX2hlYXBfYWRkKCZleHBfaW5m
byk7Cj4gPiArICAgICAgIGlmIChJU19FUlIoY2h1bmtfaGVhcF9pbmZvLT5oZWFwKSkgewo+ID4g
KyAgICAgICAgICAgICAgIGtmcmVlKGJ1Zik7Cj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIFBU
Ul9FUlIoY2h1bmtfaGVhcF9pbmZvLT5oZWFwKTsKPiA+ICsgICAgICAgfQo+ID4gKwo+ID4gKyAg
ICAgICByZXR1cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGludCBfX2luaXQgY2h1bmtf
aGVhcF9pbml0KHZvaWQpCj4gPiArewo+ID4gKyAgICAgICB1bnNpZ25lZCBpbnQgaTsKPiA+ICsK
PiA+ICsgICAgICAgZm9yIChpID0gMDsgaSA8IGNodW5rX2hlYXBfY291bnQ7IGkrKykKPiA+ICsg
ICAgICAgICAgICAgICByZWdpc3Rlcl9jaHVua19oZWFwKCZjaHVua19oZWFwc1tpXSk7Cj4gPiAr
Cj4gPiArICAgICAgIHJldHVybiAwOwo+ID4gK30KPiA+ICttb2R1bGVfaW5pdChjaHVua19oZWFw
X2luaXQpOwo+ID4gKwo+ID4gKyNpZmRlZiBDT05GSUdfT0ZfRUFSTFlfRkxBVFRSRUUKPiA+ICsK
PiA+ICtzdGF0aWMgaW50IF9faW5pdCBkbWFidWZfY2h1bmtfaGVhcF9hcmVhX2luaXQoc3RydWN0
IHJlc2VydmVkX21lbSAqcm1lbSkKPiA+ICt7Cj4gPiArICAgICAgIGludCByZXQ7Cj4gPiArICAg
ICAgIHN0cnVjdCBjbWEgKmNtYTsKPiA+ICsgICAgICAgc3RydWN0IGNodW5rX2hlYXAgKmNodW5r
X2hlYXBfaW5mbzsKPiA+ICsgICAgICAgY29uc3QgX19iZTMyICpjaHVua19vcmRlcjsKPiA+ICsK
PiA+ICsgICAgICAgcGh5c19hZGRyX3QgYWxpZ24gPSBQQUdFX1NJWkUgPDwgbWF4KE1BWF9PUkRF
UiAtIDEsIHBhZ2VibG9ja19vcmRlcik7Cj4gPiArICAgICAgIHBoeXNfYWRkcl90IG1hc2sgPSBh
bGlnbiAtIDE7Cj4gPiArCj4gPiArICAgICAgIGlmICgocm1lbS0+YmFzZSAmIG1hc2spIHx8IChy
bWVtLT5zaXplICYgbWFzaykpIHsKPiA+ICsgICAgICAgICAgICAgICBwcl9lcnIoIkluY29ycmVj
dCBhbGlnbm1lbnQgZm9yIENNQSByZWdpb25cbiIpOwo+ID4gKyAgICAgICAgICAgICAgIHJldHVy
biAtRUlOVkFMOwo+IAo+IFBhc3NpbmcgdGhpcyBjaGVjayBjYW4gYmUgdG91Z2ggaWYgeW91J3Jl
IHVzaW5nIGR5bmFtaWNhbGx5IGFzc2lnbmVkCj4gcm1lbSwgc28gaXQgbWlnaHQgYmUgaGVscGZ1
bCBmb3IgZGVidWdnaW5nIHRvIHByaW50IHRoZSBiYXNlL3NpemUvbWFzawo+IHZhbHVlcz8KCkxl
dCBtZSBmb2xkIHRoaXMgaW50byBuZXh0IHJlc3Bpbi4KCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvaGVhcHMvY2h1bmtfaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NodW5rX2hl
YXAuYwppbmRleCA2ZmU4ZTY5ZDEwOGYuLmNjMmVkNTM0MWI1NCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL2NodW5rX2hlYXAuYworKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMv
Y2h1bmtfaGVhcC5jCkBAIC00NTYsNyArNDU2LDggQEAgc3RhdGljIGludCBfX2luaXQgZG1hYnVm
X2NodW5rX2hlYXBfYXJlYV9pbml0KHN0cnVjdCByZXNlcnZlZF9tZW0gKnJtZW0pCiAgICAgICAg
cGh5c19hZGRyX3QgbWFzayA9IGFsaWduIC0gMTsKCiAgICAgICAgaWYgKChybWVtLT5iYXNlICYg
bWFzaykgfHwgKHJtZW0tPnNpemUgJiBtYXNrKSkgewotICAgICAgICAgICAgICAgcHJfZXJyKCJJ
bmNvcnJlY3QgYWxpZ25tZW50IGZvciBDTUEgcmVnaW9uXG4iKTsKKyAgICAgICAgICAgICAgIHBy
X2VycigiSW5jb3JyZWN0IGFsaWdubWVudCBmb3IgQ01BIHJlZ2lvbjogYmFzZSAlcGEgc2l6ZSAl
cGEgbWFzayAlcGFcbiIsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcm1lbS0+YmFz
ZSwgcm1lbS0+c2l6ZSwgbWFzayk7CiAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKICAg
ICAgICB9CgpUaGFua3MgZm9yIHRoZSByZXZpZXcsIEpvaG4hCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
