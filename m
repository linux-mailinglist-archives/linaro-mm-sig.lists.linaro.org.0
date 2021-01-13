Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D892F5128
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 18:32:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DB6A61721
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 17:32:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F218B6672F; Wed, 13 Jan 2021 17:32:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 71D4466733;
	Wed, 13 Jan 2021 17:31:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5C02461721
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 17:31:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3C42166733; Wed, 13 Jan 2021 17:31:31 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by lists.linaro.org (Postfix) with ESMTPS id 4327661721
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 17:31:30 +0000 (UTC)
Received: by mail-qv1-f41.google.com with SMTP id p5so1117069qvs.7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 09:31:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+V2Dr2muMkbk0Yt20+kBeKoC8rP7GJB7dLSdIgBdmPU=;
 b=OKmnDDd6aa3pEax8rREvKPT9nIZ2IhOtsBQFo3KF3yqLpv4B3NMbxMsBrIa5U9/dh5
 5gTshESeK+fIXboP9DLZQPFmd67xiephvnpVPuK7NE6RGpkbcjiexrbMijU1K0rLabDr
 SEIEGbrTxv/GPCDsXK10fpuVTAJX4bWLxuXkTEHzT4keyzSD1Y3hoHE464TdQxIH/M4U
 S+rmaV8QBK0UQEu1retIHNP/9xt+OHgOZc3F4TacTjPm0dQogZ91lZ11Zwu5z82Iuwt1
 JKjOUFdDVhbUARbWI0Rllk0uxY5weD2QsW/eibNbVrZ2TzWTg8TWmM3H3s9ADDWWJtW2
 1AhQ==
X-Gm-Message-State: AOAM53289VhV9n8dxM9uzTgfgXj8oo8GdrDL6m6aetGHS+aLAXlsGScR
 rWn/hQn0nRTnkVLN/Zx3gu3NEFLeeBzzbQPJcgMDQg==
X-Google-Smtp-Source: ABdhPJz285kiLrApEti5WJgRA1E13XN480igK5w4hFcgkOLK8+pftJijGcF2r5qhv2NtQ+Bq2oR1dKlDUWJkPD/JeWo=
X-Received: by 2002:a0c:8203:: with SMTP id h3mr3390601qva.0.1610559089537;
 Wed, 13 Jan 2021 09:31:29 -0800 (PST)
MIME-Version: 1.0
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-4-minchan@kernel.org>
 <1610552704.254587.2506180.nullmailer@robh.at.kernel.org>
In-Reply-To: <1610552704.254587.2506180.nullmailer@robh.at.kernel.org>
From: Hridya Valsaraju <hridya@google.com>
Date: Wed, 13 Jan 2021 09:30:53 -0800
Message-ID: <CA+wgaPOwCWc+oYzzaLwUch32-vUMhma3UgFLWZTbOZ5jMuv6Ng@mail.gmail.com>
To: Rob Herring <robh@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, mhocko@suse.com,
 Hyesoo Yu <hyesoo.yu@samsung.com>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Christoph Hellwig <hch@infradead.org>,
 Minchan Kim <minchan@kernel.org>, devicetree@vger.kernel.org,
 robh+dt@kernel.org, John Stultz <john.stultz@linaro.org>,
 John Dias <joaodias@google.com>, Andrew Morton <akpm@linux-foundation.org>,
 "pullip.cho" <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 linux-mm <linux-mm@kvack.org>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v3 3/4] dt-bindings: reserved-memory:
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

T24gV2VkLCBKYW4gMTMsIDIwMjEgYXQgNzo0NSBBTSBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgMTIgSmFuIDIwMjEgMTc6MjE6NDIgLTA4MDAsIE1pbmNo
YW4gS2ltIHdyb3RlOgo+ID4gRnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+
Cj4gPgo+ID4gRG9jdW1lbnQgZGV2aWNldHJlZSBiaW5kaW5nIGZvciBjaHVuayBjbWEgaGVhcCBv
biBkbWEgaGVhcCBmcmFtZXdvcmsuCj4gPgo+ID4gVGhlIERNQSBjaHVuayBoZWFwIHN1cHBvcnRz
IHRoZSBidWxrIGFsbG9jYXRpb24gb2YgaGlnaGVyIG9yZGVyIHBhZ2VzLgo+ID4KPiA+IFNpZ25l
ZC1vZmYtYnk6IEh5ZXNvbyBZdSA8aHllc29vLnl1QHNhbXN1bmcuY29tPgo+ID4gU2lnbmVkLW9m
Zi1ieTogTWluY2hhbiBLaW0gPG1pbmNoYW5Aa2VybmVsLm9yZz4KPiA+IFNpZ25lZC1vZmYtYnk6
IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPgo+ID4gQ2hhbmdlLUlkOiBJOGZi
MjMxZTVhODM2MGUyZDhmNjU5NDdlMTU1YjEyYWE2NjRkZGUwMQo+ID4gLS0tCj4gPiAgLi4uL3Jl
c2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sICAgICAgIHwgNTggKysrKysrKysrKysr
KysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC1t
ZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbAo+ID4KPgo+IE15IGJvdCBmb3VuZCBlcnJvcnMgcnVu
bmluZyAnbWFrZSBkdF9iaW5kaW5nX2NoZWNrJyBvbiB5b3VyIHBhdGNoOgo+Cj4geWFtbGxpbnQg
d2FybmluZ3MvZXJyb3JzOgo+IC4vRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jl
c2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sOjU4OjE6IFt3YXJuaW5nXSB0b28gbWFu
eSBibGFuayBsaW5lcyAoMiA+IDEpIChlbXB0eS1saW5lcykKPgo+IGR0c2NoZW1hL2R0YyB3YXJu
aW5ncy9lcnJvcnM6Cj4KPiBTZWUgaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8x
NDI1NTc3Cj4KPiBUaGlzIGNoZWNrIGNhbiBmYWlsIGlmIHRoZXJlIGFyZSBhbnkgZGVwZW5kZW5j
aWVzLiBUaGUgYmFzZSBmb3IgYSBwYXRjaAo+IHNlcmllcyBpcyBnZW5lcmFsbHkgdGhlIG1vc3Qg
cmVjZW50IHJjMS4KPgo+IElmIHlvdSBhbHJlYWR5IHJhbiAnbWFrZSBkdF9iaW5kaW5nX2NoZWNr
JyBhbmQgZGlkbid0IHNlZSB0aGUgYWJvdmUKPiBlcnJvcihzKSwgdGhlbiBtYWtlIHN1cmUgJ3lh
bWxsaW50JyBpcyBpbnN0YWxsZWQgYW5kIGR0LXNjaGVtYSBpcyB1cCB0bwo+IGRhdGU6Cj4KPiBw
aXAzIGluc3RhbGwgZHRzY2hlbWEgLS11cGdyYWRlCj4KPiBQbGVhc2UgY2hlY2sgYW5kIHJlLXN1
Ym1pdC4KPgoKSGkgUm9iLAoKU29ycnkgYWJvdXQgdGhhdCwgSSBjYW4gc2VlIHRoZSB3YXJuaW5n
IGFmdGVyIGluc3RhbGxpbmcgeWFtbGxpbnQuCldpbGwgZml4IGl0IGluIHRoZSBuZXh0IHZlcnNp
b24hCgpUaGFua3MsCkhyaWR5YQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
