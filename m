Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E04852F6299
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jan 2021 15:02:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3D6A615EF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Jan 2021 14:02:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A6D1766733; Thu, 14 Jan 2021 14:02:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 965D6617D4;
	Thu, 14 Jan 2021 14:01:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F065660C4B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 14:01:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E59BF617D4; Thu, 14 Jan 2021 14:01:45 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by lists.linaro.org (Postfix) with ESMTPS id BB42460C4B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 14:01:44 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id x5so5217414otp.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Jan 2021 06:01:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vmtwqRd+vOOs93CtJZXLHlLxZuc0mcM65taAtteZXlA=;
 b=mKEx8ORTZUimCyPgUjyB0oftV7dci05UciCdvnoWDqIJucqZ+ewkE0Jd6tCfBIzT2H
 /Ao+ra2GTyQaeSXLB1ztStrLd60VxruzHakrXi472KqClWB0ZRWTfy2eIx8gqTfCKWOg
 37z8EIWI5fBVtvPsQ52M0fWRP3sWjd/ZDeVRe00U6eX+2M/O5DjINs5LEdBGquEhfWDD
 03u2fXbveXqzHiHjQa5gXFawSmWnWVBxC8HtesDaG9NCpZ3M8+u08b09cxDMFbuHAvO5
 dN1ujtMhIo82CtGeZNF82Cmvb5tvvRtzPsa63DsG5/WVo+FD1TE9X4nDcMkq8vPxxmv2
 h9Rg==
X-Gm-Message-State: AOAM533Ci5+uiYTvljuwjOxaOooG5PqCt2J/bvwWvj0kz9Uz2k1QAvO9
 b3z5c2rnYSRoTX9XzshlCg==
X-Google-Smtp-Source: ABdhPJwA4xSmb7PKCcuU6wjuRg19ZNzvAwR2u8Pzf0moxRyQEWEjN27Dqi5u3i2wZ9eO5cK3Ls+Hmw==
X-Received: by 2002:a9d:6f8f:: with SMTP id h15mr4838190otq.125.1610632901192; 
 Thu, 14 Jan 2021 06:01:41 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u141sm1036348oie.46.2021.01.14.06.01.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Jan 2021 06:01:40 -0800 (PST)
Received: (nullmailer pid 2811070 invoked by uid 1000);
 Thu, 14 Jan 2021 14:01:38 -0000
Date: Thu, 14 Jan 2021 08:01:38 -0600
From: Rob Herring <robh@kernel.org>
To: Minchan Kim <minchan@kernel.org>
Message-ID: <20210114140138.GA2796092@robh.at.kernel.org>
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-4-minchan@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113012143.1201105-4-minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, linaro-mm-sig@lists.linaro.org,
 john.stultz@linaro.org, joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, hyesoo.yu@samsung.com
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

T24gVHVlLCBKYW4gMTIsIDIwMjEgYXQgMDU6MjE6NDJQTSAtMDgwMCwgTWluY2hhbiBLaW0gd3Jv
dGU6Cj4gRnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4gCj4gRG9jdW1l
bnQgZGV2aWNldHJlZSBiaW5kaW5nIGZvciBjaHVuayBjbWEgaGVhcCBvbiBkbWEgaGVhcCBmcmFt
ZXdvcmsuCj4gCj4gVGhlIERNQSBjaHVuayBoZWFwIHN1cHBvcnRzIHRoZSBidWxrIGFsbG9jYXRp
b24gb2YgaGlnaGVyIG9yZGVyIHBhZ2VzLgoKV2h5IGRvIHdlIG5lZWQgdGhpcz8gV2hhdCBkb2Vz
IHRoaXMgZG8gdGhhdCBDTUEgZG9lc24ndD8KCldpdGggYSBDTUEgYXJlYSBJIGNhbiBiZWxpZXZl
IGEgY2FydmUgb3V0IGlzIGEgY29tbW9uLCBPUyBpbmRlcGVuZGVudCAKdGhpbmcuIFRoaXMgbG9v
a3MgdG9vIGNsb3NlbHkgdGllZCB0byBzb21lIExpbnV4IHRoaW5nIHRvIGdvIGludG8gRFQuCgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEh5ZXNvbyBZdSA8aHllc29vLnl1QHNhbXN1bmcuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9m
Zi1ieTogSHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+Cj4gQ2hhbmdlLUlkOiBJ
OGZiMjMxZTVhODM2MGUyZDhmNjU5NDdlMTU1YjEyYWE2NjRkZGUwMQoKRHJvcCB0aGlzLgoKPiAt
LS0KPiAgLi4uL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sICAgICAgIHwgNTgg
KysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKQo+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jl
c2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1
bmsueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1v
cnkvZG1hX2hlYXBfY2h1bmsueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAw
MDAwMDAwMDAwLi4zZTdmZWQ1ZmIwMDYKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55
YW1sCj4gQEAgLTAsMCArMSw1OCBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiArJVlBTUwgMS4yCj4gKy0tLQo+ICskaWQ6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVu
ay55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2Nv
cmUueWFtbCMKPiArCj4gK3RpdGxlOiBEZXZpY2UgdHJlZSBiaW5kaW5nIGZvciBjaHVuayBoZWFw
IG9uIERNQSBIRUFQIEZSQU1FV09SSwo+ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBUaGUgRE1B
IGNodW5rIGhlYXAgaXMgYmFja2VkIGJ5IHRoZSBDb250aWd1b3VzIE1lbW9yeSBBbGxvY2F0b3Ig
KENNQSkgYW5kCj4gKyAgc3VwcG9ydHMgYnVsayBhbGxvY2F0aW9uIG9mIGZpeGVkIHNpemUgcGFn
ZXMuCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIEh5ZXNvbyBZdSA8aHllc29vLnl1QHNhbXN1
bmcuY29tPgo+ICsgIC0gSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFyby5vcmc+Cj4gKyAg
LSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJuZWwub3JnPgo+ICsgIC0gSHJpZHlhIFZhbHNhcmFq
dTxocmlkeWFAZ29vZ2xlLmNvbT4KCnNwYWNlICAgICAgICAgICAgICAgICAgXgoKPiArCj4gKwo+
ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBhdGlibGU6Cj4gKyAgICBlbnVtOgo+ICsgICAgICAtIGRt
YV9oZWFwLGNodW5rCgpUaGUgZm9ybWF0IGlzIDx2ZW5kb3I+LDxzb21ldGhpbmc+IGFuZCAnZG1h
X2hlYXAnIGlzIG5vdCBhIHZlbmRvci4KCj4gKwo+ICsgIGNodW5rLW9yZGVyOgo+ICsgICAgZGVz
Y3JpcHRpb246IHwKPiArICAgICAgICAgICAgb3JkZXIgb2YgcGFnZXMgdGhhdCB3aWxsIGdldCBh
bGxvY2F0ZWQgZnJvbSB0aGUgY2h1bmsgRE1BIGhlYXAuCj4gKyAgICBtYXhJdGVtczogMQo+ICsK
PiArICBzaXplOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgYWxpZ25tZW50Ogo+ICsgICAg
bWF4SXRlbXM6IDEKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0gc2l6
ZQo+ICsgIC0gYWxpZ25tZW50Cj4gKyAgLSBjaHVuay1vcmRlcgo+ICsKPiArYWRkaXRpb25hbFBy
b3BlcnRpZXM6IGZhbHNlCj4gKwo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAgIHJlc2VydmVk
LW1lbW9yeSB7Cj4gKyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4gKyAgICAgICAgI3Np
emUtY2VsbHMgPSA8MT47Cj4gKwo+ICsgICAgICAgIGNodW5rX21lbW9yeTogY2h1bmtfbWVtb3J5
IHsKPiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJkbWFfaGVhcCxjaHVuayI7Cj4gKyAgICAg
ICAgICAgIHNpemUgPSA8MHgzMDAwMDAwPjsKPiArICAgICAgICAgICAgYWxpZ25tZW50ID0gPDB4
MCAweDAwMDEwMDAwPjsKPiArICAgICAgICAgICAgY2h1bmstb3JkZXIgPSA8ND47Cj4gKyAgICAg
ICAgfTsKPiArICAgIH07Cj4gKwo+ICsKPiAtLSAKPiAyLjMwLjAuMjg0LmdkOThiMWRkNWVhYTct
Z29vZwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
