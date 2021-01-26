Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B047303716
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 08:08:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 845996600D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 07:08:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 768A966757; Tue, 26 Jan 2021 07:08:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15907618EF;
	Tue, 26 Jan 2021 07:07:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4128A61504
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 07:07:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2A76A618EF; Tue, 26 Jan 2021 07:07:37 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by lists.linaro.org (Postfix) with ESMTPS id CC8BC61504
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 07:07:34 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id f19so9403758ljn.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jan 2021 23:07:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kZn4RLcS22zFx/2DTlAuwltfIUf6VsTelsb0t+E6OVU=;
 b=BJloJlotv0ubYaBpC4f/wk3/rRcZT86fqHf/SEMiXs76VnBzatU2cTNrkWNDqGL2/a
 f667Mxv4OyUL14APaIrnnsF7K/SQP1atiZ8wKpLocLQaXitfJfxLEV9YVLMNsxzQ+WOX
 z5SvFS3hRE/I7hJ7MmEk0EkvRmDl6umdFLbOConu/6viNbGW0aPc/PEpBoOLre7QETk/
 7Tsv/LrdAT7Y494oE390opgGPv0f5RXx+OueWVz+2SPpJQ8HrFSnR1raBuv+A71Jhg3h
 cKhCXmfzU1yvaYd7d6zMtjOlw+30O0wqZR3Kzx/fyjcp5cz7TRVH/9/2YanH2BjUVs+5
 BN8A==
X-Gm-Message-State: AOAM530xWFNhH4V1bEKXd3amO+Mq7oQMH/EWJaOp2GmGd5+32h4ygQZH
 /ArmqENBhpY5BfuMosMoBxq6oues6Yehhyyo4knU0uPt
X-Google-Smtp-Source: ABdhPJwPrhIKzj8GZZNZJ8aPtOX3sEhjLT4uJM9gyulJIyHIGvl4KbrgVs2kwfOBdPjMvdI2rfwpFkVem0QwXxEa/PE=
X-Received: by 2002:a2e:a554:: with SMTP id e20mr2151530ljn.128.1611644853468; 
 Mon, 25 Jan 2021 23:07:33 -0800 (PST)
MIME-Version: 1.0
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-4-minchan@kernel.org>
In-Reply-To: <20210121175502.274391-4-minchan@kernel.org>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 25 Jan 2021 23:07:21 -0800
Message-ID: <CALAqxLU3yU8e006G0W-mSBLogWAru6jOJcBbuH5wFHoi1JitPA@mail.gmail.com>
To: Minchan Kim <minchan@kernel.org>
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
Subject: Re: [Linaro-mm-sig] [PATCH v4 3/4] dt-bindings: reserved-memory:
 Make DMA-BUF CMA heap DT-configurable
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

T24gVGh1LCBKYW4gMjEsIDIwMjEgYXQgOTo1NSBBTSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJu
ZWwub3JnPiB3cm90ZToKPiAgLi4uL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1s
ICAgICAgIHwgNTYgKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNTYgaW5z
ZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sCj4KPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9k
bWFfaGVhcF9jaHVuay55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jl
c2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiBpbmRleCAwMDAwMDAwMDAwMDAuLjAwZGIwYWU2YWY2MQo+IC0tLSAvZGV2L251bGwKPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXJ2ZWQtbWVtb3J5L2RtYV9o
ZWFwX2NodW5rLnlhbWwKPiBAQCAtMCwwICsxLDU2IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ICslWUFNTCAxLjIKPiArLS0t
Cj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcmVzZXJ2ZWQtbWVtb3J5L2Rt
YV9oZWFwX2NodW5rLnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRh
LXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IERldmljZSB0cmVlIGJpbmRpbmcgZm9y
IGNodW5rIGhlYXAgb24gRE1BIEhFQVAgRlJBTUVXT1JLCj4gKwo+ICtkZXNjcmlwdGlvbjogfAo+
ICsgIFRoZSBETUEgY2h1bmsgaGVhcCBpcyBiYWNrZWQgYnkgdGhlIENvbnRpZ3VvdXMgTWVtb3J5
IEFsbG9jYXRvciAoQ01BKSBhbmQKPiArICBzdXBwb3J0cyBidWxrIGFsbG9jYXRpb24gb2YgZml4
ZWQgc2l6ZSBwYWdlcy4KPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gSHllc29vIFl1IDxoeWVz
b28ueXVAc2Ftc3VuZy5jb20+Cj4gKyAgLSBKb2huIFN0dWx0eiA8am9obi5zdHVsdHpAbGluYXJv
Lm9yZz4KPiArICAtIE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+Cj4gKyAgLSBIcmlk
eWEgVmFsc2FyYWp1PGhyaWR5YUBnb29nbGUuY29tPgo+ICsKPiArCj4gK3Byb3BlcnRpZXM6Cj4g
KyAgY29tcGF0aWJsZToKPiArICAgIGVudW06Cj4gKyAgICAgIC0gZG1hX2hlYXAsY2h1bmsKPiAr
Cj4gKyAgY2h1bmstb3JkZXI6Cj4gKyAgICBkZXNjcmlwdGlvbjogfAo+ICsgICAgICAgICAgICBv
cmRlciBvZiBwYWdlcyB0aGF0IHdpbGwgZ2V0IGFsbG9jYXRlZCBmcm9tIHRoZSBjaHVuayBETUEg
aGVhcC4KPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIHNpemU6Cj4gKyAgICBtYXhJdGVtczog
MQo+ICsKPiArICBhbGlnbm1lbnQ6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArcmVxdWlyZWQ6
Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSBzaXplCj4gKyAgLSBhbGlnbm1lbnQKPiArICAtIGNo
dW5rLW9yZGVyCj4gKwo+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4YW1w
bGVzOgo+ICsgIC0gfAo+ICsgICAgcmVzZXJ2ZWQtbWVtb3J5IHsKPiArICAgICAgICAjYWRkcmVz
cy1jZWxscyA9IDwyPjsKPiArICAgICAgICAjc2l6ZS1jZWxscyA9IDwxPjsKPiArCj4gKyAgICAg
ICAgY2h1bmtfbWVtb3J5OiBjaHVua19tZW1vcnkgewo+ICsgICAgICAgICAgICBjb21wYXRpYmxl
ID0gImRtYV9oZWFwLGNodW5rIjsKPiArICAgICAgICAgICAgc2l6ZSA9IDwweDMwMDAwMDA+OwoK
SGV5IE1pbmNoYW4sCiAgTG9va2luZyBjbG9zZXIgaGVyZSwgd291bGQgaXQgbWFrZSBtb3JlIHNl
bnNlIHRvIGRvY3VtZW50IHRoZSAicmVnID0KPD4iIHBhcmFtZXRlciBoZXJlIGFzIHdlbGwgaW5z
dGVhZCBvZiBqdXN0ICJzaXplID0gPD4iPwoKVGhhdCB3YXkgdGhlIGFkZHJlc3Mgb2YgdGhlIHJl
Z2lvbiBjb3VsZCBiZSBleHBsaWNpdGx5IHNwZWNpZmllZCAoZm9yCmluc3RhbmNlLCB0byBlbnN1
cmUgdGhlIENNQSByZWdpb24gY3JlYXRlZCBpcyAzMmJpdCBhZGRyZXNzYWJsZSkuIEFuZAptb3Jl
IHByYWN0aWNhbGx5LCB0cnlpbmcgdG8gc2F0aXNmeSB0aGUgYmFzZSBhZGRyZXNzIGFsaWdubWVu
dCBjaGVja3MKaW4gdGhlIGZpbmFsIHBhdGNoIHdoZW4gaXRzIHNldCBkeW5hbWljYWxseSBtYXkg
cmVxdWlyZSBhIGZhaXIgYW1vdW50Cm9mIGx1Y2sgIC0gSSBjb3VsZG4ndCBtYW5hZ2UgaXQgaW4g
bXkgb3duIHRlc3Rpbmcgb24gdGhlIGhpa2V5OTYwIHcvbwpyZXNvcnRpbmcgdG8gcmVnPSAgOikK
Ckl0IGRvZXMgbG9vayBsaWtlIHRoZSBSRVNFUlZFRE1FTV9PRl9ERUNMQVJFKCkgbG9naWMgYWxy
ZWFkeSBzdXBwb3J0cwp0aGlzLCBzbyBpdCdzIGxpa2VseSBqdXN0IGEgbWF0dGVyIG9mIGRvY3Vt
ZW50aW5nIGl0IGhlcmU/Cgp0aGFua3MKLWpvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
