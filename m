Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 858EA2FF297
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Jan 2021 18:58:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B51596093B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Jan 2021 17:58:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9EB226673C; Thu, 21 Jan 2021 17:58:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A974D6674B;
	Thu, 21 Jan 2021 17:56:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0CE3D66738
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 17:56:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F2B546674D; Thu, 21 Jan 2021 17:56:03 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by lists.linaro.org (Postfix) with ESMTPS id CECFE6673D
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 17:55:15 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id e6so2164657pjj.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Jan 2021 09:55:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=K8nQ7vZePLiBr4AwY3n+MiyEOXEnc2UqVALdrd2awxo=;
 b=PmW/UNGHrQZof0mTcn7su3rkfcwCwEAywDglo5CvsEL9esVJTqZNd+e12xQL5dbnrk
 5F8uV81lQFCyBpZhOmVSBan9tGQYxHh9nkr0DRCIhlEU+h4w0EG8Lnss7Ff0oByuK98H
 sHJnvegsQqKV1ENp2L08biDjyNN4kXXP9c4T3lBZoYMp5mE7FRBXz4ZnYjAROsnuziQN
 7YiHmuNuYf9QSFpmjGF5YL0PpLbAOzCMCUqiX4iRdvofjowgs2sgVUfbAgldgBEPqzIn
 Zv+07Hd3u8EdKF8ZglmFlhqIM00Z6EFNg2jg0f1odQAev6ImivP4TyE3DkYs/QFLrD2N
 F84A==
X-Gm-Message-State: AOAM530e/L5Wv2vlDHWTgWb9l1RZLdEEjsGuWpgeBmpUoptu1eNufR1t
 oKkAYVlbeav56tIeOTSnEILHKXorph0=
X-Google-Smtp-Source: ABdhPJwoClfcVILfT+MG/hOAtpiA8kxG4mvryV2nmV2o6uqTe/csRvO9CeiR4QmEKb0A/Qe1bAhjgA==
X-Received: by 2002:a17:902:b496:b029:da:d356:be8c with SMTP id
 y22-20020a170902b496b02900dad356be8cmr854145plr.56.1611251715067; 
 Thu, 21 Jan 2021 09:55:15 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:74d0:bb24:e25e:dc4d])
 by smtp.gmail.com with ESMTPSA id t2sm6897317pju.19.2021.01.21.09.55.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jan 2021 09:55:14 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Thu, 21 Jan 2021 09:55:01 -0800
Message-Id: <20210121175502.274391-4-minchan@kernel.org>
X-Mailer: git-send-email 2.30.0.296.g2bfb1c46d8-goog
In-Reply-To: <20210121175502.274391-1-minchan@kernel.org>
References: <20210121175502.274391-1-minchan@kernel.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, Minchan Kim <minchan@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: [Linaro-mm-sig] [PATCH v4 3/4] dt-bindings: reserved-memory: Make
	DMA-BUF CMA heap DT-configurable
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

RnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+CgpEb2N1bWVudCBkZXZpY2V0
cmVlIGJpbmRpbmcgZm9yIGNodW5rIGNtYSBoZWFwIG9uIGRtYSBoZWFwIGZyYW1ld29yay4KClRo
ZSBETUEgY2h1bmsgaGVhcCBzdXBwb3J0cyB0aGUgYnVsayBhbGxvY2F0aW9uIG9mIGhpZ2hlciBv
cmRlciBwYWdlcy4KClRoZSBjaHVuayBoZWFwJ3MgYWxsb2NhdG9yIGFsbG9jYXRlcyBmcm9tIHRo
ZSBDTUEgYXJlYS4gSXQgaXMgb3B0aW1pemVkCnRvIHBlcmZvcm0gYnVsayBhbGxvY2F0aW9uIG9m
IGhpZ2hlciBvcmRlciBwYWdlcyBpbiBhbiBlZmZpY2llbnQgbWFubmVyLgpGb3IgdGhpcyBwdXJw
b3NlLCB0aGUgaGVhcCBuZWVkcyBhbiBleGNsdXNpdmUgQ01BIGFyZWEgdGhhdCB3aWxsIG9ubHkg
YmUKdXNlZCBmb3IgYWxsb2NhdGlvbiBieSB0aGUgaGVhcC4gVGhpcyBpcyB0aGUgcmVhc29uIHdo
eSB3ZSBuZWVkIHRvIHVzZQp0aGUgRFQgdG8gY3JlYXRlIGFuZCBjb25maWd1cmUgYSByZXNlcnZl
ZCBtZW1vcnkgcmVnaW9uIGZvciB1c2UgYnkgdGhlCmNodW5rIENNQSBoZWFwIGRyaXZlci4gU2lu
Y2UgYWxsIGFsbG9jYXRpb24gZnJvbSBETUEtQlVGIGhlYXBzIGhhcHBlbgpmcm9tIHRoZSB1c2Vy
LXNwYWNlLCB0aGVyZSBpcyBubyBvdGhlciBhcHByb3ByaWF0ZSBkZXZpY2UtZHJpdmVyIHRoYXQK
d2UgY2FuIHVzZSB0byByZWdpc3RlciB0aGUgY2h1bmsgQ01BIGhlYXAgYW5kIGNvbmZpZ3VyZSB0
aGUgcmVzZXJ2ZWQKbWVtb3J5IHJlZ2lvbiBmb3IgaXRzIHVzZS4KClNpZ25lZC1vZmYtYnk6IEh5
ZXNvbyBZdSA8aHllc29vLnl1QHNhbXN1bmcuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaW5jaGFuIEtp
bSA8bWluY2hhbkBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxo
cmlkeWFAZ29vZ2xlLmNvbT4KLS0tCiAuLi4vcmVzZXJ2ZWQtbWVtb3J5L2RtYV9oZWFwX2NodW5r
LnlhbWwgICAgICAgfCA1NiArKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNTYg
aW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbAoKZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1vcnkvZG1h
X2hlYXBfY2h1bmsueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNl
cnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCAwMDAwMDAwMDAwMDAuLjAwZGIwYWU2YWY2MQotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNlcnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsu
eWFtbApAQCAtMCwwICsxLDU2IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZp
Y2V0cmVlLm9yZy9zY2hlbWFzL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sIwor
JHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCisK
K3RpdGxlOiBEZXZpY2UgdHJlZSBiaW5kaW5nIGZvciBjaHVuayBoZWFwIG9uIERNQSBIRUFQIEZS
QU1FV09SSworCitkZXNjcmlwdGlvbjogfAorICBUaGUgRE1BIGNodW5rIGhlYXAgaXMgYmFja2Vk
IGJ5IHRoZSBDb250aWd1b3VzIE1lbW9yeSBBbGxvY2F0b3IgKENNQSkgYW5kCisgIHN1cHBvcnRz
IGJ1bGsgYWxsb2NhdGlvbiBvZiBmaXhlZCBzaXplIHBhZ2VzLgorCittYWludGFpbmVyczoKKyAg
LSBIeWVzb28gWXUgPGh5ZXNvby55dUBzYW1zdW5nLmNvbT4KKyAgLSBKb2huIFN0dWx0eiA8am9o
bi5zdHVsdHpAbGluYXJvLm9yZz4KKyAgLSBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJuZWwub3Jn
PgorICAtIEhyaWR5YSBWYWxzYXJhanU8aHJpZHlhQGdvb2dsZS5jb20+CisKKworcHJvcGVydGll
czoKKyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgorICAgICAgLSBkbWFfaGVhcCxjaHVuaworCisg
IGNodW5rLW9yZGVyOgorICAgIGRlc2NyaXB0aW9uOiB8CisgICAgICAgICAgICBvcmRlciBvZiBw
YWdlcyB0aGF0IHdpbGwgZ2V0IGFsbG9jYXRlZCBmcm9tIHRoZSBjaHVuayBETUEgaGVhcC4KKyAg
ICBtYXhJdGVtczogMQorCisgIHNpemU6CisgICAgbWF4SXRlbXM6IDEKKworICBhbGlnbm1lbnQ6
CisgICAgbWF4SXRlbXM6IDEKKworcmVxdWlyZWQ6CisgIC0gY29tcGF0aWJsZQorICAtIHNpemUK
KyAgLSBhbGlnbm1lbnQKKyAgLSBjaHVuay1vcmRlcgorCithZGRpdGlvbmFsUHJvcGVydGllczog
ZmFsc2UKKworZXhhbXBsZXM6CisgIC0gfAorICAgIHJlc2VydmVkLW1lbW9yeSB7CisgICAgICAg
ICNhZGRyZXNzLWNlbGxzID0gPDI+OworICAgICAgICAjc2l6ZS1jZWxscyA9IDwxPjsKKworICAg
ICAgICBjaHVua19tZW1vcnk6IGNodW5rX21lbW9yeSB7CisgICAgICAgICAgICBjb21wYXRpYmxl
ID0gImRtYV9oZWFwLGNodW5rIjsKKyAgICAgICAgICAgIHNpemUgPSA8MHgzMDAwMDAwPjsKKyAg
ICAgICAgICAgIGFsaWdubWVudCA9IDwweDAgMHgwMDAxMDAwMD47CisgICAgICAgICAgICBjaHVu
ay1vcmRlciA9IDw0PjsKKyAgICAgICAgfTsKKyAgICB9OwotLSAKMi4zMC4wLjI5Ni5nMmJmYjFj
NDZkOC1nb29nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
