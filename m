Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A36B2F4110
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 02:22:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDB4366739
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 01:22:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BEB316673C; Wed, 13 Jan 2021 01:22:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 698CC66726;
	Wed, 13 Jan 2021 01:21:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A72A36073E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 01:21:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 92BC36670D; Wed, 13 Jan 2021 01:21:55 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by lists.linaro.org (Postfix) with ESMTPS id 54C286073E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 01:21:54 +0000 (UTC)
Received: by mail-pf1-f169.google.com with SMTP id d2so213617pfq.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jan 2021 17:21:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=OF1vzKHCoB9FbkveX0jDIMlRTwuLz60PQrD10fcsFvo=;
 b=gMbb2YqxMj2NHyjpy4OYtt+rwXIQoYXTlaMW4qjdc1+xoRr3rTn/HyZ3GYiClgnY5a
 uGxcwv6od/L/y1vKFG5HsaR+qdLUL0uCNh9NNKERbofBN01w0K+5/FczDzSCevkR31qG
 11b9IU3Gn6Cley6Hy/M6v1LPBb3WJcwthv2KBXb3pzaDYxCc9CAc7dEnsSVebOrj/0+3
 m3J2JtEK9XtOoADVuuJPm35DilKqzFCCLeMmNr1LSWtaOu61sMhdecpn8j0EgA6hkP7J
 C5NG+mEx11krcHXVMZ8jWjWZTv9EcnPWfh4J0MYPk+5LzRPnoYiSPCGEYkKpy6nsaR1e
 OGTA==
X-Gm-Message-State: AOAM533wiqJaIQGhT17iPcEQaYbUGNClXgvVd2bhZqTGcsnf3lCIOoSG
 VkmM8Aylf5L4p4pjDjLNcUY=
X-Google-Smtp-Source: ABdhPJzYrt3TdM44/itCkvsZ36dDJ69idE7ohZq5unbjsjwFA2k+bmee0Jqg9Tmdb+3ZMwABk51ytA==
X-Received: by 2002:aa7:95aa:0:b029:1ad:d810:42be with SMTP id
 a10-20020aa795aa0000b02901add81042bemr2009988pfk.51.1610500913498; 
 Tue, 12 Jan 2021 17:21:53 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id b2sm355197pff.79.2021.01.12.17.21.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Jan 2021 17:21:52 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 12 Jan 2021 17:21:39 -0800
Message-Id: <20210113012143.1201105-1-minchan@kernel.org>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, Minchan Kim <minchan@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: [Linaro-mm-sig] [PATCH v3 0/4] Chunk Heap Support on DMA-HEAP
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
ay1oZWFwIGFzIGRtYS1idWYgaGVhcC4KCiogc2luY2UgdjIgLQogICogaW50cm9kdWNlIGdmcF9t
YXNrIHdpdGggX19HRlBfTk9SRVRSWSBvbiBjbWFfYWxsb2MgLSBtaG9ja28KICAqIGRvIG5vdCBl
eHBvZXJ0IENNQSBBUElzIC0gQ2hyaXN0b3BoCiAgKiB1c2UgY29tcGF0aWJsZSBzdHJpbmcgZm9y
IERUIGluc3RlYWQgb2YgZG1hLWhlYXAgc3BlY2lmaWMgcHJvcGVydHkgLSBIcmlkeWEKCiogU2lu
Y2UgdjEgLSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8yMDIwMTExNzE4MTkzNS4z
NjEzNTgxLTEtbWluY2hhbkBrZXJuZWwub3JnLwogICogaW50cm9kdWNlIGFsbG9jX2NvbnRpZ19t
b2RlIC0gRGF2aWQKICAqIHVzZSBkZWZhdWx0IENNQSBpbnN0ZWFkIG9mIGRldmljZSB0cmVlIC0g
Sm9obgoKSHllc29vIFl1ICgyKToKICBkdC1iaW5kaW5nczogcmVzZXJ2ZWQtbWVtb3J5OiBNYWtl
IERNQS1CVUYgQ01BIGhlYXAgRFQtY29uZmlndXJhYmxlCiAgZG1hLWJ1ZjogaGVhcHM6IGFkZCBj
aHVuayBoZWFwIHRvIGRtYWJ1ZiBoZWFwcwoKTWluY2hhbiBLaW0gKDIpOgogIG1tOiBjbWE6IGlu
dHJvZHVjZSBnZnAgZmxhZyBpbiBjbWFfYWxsb2MgaW5zdGVhZCBvZiBub193YXJuCiAgbW06IGZh
aWxmYXN0IG1vZGUgd2l0aCBfX0dGUF9OT1JFVFJZIGluIGFsbG9jX2NvbnRpZ19yYW5nZQoKIC4u
Li9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbCAgICAgICB8ICA1OCArKysKIGRy
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnICAgICAgICAgICAgICAgICB8ICAgOCArCiBkcml2
ZXJzL2RtYS1idWYvaGVhcHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL2NodW5rX2hlYXAuYyAgICAgICAgICAgIHwgNDc3ICsrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMgICAgICAgICAgICAgIHwg
ICAyICstCiBkcml2ZXJzL3MzOTAvY2hhci92bWNwLmMgICAgICAgICAgICAgICAgICAgICAgfCAg
IDIgKy0KIGluY2x1ZGUvbGludXgvY21hLmggICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
MiArLQoga2VybmVsL2RtYS9jb250aWd1b3VzLmMgICAgICAgICAgICAgICAgICAgICAgIHwgICAz
ICstCiBtbS9jbWEuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTIg
Ky0KIG1tL2NtYV9kZWJ1Zy5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiAr
LQogbW0vaHVnZXRsYi5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA2ICst
CiBtbS9wYWdlX2FsbG9jLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDggKy0K
IG1tL3NlY3JldG1lbS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMyArLQog
MTMgZmlsZXMgY2hhbmdlZCwgNTY4IGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZl
ZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9jaHVua19oZWFwLmMKCi0tIAoyLjMwLjAuMjg0LmdkOThiMWRkNWVhYTct
Z29vZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
