Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5503B311619
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 23:56:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7745F66765
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 22:56:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 689AF66766; Fri,  5 Feb 2021 22:56:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9AA16602A;
	Fri,  5 Feb 2021 22:56:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 76FBE617D4
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 22:55:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6C1726602A; Fri,  5 Feb 2021 22:55:59 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 by lists.linaro.org (Postfix) with ESMTPS id 04B69617D4
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Feb 2021 22:55:58 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id e5so1644704otb.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Feb 2021 14:55:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A/9Ih9622NVTzrZPwCYg0qngEXggsHsaO2OKN20W6PE=;
 b=WA3U/Pm7d8QZ+tUXutOVok0iIL6sx7jEvsFRImnS27ImztLO5l5/F+S30mkfPDe2FW
 GwG6Zzw/90QcQ6n4ndzxegi18Afs06Ad1jssW0eSaeLDLmv5CnojYjQV9qKkg73PXTyh
 4sxcHFYmk4jNuYXNA7AoHJR+VKbxAuU6GMn29vGXweFB1+r4cd0zLQ/D2KOR+qpzaSm6
 PTxBTsqN35M6wpVTxsc2c56io/vd5aYYC/cOEAcmcgzZVG2byrRbupF/ZEOiV3OrOxvN
 WDTGLSlkQyqgiltgVGXEMM+FYRiZDHq5MRIGko30U5FqmspFEpXw9DNsV4CMK761l731
 fGtA==
X-Gm-Message-State: AOAM530mShi2cFC+XUJUa7UaXJ+sG6Vtc86n4W+jme79vA5iQeIH1WzM
 QonBETyo+o/dYXSbBKbS2w==
X-Google-Smtp-Source: ABdhPJyOibYhklMZaYhw1NqTq4B3G/M82Lf2xbPpvAKKblvYXBpctsn3mrDEoKTpEDRl2i/3LBnClQ==
X-Received: by 2002:a9d:7699:: with SMTP id j25mr4952858otl.202.1612565757307; 
 Fri, 05 Feb 2021 14:55:57 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q8sm1403961oth.65.2021.02.05.14.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Feb 2021 14:55:56 -0800 (PST)
Received: (nullmailer pid 3912199 invoked by uid 1000);
 Fri, 05 Feb 2021 22:55:54 -0000
Date: Fri, 5 Feb 2021 16:55:54 -0600
From: Rob Herring <robh@kernel.org>
To: Minchan Kim <minchan@kernel.org>
Message-ID: <20210205225554.GA3881594@robh.at.kernel.org>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-4-minchan@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210121175502.274391-4-minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, linaro-mm-sig@lists.linaro.org,
 john.stultz@linaro.org, joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, hyesoo.yu@samsung.com
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

T24gVGh1LCBKYW4gMjEsIDIwMjEgYXQgMDk6NTU6MDFBTSAtMDgwMCwgTWluY2hhbiBLaW0gd3Jv
dGU6Cj4gRnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4gCj4gRG9jdW1l
bnQgZGV2aWNldHJlZSBiaW5kaW5nIGZvciBjaHVuayBjbWEgaGVhcCBvbiBkbWEgaGVhcCBmcmFt
ZXdvcmsuCj4gCj4gVGhlIERNQSBjaHVuayBoZWFwIHN1cHBvcnRzIHRoZSBidWxrIGFsbG9jYXRp
b24gb2YgaGlnaGVyIG9yZGVyIHBhZ2VzLgo+IAo+IFRoZSBjaHVuayBoZWFwJ3MgYWxsb2NhdG9y
IGFsbG9jYXRlcyBmcm9tIHRoZSBDTUEgYXJlYS4gSXQgaXMgb3B0aW1pemVkCj4gdG8gcGVyZm9y
bSBidWxrIGFsbG9jYXRpb24gb2YgaGlnaGVyIG9yZGVyIHBhZ2VzIGluIGFuIGVmZmljaWVudCBt
YW5uZXIuCj4gRm9yIHRoaXMgcHVycG9zZSwgdGhlIGhlYXAgbmVlZHMgYW4gZXhjbHVzaXZlIENN
QSBhcmVhIHRoYXQgd2lsbCBvbmx5IGJlCj4gdXNlZCBmb3IgYWxsb2NhdGlvbiBieSB0aGUgaGVh
cC4gVGhpcyBpcyB0aGUgcmVhc29uIHdoeSB3ZSBuZWVkIHRvIHVzZQo+IHRoZSBEVCB0byBjcmVh
dGUgYW5kIGNvbmZpZ3VyZSBhIHJlc2VydmVkIG1lbW9yeSByZWdpb24gZm9yIHVzZSBieSB0aGUK
PiBjaHVuayBDTUEgaGVhcCBkcml2ZXIuIFNpbmNlIGFsbCBhbGxvY2F0aW9uIGZyb20gRE1BLUJV
RiBoZWFwcyBoYXBwZW4KPiBmcm9tIHRoZSB1c2VyLXNwYWNlLCB0aGVyZSBpcyBubyBvdGhlciBh
cHByb3ByaWF0ZSBkZXZpY2UtZHJpdmVyIHRoYXQKPiB3ZSBjYW4gdXNlIHRvIHJlZ2lzdGVyIHRo
ZSBjaHVuayBDTUEgaGVhcCBhbmQgY29uZmlndXJlIHRoZSByZXNlcnZlZAo+IG1lbW9yeSByZWdp
b24gZm9yIGl0cyB1c2UuCgpMV04gdGVsbHMgbWUgd2UgZG9uJ3QgbmVlZCBjYXJ2ZSBvdXRzIGFu
eSBtb3JlWzFdOiAiQ01BIG5vdyByZWxpZXMgb24gCmNvbXBhY3Rpb24gYW5kIG5vIGxvbmdlciB1
c2VzIGEgY2FydmVkLW91dCBtZW1vcnkgcmVnaW9uLiIKClNvIHdoeSBkbyB3ZSBuZWVkIHRoaXM/
CgpbMV0gaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzgzOTIxNi8KCj4gCj4gU2lnbmVkLW9mZi1i
eTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWlu
Y2hhbiBLaW0gPG1pbmNoYW5Aa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBIcmlkeWEgVmFs
c2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4KPiAtLS0KPiAgLi4uL3Jlc2VydmVkLW1lbW9yeS9k
bWFfaGVhcF9jaHVuay55YW1sICAgICAgIHwgNTYgKysrKysrKysrKysrKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgNTYgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVu
ay55YW1sCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbAo+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wMGRiMGFlNmFmNjEKPiAt
LS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jl
c2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sCj4gQEAgLTAsMCArMSw1NiBAQAo+ICsj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkK
PiArJVlBTUwgMS4yCj4gKy0tLQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFz
L3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8v
ZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBEZXZp
Y2UgdHJlZSBiaW5kaW5nIGZvciBjaHVuayBoZWFwIG9uIERNQSBIRUFQIEZSQU1FV09SSwo+ICsK
PiArZGVzY3JpcHRpb246IHwKPiArICBUaGUgRE1BIGNodW5rIGhlYXAgaXMgYmFja2VkIGJ5IHRo
ZSBDb250aWd1b3VzIE1lbW9yeSBBbGxvY2F0b3IgKENNQSkgYW5kCj4gKyAgc3VwcG9ydHMgYnVs
ayBhbGxvY2F0aW9uIG9mIGZpeGVkIHNpemUgcGFnZXMuCj4gKwo+ICttYWludGFpbmVyczoKPiAr
ICAtIEh5ZXNvbyBZdSA8aHllc29vLnl1QHNhbXN1bmcuY29tPgo+ICsgIC0gSm9obiBTdHVsdHog
PGpvaG4uc3R1bHR6QGxpbmFyby5vcmc+Cj4gKyAgLSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJu
ZWwub3JnPgo+ICsgIC0gSHJpZHlhIFZhbHNhcmFqdTxocmlkeWFAZ29vZ2xlLmNvbT4KPiArCj4g
Kwo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBhdGlibGU6Cj4gKyAgICBlbnVtOgo+ICsgICAgICAt
IGRtYV9oZWFwLGNodW5rCgpDb252ZW50aW9uIGlzIHZlbmRvcix0aGluZyBhbmQgJ2RtYV9oZWFw
JyBpcyBub3QgYSB2ZW5kb3IuIEFsc28sICctJyBpcyAKcHJlZmVycmVkIG92ZXIgJ18nLgoKPiAr
Cj4gKyAgY2h1bmstb3JkZXI6Cj4gKyAgICBkZXNjcmlwdGlvbjogfAo+ICsgICAgICAgICAgICBv
cmRlciBvZiBwYWdlcyB0aGF0IHdpbGwgZ2V0IGFsbG9jYXRlZCBmcm9tIHRoZSBjaHVuayBETUEg
aGVhcC4KClBhZ2Ugc2l6ZSBkZXBlbmRzIG9uIExpbnV4IGNvbmZpZ3VyYXRpb24uIEFuZCAnb3Jk
ZXInIGlzIHZlcnkgbXVjaCBhIApMaW51eGlzbS4KCj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiAr
ICBzaXplOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgYWxpZ25tZW50Ogo+ICsgICAgbWF4
SXRlbXM6IDEKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0gc2l6ZQo+
ICsgIC0gYWxpZ25tZW50Cj4gKyAgLSBjaHVuay1vcmRlcgo+ICsKPiArYWRkaXRpb25hbFByb3Bl
cnRpZXM6IGZhbHNlCj4gKwo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAgIHJlc2VydmVkLW1l
bW9yeSB7Cj4gKyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4gKyAgICAgICAgI3NpemUt
Y2VsbHMgPSA8MT47Cj4gKwo+ICsgICAgICAgIGNodW5rX21lbW9yeTogY2h1bmtfbWVtb3J5IHsK
PiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJkbWFfaGVhcCxjaHVuayI7Cj4gKyAgICAgICAg
ICAgIHNpemUgPSA8MHgzMDAwMDAwPjsKPiArICAgICAgICAgICAgYWxpZ25tZW50ID0gPDB4MCAw
eDAwMDEwMDAwPjsKPiArICAgICAgICAgICAgY2h1bmstb3JkZXIgPSA8ND47Cj4gKyAgICAgICAg
fTsKPiArICAgIH07Cj4gLS0gCj4gMi4zMC4wLjI5Ni5nMmJmYjFjNDZkOC1nb29nCj4gCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
