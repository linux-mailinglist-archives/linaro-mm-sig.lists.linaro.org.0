Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EED372F4127
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 02:24:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19DDC6672C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Jan 2021 01:24:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0BE4066731; Wed, 13 Jan 2021 01:24:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA36D6672D;
	Wed, 13 Jan 2021 01:22:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5BF5E6672C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 01:22:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4AFFE6073E; Wed, 13 Jan 2021 01:22:38 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by lists.linaro.org (Postfix) with ESMTPS id 92DDB6073E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Jan 2021 01:22:00 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id i7so404746pgc.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jan 2021 17:22:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=moLKqW8sUzdDe7Tu+bx0keAxg66CW63q9xlqRNBYrrA=;
 b=IQYDB0UAOE3kpeC3lJ2pJ4gZtpvtZyWLzXhoBHCFafWxeytjDoIIYaoyXMikEUBo0H
 AbzQF3Vg8J7YgdpaggyHbOA7TsMwz7ue8EHJ4t0EPY16czwELPiSKIGn4NUp5qhSilTt
 gyVTan6GFPxW3hA9vDtNjNOFdsZByl3U6yFlQx+xfgUGURWl1GeEIkEHDe0cNn5NAv/n
 2kj8+ZGiArascmUzaWdvpKwSc5YF5V2El1gMvmg9Ib9DYcolxblHDGvlFuMyUEsDA89M
 hPWRXyQzhpU7aDW5aoIn+kHZVExzzLNMzSEbJZOGlDpWV1wS26ndv8Rh4HjTgWqjuiYY
 vqXA==
X-Gm-Message-State: AOAM531R3CL6hs22+fIlX/yOmieGZBHB2Y1lIZ7YCxjtHK1n91ifyuoQ
 xh/3+CNa85oIjKxQ1zjoXjg=
X-Google-Smtp-Source: ABdhPJx5ssWUpEIEIBeaTawSvCWhAJ4WrRqcd7JRRzO48BBfVLvjE9R4HsG7zK71sU4cpDiUxflR/w==
X-Received: by 2002:a63:cf56:: with SMTP id b22mr1900832pgj.16.1610500919879; 
 Tue, 12 Jan 2021 17:21:59 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id b2sm355197pff.79.2021.01.12.17.21.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Jan 2021 17:21:59 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 12 Jan 2021 17:21:42 -0800
Message-Id: <20210113012143.1201105-4-minchan@kernel.org>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
In-Reply-To: <20210113012143.1201105-1-minchan@kernel.org>
References: <20210113012143.1201105-1-minchan@kernel.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, Minchan Kim <minchan@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: [Linaro-mm-sig] [PATCH v3 3/4] dt-bindings: reserved-memory: Make
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
cmRlciBwYWdlcy4KClNpZ25lZC1vZmYtYnk6IEh5ZXNvbyBZdSA8aHllc29vLnl1QHNhbXN1bmcu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJuZWwub3JnPgpTaWdu
ZWQtb2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4KQ2hhbmdlLUlk
OiBJOGZiMjMxZTVhODM2MGUyZDhmNjU5NDdlMTU1YjEyYWE2NjRkZGUwMQotLS0KIC4uLi9yZXNl
cnZlZC1tZW1vcnkvZG1hX2hlYXBfY2h1bmsueWFtbCAgICAgICB8IDU4ICsrKysrKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9kbWFf
aGVhcF9jaHVuay55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1s
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uM2U3ZmVkNWZiMDA2Ci0t
LSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2Vy
dmVkLW1lbW9yeS9kbWFfaGVhcF9jaHVuay55YW1sCkBAIC0wLDAgKzEsNTggQEAKKyMgU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQorJVlBTUwg
MS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcmVzZXJ2ZWQtbWVt
b3J5L2RtYV9oZWFwX2NodW5rLnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcv
bWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IERldmljZSB0cmVlIGJpbmRpbmcgZm9y
IGNodW5rIGhlYXAgb24gRE1BIEhFQVAgRlJBTUVXT1JLCisKK2Rlc2NyaXB0aW9uOiB8CisgIFRo
ZSBETUEgY2h1bmsgaGVhcCBpcyBiYWNrZWQgYnkgdGhlIENvbnRpZ3VvdXMgTWVtb3J5IEFsbG9j
YXRvciAoQ01BKSBhbmQKKyAgc3VwcG9ydHMgYnVsayBhbGxvY2F0aW9uIG9mIGZpeGVkIHNpemUg
cGFnZXMuCisKK21haW50YWluZXJzOgorICAtIEh5ZXNvbyBZdSA8aHllc29vLnl1QHNhbXN1bmcu
Y29tPgorICAtIEpvaG4gU3R1bHR6IDxqb2huLnN0dWx0ekBsaW5hcm8ub3JnPgorICAtIE1pbmNo
YW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+CisgIC0gSHJpZHlhIFZhbHNhcmFqdTxocmlkeWFA
Z29vZ2xlLmNvbT4KKworCitwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAgIGVudW06Cisg
ICAgICAtIGRtYV9oZWFwLGNodW5rCisKKyAgY2h1bmstb3JkZXI6CisgICAgZGVzY3JpcHRpb246
IHwKKyAgICAgICAgICAgIG9yZGVyIG9mIHBhZ2VzIHRoYXQgd2lsbCBnZXQgYWxsb2NhdGVkIGZy
b20gdGhlIGNodW5rIERNQSBoZWFwLgorICAgIG1heEl0ZW1zOiAxCisKKyAgc2l6ZToKKyAgICBt
YXhJdGVtczogMQorCisgIGFsaWdubWVudDoKKyAgICBtYXhJdGVtczogMQorCityZXF1aXJlZDoK
KyAgLSBjb21wYXRpYmxlCisgIC0gc2l6ZQorICAtIGFsaWdubWVudAorICAtIGNodW5rLW9yZGVy
CisKK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQorCitleGFtcGxlczoKKyAgLSB8CisgICAg
cmVzZXJ2ZWQtbWVtb3J5IHsKKyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47CisgICAgICAg
ICNzaXplLWNlbGxzID0gPDE+OworCisgICAgICAgIGNodW5rX21lbW9yeTogY2h1bmtfbWVtb3J5
IHsKKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZG1hX2hlYXAsY2h1bmsiOworICAgICAgICAg
ICAgc2l6ZSA9IDwweDMwMDAwMDA+OworICAgICAgICAgICAgYWxpZ25tZW50ID0gPDB4MCAweDAw
MDEwMDAwPjsKKyAgICAgICAgICAgIGNodW5rLW9yZGVyID0gPDQ+OworICAgICAgICB9OworICAg
IH07CisKKwotLSAKMi4zMC4wLjI4NC5nZDk4YjFkZDVlYWE3LWdvb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
