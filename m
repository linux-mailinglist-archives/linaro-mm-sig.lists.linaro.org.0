Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B16AB2CAA24
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 18:52:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D916965FD7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 17:52:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C9EC36659B; Tue,  1 Dec 2020 17:52:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C51E65FCE;
	Tue,  1 Dec 2020 17:51:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B5D2560BE0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 17:51:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A9D4465F8D; Tue,  1 Dec 2020 17:51:52 +0000 (UTC)
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by lists.linaro.org (Postfix) with ESMTPS id 7774560BE0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 17:51:50 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id 4so1552765plk.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Dec 2020 09:51:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=k6Xb9MXJVov2wm4juOQ7YbGN8C26NDDinzdyjfuUn68=;
 b=Qf2GXyrJqmtSr+2blCSvAbavr6UYY3RSp9rTDt+bx/HNc3hyR+owv35g1z0zdtolv2
 mFgAVwFa13SbTSyb0kvOndKXaIa7WStgwM4Oh8WDoIiIBnlczzw5l1Ch9tiDAgzAMMp1
 wcG6PKuw3E/YRiFDJL+tfIcG+XWMSFV0f3HGNf8DFfQW09thwR6w66xrK9C7X+HEbER4
 nfjsdGxj3kcWJArQeyMm2AgijvyHMh+IJOcpdPzrFN+1IanqdL+0S0RxrM8cQB3n0+S6
 UT6C1GwLQHJrocn3NslCSjfAGTIVpXed7cERt4ozbMtDruJZUH/ukIDv9bTdXG3QNABz
 bmEg==
X-Gm-Message-State: AOAM531PKdSiSoNDsmQPAT5xOa2Fv3JA857/16fd79SiA8beTDknSOOz
 XM1EZ9R4Jr/9fEsDJJhi2X8Q+NQk3DY=
X-Google-Smtp-Source: ABdhPJzSmx8SXb+o8aTUE2sD5HDesL5BsQaDTaF4cLIZmuGSDBxGOhBU7W0xvz5ruGhxvmVGYiktuw==
X-Received: by 2002:a17:90a:c257:: with SMTP id
 d23mr3934185pjx.211.1606845109590; 
 Tue, 01 Dec 2020 09:51:49 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id q23sm390082pfg.192.2020.12.01.09.51.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 09:51:48 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue,  1 Dec 2020 09:51:40 -0800
Message-Id: <20201201175144.3996569-1-minchan@kernel.org>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 david@redhat.com, Minchan Kim <minchan@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, willy@infradead.org,
 Brian.Starkey@arm.com, linaro-mm-sig@lists.linaro.org,
 linux-mm <linux-mm@kvack.org>, john.stultz@linaro.org,
 christian.koenig@amd.com, joaodias@google.com, hridya@google.com,
 iamjoonsoo.kim@lge.com, pullip.cho@samsung.com, surenb@google.com,
 vbabka@suse.cz, hyesoo.yu@samsung.com
Subject: [Linaro-mm-sig] [PATCH v2 0/4] Chunk Heap Support on DMA-HEAP
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

VGhpcyBwYXRjaHNldCBpbnRyb2R1Y2VzIGEgbmV3IGRtYSBoZWFwLCBjaHVuayBoZWFwIHRoYXQg
bWFrZXMgaXQKZWFzeSB0byBwZXJmb3JtIHRoZSBidWxrIGFsbG9jYXRpb24gb2YgaGlnaCBvcmRl
ciBwYWdlcy4KSXQgaGFzIGJlZW4gY3JlYXRlZCB0byBoZWxwIG9wdGltaXplIHRoZSA0Sy84SyBI
RFIgdmlkZW8gcGxheWJhY2sKd2l0aCBzZWN1cmUgRFJNIEhXIHRvIHByb3RlY3QgY29udGVudHMg
b24gbWVtb3J5LiBUaGUgSFcgbmVlZHMKcGh5c2ljYWxseSBjb250aWd1b3VzIG1lbW9yeSBjaHVu
a3MgdXAgdG8gc2V2ZXJhbCBodW5kcmVkIE1CIG1lbW9yeS4KClRoaXMgcGF0Y2hzZXQgaXMgYWdh
aW5zdCBvbiBuZXh0LTIwMjAxMTMwLgoKVGhlIHBhdGNoc2V0IGluY2x1ZGVzIHRoZSBmb2xsb3dp
bmc6CiAtIGNtYV9hbGxvY19idWxrIEFQSQogLSBleHBvcnQgZG1hLWhlYXAgQVBJIHRvIHJlZ2lz
dGVyIGtlcm5lbCBtb2R1bGUgZG1hIGhlYXAuCiAtIGFkZCBjaHVuayBoZWFwIGltcGxlbWVudGF0
aW9uLgoKKiBTaW5jZSB2MSAtIAogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1tLzIw
MjAxMTE3MTgxOTM1LjM2MTM1ODEtMS1taW5jaGFuQGtlcm5lbC5vcmcvCgogICogaW50cm9kdWNl
IGFsbG9jX2NvbnRpZ19tb2RlIC0gRGF2aWQKICAqIHVzZSBkZWZhdWx0IENNQSBpbnN0ZWFkIG9m
IGRldmljZSB0cmVlIC0gSm9obgogICAgCkh5ZXNvbyBZdSAoMik6CiAgZG1hLWJ1ZjogYWRkIGV4
cG9ydCBzeW1ib2wgZm9yIGRtYS1oZWFwCiAgZG1hLWJ1ZjogaGVhcHM6IGFkZCBjaHVuayBoZWFw
IHRvIGRtYWJ1ZiBoZWFwcwoKTWluY2hhbiBLaW0gKDIpOgogIG1tOiBpbnRyb2R1Y2UgYWxsb2Nf
Y29udGlnX21vZGUKICBtbTogaW50cm9kdWNlIGNtYV9hbGxvY19idWxrIEFQSQoKIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtaGVhcC5jICAgICAgICAgfCAgIDIgKwogZHJpdmVycy9kbWEtYnVmL2hlYXBz
L0tjb25maWcgICAgICB8ICAxNSArCiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvTWFrZWZpbGUgICAg
IHwgICAxICsKIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jaHVua19oZWFwLmMgfCA0MjkgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvdmlydGlvL3ZpcnRpb19tZW0uYyAgICAg
ICAgfCAgIDIgKy0KIGluY2x1ZGUvbGludXgvY21hLmggICAgICAgICAgICAgICAgfCAgIDUgKwog
aW5jbHVkZS9saW51eC9nZnAuaCAgICAgICAgICAgICAgICB8ICAxMCArLQoga2VybmVsL2RtYS9j
b250aWd1b3VzLmMgICAgICAgICAgICB8ICAgMSArCiBtbS9jbWEuYyAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgMTM0ICsrKysrKysrLQogbW0vcGFnZV9hbGxvYy5jICAgICAgICAgICAgICAg
ICAgICB8ICAyNSArLQogMTAgZmlsZXMgY2hhbmdlZCwgNjA3IGluc2VydGlvbnMoKyksIDE3IGRl
bGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jaHVu
a19oZWFwLmMKCi0tIAoyLjI5LjIuNDU0LmdhZmYyMGRhM2EyLWdvb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
