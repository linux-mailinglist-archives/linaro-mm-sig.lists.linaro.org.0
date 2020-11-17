Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 759D52B6D33
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Nov 2020 19:22:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 987C2666D5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Nov 2020 18:22:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8A375666E0; Tue, 17 Nov 2020 18:22:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34A0E666F6;
	Tue, 17 Nov 2020 18:20:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5237D666D5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 18:20:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 44BD4666E1; Tue, 17 Nov 2020 18:20:29 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by lists.linaro.org (Postfix) with ESMTPS id 184D5666E5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 18:19:56 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id q28so6062424pgk.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 10:19:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=FbR8FBZ8v9oRIOK3rZ6XdWYjeIbKFf31XDvQwkSkmGg=;
 b=d5QEWh/lF699NP9RoevlnbDVdGvvPX++1Og+pJOPVqOZdgfhQN5+0NVMZU6hPBa5Ig
 9oxqkkPvvX90WYP7i+a7ej/EH+wMa0x8om/9PVSrYgaSqmPB+xmB1bRCfc1LIgBxqweh
 +HQPITpFGNxNTxsZz5Vl0pVv1KPwuDKFnJfWAzy/5r7OREAmE3Xk64gunxgP8fKTi4sG
 TdjOD7HsGQ/gUFvjnp/ds8T27JMy0ZHzwrEkLolEhdJe+lZhshvI5FbY7YLcIhEMFS93
 xRYU6LrEEKWak/3N0TU9hrMYKpGWUZHF6FhiarVKbASl3i8zupRmr9IeiccguGDqSMXI
 htrg==
X-Gm-Message-State: AOAM531f1RucydgVSDA7SzakTHRtbZpi7r/C+IS29MhGV4osU2vtclSt
 GGx+2d+jQ9qtuF1i6EJPAUY=
X-Google-Smtp-Source: ABdhPJx4cA1WlpSWJrNjJCeWkhFiCJNtehbF8opfuAbfGhq3jrdOy0v8F8YQec3puI0Q8HXVwmFOVg==
X-Received: by 2002:a62:d11b:0:b029:18b:b3e:95aa with SMTP id
 z27-20020a62d11b0000b029018b0b3e95aamr554667pfg.3.1605637195227; 
 Tue, 17 Nov 2020 10:19:55 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id h8sm4302639pjc.54.2020.11.17.10.19.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Nov 2020 10:19:54 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 17 Nov 2020 10:19:35 -0800
Message-Id: <20201117181935.3613581-5-minchan@kernel.org>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
In-Reply-To: <20201117181935.3613581-1-minchan@kernel.org>
References: <20201117181935.3613581-1-minchan@kernel.org>
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
Subject: [Linaro-mm-sig] [PATCH 4/4] dma-heap: Devicetree binding for chunk
	heap
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
cmVlIGJpbmRpbmcgZm9yIGNodW5rIGhlYXAgb24gZG1hIGhlYXAgZnJhbWV3b3JrCgpTaWduZWQt
b2ZmLWJ5OiBIeWVzb28gWXUgPGh5ZXNvby55dUBzYW1zdW5nLmNvbT4KU2lnbmVkLW9mZi1ieTog
TWluY2hhbiBLaW0gPG1pbmNoYW5Aa2VybmVsLm9yZz4KLS0tCiAuLi4vYmluZGluZ3MvZG1hLWJ1
Zi9jaHVua19oZWFwLnlhbWwgICAgICAgICAgfCA1MiArKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEtYnVmL2NodW5rX2hlYXAueWFtbAoKZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEtYnVmL2NodW5rX2hl
YXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEtYnVmL2NodW5r
X2hlYXAueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmYzODJi
ZWUwMjc3OAotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kbWEtYnVmL2NodW5rX2hlYXAueWFtbApAQCAtMCwwICsxLDUyIEBACisjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1MIDEu
MgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2RtYS1idWYvY2h1bmtf
aGVhcC55YW1sIworJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9j
b3JlLnlhbWwjCisKK3RpdGxlOiBEZXZpY2UgdHJlZSBiaW5kaW5nIGZvciBjaHVuayBoZWFwIG9u
IERNQSBIRUFQIEZSQU1FV09SSworCittYWludGFpbmVyczoKKyAgLSBTdW1pdCBTZW13YWwgPHN1
bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgorCitkZXNjcmlwdGlvbjogfAorICBUaGUgY2h1bmsgaGVh
cCBpcyBiYWNrZWQgYnkgdGhlIENvbnRpZ3VvdXMgTWVtb3J5IEFsbG9jYXRvciAoQ01BKSBhbmQK
KyAgYWxsb2NhdGVzIHRoZSBidWZmZXJzIHRoYXQgYXJlIG1hZGUgdXAgdG8gYSBsaXN0IG9mIGZp
eGVkIHNpemUgY2h1bmtzCisgIHRha2VuIGZyb20gQ01BLiBDaHVuayBzaXplcyBhcmUgY29uZmln
dXJhdGVkIHdoZW4gdGhlIGhlYXBzIGFyZSBjcmVhdGVkLgorCitwcm9wZXJ0aWVzOgorICBjb21w
YXRpYmxlOgorICAgIGVudW06CisgICAgICAtIGRtYV9oZWFwLGNodW5rCisKKyAgbWVtb3J5LXJl
Z2lvbjoKKyAgICBtYXhJdGVtczogMQorCisgIGFsaWdubWVudDoKKyAgICBtYXhJdGVtczogMQor
CityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisgIC0gbWVtb3J5LXJlZ2lvbgorICAtIGFsaWdu
bWVudAorCithZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKKworZXhhbXBsZXM6CisgIC0gfAor
ICAgIHJlc2VydmVkLW1lbW9yeSB7CisgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+OworICAg
ICAgICAjc2l6ZS1jZWxscyA9IDwxPjsKKworICAgICAgICBjaHVua19tZW1vcnk6IGNodW5rX21l
bW9yeSB7CisgICAgICAgICAgICBjb21wYXRpYmxlID0gInNoYXJlZC1kbWEtcG9vbCI7CisgICAg
ICAgICAgICByZXVzYWJsZTsKKyAgICAgICAgICAgIHNpemUgPSA8MHgxMDAwMDAwMD47CisgICAg
ICAgIH07CisgICAgfTsKKworICAgIGNodW5rX2RlZmF1bHRfaGVhcDogY2h1bmtfZGVmYXVsdF9o
ZWFwIHsKKyAgICAgICAgY29tcGF0aWJsZSA9ICJkbWFfaGVhcCxjaHVuayI7CisgICAgICAgIG1l
bW9yeS1yZWdpb24gPSA8JmNodW5rX21lbW9yeT47CisgICAgICAgIGFsaWdubWVudCA9IDwweDEw
MDAwPjsKKyAgICB9OwotLSAKMi4yOS4yLjI5OS5nZGMxMTIxODIzYy1nb29nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
