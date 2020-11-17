Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 729572B6D26
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Nov 2020 19:20:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B6B3666F6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Nov 2020 18:20:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 83D09666F8; Tue, 17 Nov 2020 18:20:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CCC4666E0;
	Tue, 17 Nov 2020 18:19:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B9B6D66596
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 18:19:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9ECFD666D5; Tue, 17 Nov 2020 18:19:46 +0000 (UTC)
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by lists.linaro.org (Postfix) with ESMTPS id 57D4366596
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 18:19:45 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id r9so906890pjl.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 10:19:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=W4I19oM9+fyOJfOvcvDY/AN8UbFYUGaHDs6FnXuBEh4=;
 b=MnSyOTwMyX2ORaembHIU4uLPpHGW48VjJ5R8GQGmww1agRk0GYTn+SS3mwQnrzagO9
 P/yyZEWEa4cp/80TidQOk41jT77+Ts9Rl0//Qbw3smdU2kEzMUKQM+pWzMLMwqynCVGw
 cdNro5gAoRmx5M/5+cEhnTJ4lCXhHNAeDa5hc+eWZMG2tA1qnnrLFzF3UBSb5N8tsCew
 NMPQ1G1Gwb5LK4ozUPvbH/XdCQi79YXVoUSmdxhzJg8CUKGgmBu1gzQ+ySxPmJhTF0Fx
 +KloBcxmz8izFFBMjzuwFbK29DaANJqt7KnKHwHQ2hwR9ILtgnTBNe4VGagLj6KjuBOg
 Nf0w==
X-Gm-Message-State: AOAM531lhXbc7YGSSLF51UgTeKn5fRKblrMw8ByGaxXxgEnZf9xUooPD
 Wapu3CjdlIzTVFSOzvrZwIM=
X-Google-Smtp-Source: ABdhPJxWMVJ5fUs0GD9esnodGnS80SKZIX7p7AYpiidE9Zy2i3xr/EAZJDacnYgj2ta4ILI72Jy82A==
X-Received: by 2002:a17:90a:d486:: with SMTP id
 s6mr312042pju.115.1605637184416; 
 Tue, 17 Nov 2020 10:19:44 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id h8sm4302639pjc.54.2020.11.17.10.19.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Nov 2020 10:19:43 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 17 Nov 2020 10:19:31 -0800
Message-Id: <20201117181935.3613581-1-minchan@kernel.org>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
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
Subject: [Linaro-mm-sig] [PATCH 0/4] Chunk Heap Support on DMA-HEAP
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
a3MgdXAgdG8gc2V2ZXJhbCBodW5kcmVkIE1CIG1lbW9yeS4KClRoZSBjaHVuayBoZWFwIGlzIHJl
Z2lzdGVyZWQgYnkgZGV2aWNlIHRyZWUgd2l0aCBhbGlnbm1lbnQgYW5kIG1lbW9yeQpub2RlIG9m
IENvbnRpZ3VvdXMgTWVtb3J5IEFsbG9jYXRvcihDTUEpLiBBbGlnbm1lbnQgZGVmaW5lcyBjaHVu
ayBwYWdlIHNpemUuCkZvciBleGFtcGxlLCBhbGlnbm1lbnQgMHgxXzAwMDAgbWVhbnMgY2h1bmsg
cGFnZSBzaXplIGlzIDY0S0IuClRoZSBwaGFuZGxlIHRvIG1lbW9yeSBub2RlIGluZGljYXRlcyBj
b250aWd1b3VzIG1lbW9yeSBhbGxvY2F0b3IoQ01BKS4KSWYgZGV2aWNlIG5vZGUgZG9lc24ndCBo
YXZlIGNtYSwgdGhlIHJlZ2lzdHJhdGlvbiBvZiBjaHVuayBoZWFwIGZhaWxzLgoKVGhpcyBwYXRj
aHNldCBpcyBhZ2FpbnN0IG9uIG5leHQtMjAyMDExMTAuCgpUaGUgcGF0Y2hzZXQgaW5jbHVkZXMg
dGhlIGZvbGxvd2luZzoKIC0gY21hX2FsbG9jX2J1bGsgQVBJCiAtIGV4cG9ydCBkbWEtaGVhcCBB
UEkgdG8gcmVnaXN0ZXIga2VybmVsIG1vZHVsZSBkbWEgaGVhcC4KIC0gYWRkIGNodW5rIGhlYXAg
aW1wbGVtZW50YXRpb24uCiAtIGRldmljZXRyZWUKCkh5ZXNvbyBZdSAoMyk6CiAgZG1hLWJ1Zjog
YWRkIGV4cG9ydCBzeW1ib2wgZm9yIGRtYS1oZWFwCiAgZG1hLWJ1ZjogaGVhcHM6IGFkZCBjaHVu
ayBoZWFwIHRvIGRtYWJ1ZiBoZWFwcwogIGRtYS1oZWFwOiBEZXZpY2V0cmVlIGJpbmRpbmcgZm9y
IGNodW5rIGhlYXAKCk1pbmNoYW4gS2ltICgxKToKICBtbTogaW50cm9kdWNlIGNtYV9hbGxvY19i
dWxrIEFQSQoKIC4uLi9iaW5kaW5ncy9kbWEtYnVmL2NodW5rX2hlYXAueWFtbCAgICAgICAgICB8
ICA1MiArKwogZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgICAgICAgICAgICAgICAgICAgIHwg
ICAyICsKIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnICAgICAgICAgICAgICAgICB8ICAg
OSArCiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgfCAgIDEg
KwogZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NodW5rX2hlYXAuYyAgICAgICAgICAgIHwgNDU4ICsr
KysrKysrKysrKysrKysrKwogaW5jbHVkZS9saW51eC9jbWEuaCAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICA1ICsKIGluY2x1ZGUvbGludXgvcGFnZS1pc29sYXRpb24uaCAgICAgICAgICAg
ICAgICB8ICAgMSArCiBtbS9jbWEuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAxMjkgKysrKy0KIG1tL3BhZ2VfYWxsb2MuYyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAxOSArLQogbW0vcGFnZV9pc29sYXRpb24uYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAzICstCiAxMCBmaWxlcyBjaGFuZ2VkLCA2NjYgaW5zZXJ0aW9ucygrKSwgMTMgZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2RtYS1idWYvY2h1bmtfaGVhcC55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL2NodW5rX2hlYXAuYwoKLS0gCjIuMjkuMi4yOTkuZ2RjMTEyMTgyM2Mt
Z29vZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
