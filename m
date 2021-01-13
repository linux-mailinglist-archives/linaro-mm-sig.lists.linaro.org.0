Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 857A42F4F35
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 16:52:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D5FD6672F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 15:52:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9094566737; Wed, 13 Jan 2021 15:52:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F9F86674D;
	Wed, 13 Jan 2021 15:49:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7A06866738
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 15:45:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 28C9566746; Wed, 13 Jan 2021 15:45:12 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45])
 by lists.linaro.org (Postfix) with ESMTPS id 40DE46672F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 15:45:07 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id r9so2254614otk.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 07:45:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=/OZYDMQOUVtActRUrxqdkowy5AXag3L8nzdkAFPXlHg=;
 b=qRV5OfbQLRs70xZmeySpnnH+1fVrVfbqdRYIOetVz31xjsVaPEv2zD8mUT3c3UHRat
 1qupaibXYNDH6CsJS9oe852/2f6VVNvTL2OBXIFbytpDwOSVHSeTWeWdYgx1S2u2w8Wc
 DyluvdTq9nLngkp64wmHENcrFdDCZN4rTdux8F7Oe2nVDvQWKrrww4loHc2kxwVnOqmL
 Ph12BBfUXrvmDLZ+Iuaqc3HNLx7InxEhHS5hUgzlPSm3uwsWojEz1x4Uq+ysmvdDDhJ/
 ff3+/EQSbjBtIktH5GefaP7WndoUA839OMtSluR0B+o0pM1sTJWwLxGzIIOcw0pq1Y7R
 0xxQ==
X-Gm-Message-State: AOAM531NT68hKangJ1Ow54YFbcoAheri/LjcbNusya/PkzHcLX7V6gU3
 qUMzB4qByvnLC4kFfiR1Nw==
X-Google-Smtp-Source: ABdhPJxhG9xx22koYrUiBE7xApayk8lzDcbuaua4K4mR7TmW9qeqOnJNnQjjpctbY/7o1KuqZJK3tQ==
X-Received: by 2002:a9d:b90:: with SMTP id 16mr1727890oth.9.1610552706627;
 Wed, 13 Jan 2021 07:45:06 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h7sm460329otq.21.2021.01.13.07.45.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Jan 2021 07:45:05 -0800 (PST)
Received: (nullmailer pid 2506181 invoked by uid 1000);
 Wed, 13 Jan 2021 15:45:04 -0000
From: Rob Herring <robh@kernel.org>
To: Minchan Kim <minchan@kernel.org>
In-Reply-To: <20210113012143.1201105-4-minchan@kernel.org>
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-4-minchan@kernel.org>
Date: Wed, 13 Jan 2021 09:45:04 -0600
Message-Id: <1610552704.254587.2506180.nullmailer@robh.at.kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, mhocko@suse.com, devicetree@vger.kernel.org,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 hyesoo.yu@samsung.com, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linux-mm <linux-mm@kvack.org>, linux-media@vger.kernel.org
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCAxMiBKYW4gMjAyMSAxNzoyMTo0MiAtMDgwMCwgTWluY2hhbiBLaW0gd3JvdGU6Cj4g
RnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4gCj4gRG9jdW1lbnQgZGV2
aWNldHJlZSBiaW5kaW5nIGZvciBjaHVuayBjbWEgaGVhcCBvbiBkbWEgaGVhcCBmcmFtZXdvcmsu
Cj4gCj4gVGhlIERNQSBjaHVuayBoZWFwIHN1cHBvcnRzIHRoZSBidWxrIGFsbG9jYXRpb24gb2Yg
aGlnaGVyIG9yZGVyIHBhZ2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEh5ZXNvbyBZdSA8aHllc29v
Lnl1QHNhbXN1bmcuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtl
cm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogSHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2ds
ZS5jb20+Cj4gQ2hhbmdlLUlkOiBJOGZiMjMxZTVhODM2MGUyZDhmNjU5NDdlMTU1YjEyYWE2NjRk
ZGUwMQo+IC0tLQo+ICAuLi4vcmVzZXJ2ZWQtbWVtb3J5L2RtYV9oZWFwX2NodW5rLnlhbWwgICAg
ICAgfCA1OCArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRp
b25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcmVzZXJ2ZWQtbWVtb3J5L2RtYV9oZWFwX2NodW5rLnlhbWwKPiAKCk15IGJvdCBmb3Vu
ZCBlcnJvcnMgcnVubmluZyAnbWFrZSBkdF9iaW5kaW5nX2NoZWNrJyBvbiB5b3VyIHBhdGNoOgoK
eWFtbGxpbnQgd2FybmluZ3MvZXJyb3JzOgouL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbDo1ODoxOiBbd2FybmluZ10g
dG9vIG1hbnkgYmxhbmsgbGluZXMgKDIgPiAxKSAoZW1wdHktbGluZXMpCgpkdHNjaGVtYS9kdGMg
d2FybmluZ3MvZXJyb3JzOgoKU2VlIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gv
MTQyNTU3NwoKVGhpcyBjaGVjayBjYW4gZmFpbCBpZiB0aGVyZSBhcmUgYW55IGRlcGVuZGVuY2ll
cy4gVGhlIGJhc2UgZm9yIGEgcGF0Y2gKc2VyaWVzIGlzIGdlbmVyYWxseSB0aGUgbW9zdCByZWNl
bnQgcmMxLgoKSWYgeW91IGFscmVhZHkgcmFuICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIGFuZCBk
aWRuJ3Qgc2VlIHRoZSBhYm92ZQplcnJvcihzKSwgdGhlbiBtYWtlIHN1cmUgJ3lhbWxsaW50JyBp
cyBpbnN0YWxsZWQgYW5kIGR0LXNjaGVtYSBpcyB1cCB0bwpkYXRlOgoKcGlwMyBpbnN0YWxsIGR0
c2NoZW1hIC0tdXBncmFkZQoKUGxlYXNlIGNoZWNrIGFuZCByZS1zdWJtaXQuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
