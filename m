Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCD72FF287
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Jan 2021 18:56:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34E0A66738
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Jan 2021 17:55:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2166566755; Thu, 21 Jan 2021 17:55:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C19E6673C;
	Thu, 21 Jan 2021 17:55:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 965316093B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 17:55:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8755266738; Thu, 21 Jan 2021 17:55:10 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by lists.linaro.org (Postfix) with ESMTPS id 504856093B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 17:55:09 +0000 (UTC)
Received: by mail-pf1-f180.google.com with SMTP id q131so1942738pfq.10
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 09:55:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=lIeZgxiGCsLILQUzar0fN74yeBikTXjhSQrKP1TVbyY=;
 b=ldkJIqZ9gwvrGcSiXyQmWCvx4fxKz2O/CicbcgA7/UQubDYQyJaU0z8VEn/rdVQFvt
 QnFzeE9BXkPTF3JmgRAR87HV9skk7VoEQqxKO3S4aORoyWV017vt+8cBpj6aGURlZ8+6
 6Jsymp7HmS368EYsMzB0vGHlVO90kgqfrpZPWmOvH99w68LV0two+z/WbIPlDGLmzVL7
 Bh7z2Tg/zgpOBJ8lRQ/4expBoXyyfW8/iQ5YUOxAtW4cQg/dD1AjTEskQXC4uDdwxJYd
 kl4z8mweL2tWHCG55Eu3PXpj2C/6c8t7XdsLX+ziAnPkAx9cDG3qRM1bBsVSOOaCaVvb
 zaVw==
X-Gm-Message-State: AOAM533bFgYGUmoErl8qgNKS2Q1OOPrEW4Ogp/soABU9UjnxZ4hd9Y7T
 wS6ykqrlFGS0emFtyTxCi8Y=
X-Google-Smtp-Source: ABdhPJwtihxfcT7CpRtx34TZuGHZTSg1DELFPxcH324ViojdMpZTcYglQ8vCxZ6nbMkVxVbk2hfbpA==
X-Received: by 2002:a05:6a00:15cc:b029:1ba:5282:3ab8 with SMTP id
 o12-20020a056a0015ccb02901ba52823ab8mr792072pfu.77.1611251708510; 
 Thu, 21 Jan 2021 09:55:08 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:74d0:bb24:e25e:dc4d])
 by smtp.gmail.com with ESMTPSA id t2sm6897317pju.19.2021.01.21.09.55.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jan 2021 09:55:07 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Thu, 21 Jan 2021 09:54:58 -0800
Message-Id: <20210121175502.274391-1-minchan@kernel.org>
X-Mailer: git-send-email 2.30.0.296.g2bfb1c46d8-goog
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, Minchan Kim <minchan@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: [Linaro-mm-sig] [PATCH v4 0/4] Chunk Heap Support on DMA-HEAP
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

VGhpcyBwYXRjaHNldCBpbnRyb2R1Y2VzIGEgbmV3IGRtYSBoZWFwLCAiY2h1bmstaGVhcCIgdGhh
dCBtYWtlcyBpdAplYXN5IHRvIHBlcmZvcm0gdGhlIGJ1bGsgYWxsb2NhdGlvbiBvZiBoaWdoIG9y
ZGVyIHBhZ2VzLgpJdCBoYXMgYmVlbiBjcmVhdGVkIHRvIGhlbHAgb3B0aW1pemUgdGhlIDRLLzhL
IEhEUiB2aWRlbyBwbGF5YmFjawp3aXRoIHNlY3VyZSBEUk0gSFcgdG8gcHJvdGVjdCBjb250ZW50
cyBvbiBtZW1vcnkuIFRoZSBIVyBuZWVkcwpwaHlzaWNhbGx5IGNvbnRpZ3VvdXMgbWVtb3J5IGNo
dW5rcyhlLmcsIDY0SykgdXAgdG8gc2V2ZXJhbCBodW5kcmVkCk1CIG1lbW9yeS4KClRvIG1ha2Ug
c3VjaCBoaWdoLW9yZGVyIGJpZyBidWxrIGFsbG9jYXRpb25zIHdvcmssIGNodW5rLWhlYXAgdXNl
cwpDTUEgYXJlYS4gVG8gYXZvaWQgQ01BIGFsbG9jYXRpb24gbG9uZyBzdGFsbCBvbiBibG9ja2lu
ZyBwYWdlcyhlLmcuLApwYWdlIHdyaXRlYmFjayBhbmQvb3IgcGFnZSBsb2NraW5nKSwgaXQgdXNl
cyBmYWlsZmFzdCBtb2RlIG9mIHRoZQpDTUEgQVBJKGkuZS4sIF9fR0ZQX05PUkVUUlkpIHNvIGl0
IHdpbGwgY29udGludWUgdG8gZmluZCBlYXN5Cm1pZ3JhdGFibGUgcGFnZXMgaW4gZGlmZmVyZW50
IHBhZ2VibG9ja3Mgd2l0aG91dCBzdGFsbGluZy4gQXQgbGFzdApyZXNvcnQsIGl0IHdpbGwgYWxs
b3cgdGhlIGJsb2NraW5nIG9ubHkgaWYgaXQgY291bGRuJ3QgZmluZCB0aGUKYXZhaWxhYmxlIG1l
bW9yeSBpbiB0aGUgZW5kLgoKRmlyc3QgdHdvIHBhdGNoZXMgaW50cm9kdWNlcyB0aGUgZmFpbGZh
c3QgbW9kZSBhcyBfX0dGUF9OT1JFVFJZCmluIGFsbG9jX2NvbnRpZ19yYW5nZSBhbmQgdGhlIGFs
bG93IHRvIHVzZSBpdCBmcm9tIHRoZSBDTUEgQVBJLgpUaGlyZCBwYXRjaCBpbnRyb2R1Y2VzIGRl
dmljZSB0cmVlIHN5bnRheCBmb3IgY2h1bmstaGVhcCB0byBiaW5kCnRoZSBzcGVjaWZpYyBDTUEg
YXJlYSB3aXRoIGNodW5rLWhlYXAuCkZpbmFsbHksIGxhc3QgcGF0Y2ggaW1wbGVtZW50cyBjaHVu
ay1oZWFwIGFzIGRtYS1idWYgaGVhcC4KCiogc2luY2UgdjMgLSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1tbS8yMDIxMDExMzAxMjE0My4xMjAxMTA1LTEtbWluY2hhbkBrZXJuZWwub3Jn
LwogICogdXNlIHByZWZpeCBmb3IgY2h1bmstbmFtZSAtIEpvaG4KICAqIGZpeCB5YW1sbGludCBl
cnJvciAtIFJvYgogICogYWRkIHJldmlld2VkLWJ5IC0gU3VyZW4KCiogc2luY2UgdjIgLSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8yMDIwMTIwMTE3NTE0NC4zOTk2NTY5LTEtbWlu
Y2hhbkBrZXJuZWwub3JnLwogICogaW50cm9kdWNlIGdmcF9tYXNrIHdpdGggX19HRlBfTk9SRVRS
WSBvbiBjbWFfYWxsb2MgLSBNaWNoYWwKICAqIGRvIG5vdCBleHBvZXJ0IENNQSBBUElzIC0gQ2hy
aXN0b3BoCiAgKiB1c2UgY29tcGF0aWJsZSBzdHJpbmcgZm9yIERUIGluc3RlYWQgb2YgZG1hLWhl
YXAgc3BlY2lmaWMgcHJvcGVydHkgLSBIcmlkeWEKCiogU2luY2UgdjEgLSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1tbS8yMDIwMTExNzE4MTkzNS4zNjEzNTgxLTEtbWluY2hhbkBrZXJu
ZWwub3JnLwogICogaW50cm9kdWNlIGFsbG9jX2NvbnRpZ19tb2RlIC0gRGF2aWQKICAqIHVzZSBk
ZWZhdWx0IENNQSBpbnN0ZWFkIG9mIGRldmljZSB0cmVlIC0gSm9obgoKSHllc29vIFl1ICgyKToK
ICBkdC1iaW5kaW5nczogcmVzZXJ2ZWQtbWVtb3J5OiBNYWtlIERNQS1CVUYgQ01BIGhlYXAgRFQt
Y29uZmlndXJhYmxlCiAgZG1hLWJ1ZjogaGVhcHM6IGFkZCBjaHVuayBoZWFwIHRvIGRtYWJ1ZiBo
ZWFwcwoKTWluY2hhbiBLaW0gKDIpOgogIG1tOiBjbWE6IGludHJvZHVjZSBnZnAgZmxhZyBpbiBj
bWFfYWxsb2MgaW5zdGVhZCBvZiBub193YXJuCiAgbW06IGZhaWxmYXN0IG1vZGUgd2l0aCBfX0dG
UF9OT1JFVFJZIGluIGFsbG9jX2NvbnRpZ19yYW5nZQoKIC4uLi9yZXNlcnZlZC1tZW1vcnkvZG1h
X2hlYXBfY2h1bmsueWFtbCAgICAgICB8ICA1NiArKwogZHJpdmVycy9kbWEtYnVmL2hlYXBzL0tj
b25maWcgICAgICAgICAgICAgICAgIHwgICA4ICsKIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9NYWtl
ZmlsZSAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvY2h1bmtf
aGVhcC5jICAgICAgICAgICAgfCA0OTIgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2RtYS1i
dWYvaGVhcHMvY21hX2hlYXAuYyAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvczM5MC9j
aGFyL3ZtY3AuYyAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogaW5jbHVkZS9saW51eC9j
bWEuaCAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBrZXJuZWwvZG1hL2NvbnRp
Z3VvdXMuYyAgICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKy0KIG1tL2NtYS5jICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxMiArLQogbW0vY21hX2RlYnVnLmMgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBtbS9odWdldGxiLmMgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDYgKy0KIG1tL3BhZ2VfYWxsb2MuYyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgOCArLQogbW0vc2VjcmV0bWVtLmMgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAzICstCiAxMyBmaWxlcyBjaGFuZ2VkLCA1ODEg
aW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVu
ay55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NodW5rX2hl
YXAuYwoKLS0gCjIuMzAuMC4yOTYuZzJiZmIxYzQ2ZDgtZ29vZwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
