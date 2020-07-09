Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D49BB21A022
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:34:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07D3F605DA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:34:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ECD5860733; Thu,  9 Jul 2020 12:34:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 921E360679;
	Thu,  9 Jul 2020 12:34:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7C631604A8
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 12:33:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 69CE760679; Thu,  9 Jul 2020 12:33:53 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id D4773604A8
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 12:33:51 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id l2so1630133wmf.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2020 05:33:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9ml7yu61orPGiyeLHj7KPJdBGRuwIj4VGf7RIdg6+6E=;
 b=LN48jDtLP2Rk0+h2Yuyr9rTXeGO+q08oZsabwXJVXigIPZnIjhqMo5XAiqzfafZP27
 qqWYZxPzMn00PDrYoeugGcSgn6yM4Z/6fBBInV73+1u9WaVpCGEn/M04sfcCYnuKHBJJ
 gcSDgp1aFCdh6F437K1Pq7fwTx8NJ5OFxeQd7CT4RzJB8LwAyqq8a2xB/jtf6gxoC1tw
 kdQWmBcX+X2oLOTB63U3RXnXsEL4+EzONZGgxDshG+w6mdFk20qYtobZvPaLTwovIGh2
 mC6bhSA2k4jH+Am+LDlsIV4aPNwiEY5lccn0gN4zYWezQKR/e6SYKSaREpt+0ycOWrLm
 OiJg==
X-Gm-Message-State: AOAM533TsiQKPsSG17PBvG3pUY2dagr8VQ+iPxBFtYLg6GFntcXvXqYj
 uN9+xYpWBrnMy9TxGM2MiSy86Q==
X-Google-Smtp-Source: ABdhPJyW1X39siqvN1tXyO+a5xJDhtYxZB7qgF8t/3W1eiXrhQsMLgXCOAKI1Lx9mgsJn2P0+ZV+SQ==
X-Received: by 2002:a7b:c313:: with SMTP id k19mr14181981wmj.67.1594298030902; 
 Thu, 09 Jul 2020 05:33:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o205sm4925347wme.24.2020.07.09.05.33.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jul 2020 05:33:50 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu,  9 Jul 2020 14:33:38 +0200
Message-Id: <20200709123339.547390-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Stone <daniels@collabora.com>, linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Steve Pronovost <spronovo@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Jason Ekstrand <jason@jlekstrand.net>,
 Jesse Natalie <jenatali@microsoft.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>, linux-media@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Subject: [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document why indefinite
	fences are a bad idea
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

Q29tZXMgdXAgZXZlcnkgZmV3IHllYXJzLCBnZXRzIHNvbWV3aGF0IHRlZGlvdXMgdG8gZGlzY3Vz
cywgbGV0J3MKd3JpdGUgdGhpcyBkb3duIG9uY2UgYW5kIGZvciBhbGwuCgpXaGF0IEknbSBub3Qg
c3VyZSBhYm91dCBpcyB3aGV0aGVyIHRoZSB0ZXh0IHNob3VsZCBiZSBtb3JlIGV4cGxpY2l0IGlu
CmZsYXQgb3V0IG1hbmRhdGluZyB0aGUgYW1ka2ZkIGV2aWN0aW9uIGZlbmNlcyBmb3IgbG9uZyBy
dW5uaW5nIGNvbXB1dGUKd29ya2xvYWRzIG9yIHdvcmtsb2FkcyB3aGVyZSB1c2Vyc3BhY2UgZmVu
Y2luZyBpcyBhbGxvd2VkLgoKdjI6IE5vdyB3aXRoIGRvdCBncmFwaCEKCnYzOiBUeXBvIChEYXZl
IEFpcmxpZSkKCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+CkFja2VkLWJ5OiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3JhLmNvbT4KQ2M6
IEplc3NlIE5hdGFsaWUgPGplbmF0YWxpQG1pY3Jvc29mdC5jb20+CkNjOiBTdGV2ZSBQcm9ub3Zv
c3QgPHNwcm9ub3ZvQG1pY3Jvc29mdC5jb20+CkNjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxl
a3N0cmFuZC5uZXQ+CkNjOiBGZWxpeCBLdWVobGluZyA8RmVsaXguS3VlaGxpbmdAYW1kLmNvbT4K
Q2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAaW50ZWwuY29tPgpDYzogVGhvbWFzIEhl
bGxzdHJvbSA8dGhvbWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+CkNjOiBsaW51eC1tZWRpYUB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogbGludXgt
cmRtYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNj
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmto
b3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPgotLS0KIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCB8IDcw
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3MCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0
IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0CmluZGV4IGY4ZjZkZWNkZTM1
OS4uMTAwYmZkMjI3MjY1IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1h
LWJ1Zi5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0CkBAIC0x
NzgsMyArMTc4LDczIEBAIERNQSBGZW5jZSB1QUJJL1N5bmMgRmlsZQogLi4ga2VybmVsLWRvYzo6
IGluY2x1ZGUvbGludXgvc3luY19maWxlLmgKICAgIDppbnRlcm5hbDoKIAorSW5kZWZpbml0ZSBE
TUEgRmVuY2VzCit+fn5+fn5+fn5+fn5+fn5+fn5+fgorCitBdCB2YXJpb3VzIHRpbWVzICZkbWFf
ZmVuY2Ugd2l0aCBhbiBpbmRlZmluaXRlIHRpbWUgdW50aWwgZG1hX2ZlbmNlX3dhaXQoKQorZmlu
aXNoZXMgaGF2ZSBiZWVuIHByb3Bvc2VkLiBFeGFtcGxlcyBpbmNsdWRlOgorCisqIEZ1dHVyZSBm
ZW5jZXMsIHVzZWQgaW4gSFdDMSB0byBzaWduYWwgd2hlbiBhIGJ1ZmZlciBpc24ndCB1c2VkIGJ5
IHRoZSBkaXNwbGF5CisgIGFueSBsb25nZXIsIGFuZCBjcmVhdGVkIHdpdGggdGhlIHNjcmVlbiB1
cGRhdGUgdGhhdCBtYWtlcyB0aGUgYnVmZmVyIHZpc2libGUuCisgIFRoZSB0aW1lIHRoaXMgZmVu
Y2UgY29tcGxldGVzIGlzIGVudGlyZWx5IHVuZGVyIHVzZXJzcGFjZSdzIGNvbnRyb2wuCisKKyog
UHJveHkgZmVuY2VzLCBwcm9wb3NlZCB0byBoYW5kbGUgJmRybV9zeW5jb2JqIGZvciB3aGljaCB0
aGUgZmVuY2UgaGFzIG5vdCB5ZXQKKyAgYmVlbiBzZXQuIFVzZWQgdG8gYXN5bmNocm9ub3VzbHkg
ZGVsYXkgY29tbWFuZCBzdWJtaXNzaW9uLgorCisqIFVzZXJzcGFjZSBmZW5jZXMgb3IgZ3B1IGZ1
dGV4ZXMsIGZpbmUtZ3JhaW5lZCBsb2NraW5nIHdpdGhpbiBhIGNvbW1hbmQgYnVmZmVyCisgIHRo
YXQgdXNlcnNwYWNlIHVzZXMgZm9yIHN5bmNocm9uaXphdGlvbiBhY3Jvc3MgZW5naW5lcyBvciB3
aXRoIHRoZSBDUFUsIHdoaWNoCisgIGFyZSB0aGVuIGltcG9ydGVkIGFzIGEgRE1BIGZlbmNlIGZv
ciBpbnRlZ3JhdGlvbiBpbnRvIGV4aXN0aW5nIHdpbnN5cworICBwcm90b2NvbHMuCisKKyogTG9u
Zy1ydW5uaW5nIGNvbXB1dGUgY29tbWFuZCBidWZmZXJzLCB3aGlsZSBzdGlsbCB1c2luZyB0cmFk
aXRpb25hbCBlbmQgb2YKKyAgYmF0Y2ggRE1BIGZlbmNlcyBmb3IgbWVtb3J5IG1hbmFnZW1lbnQg
aW5zdGVhZCBvZiBjb250ZXh0IHByZWVtcHRpb24gRE1BCisgIGZlbmNlcyB3aGljaCBnZXQgcmVh
dHRhY2hlZCB3aGVuIHRoZSBjb21wdXRlIGpvYiBpcyByZXNjaGVkdWxlZC4KKworQ29tbW9uIHRv
IGFsbCB0aGVzZSBzY2hlbWVzIGlzIHRoYXQgdXNlcnNwYWNlIGNvbnRyb2xzIHRoZSBkZXBlbmRl
bmNpZXMgb2YgdGhlc2UKK2ZlbmNlcyBhbmQgY29udHJvbHMgd2hlbiB0aGV5IGZpcmUuIE1peGlu
ZyBpbmRlZmluaXRlIGZlbmNlcyB3aXRoIG5vcm1hbAoraW4ta2VybmVsIERNQSBmZW5jZXMgZG9l
cyBub3Qgd29yaywgZXZlbiB3aGVuIGEgZmFsbGJhY2sgdGltZW91dCBpcyBpbmNsdWRlZCB0bwor
cHJvdGVjdCBhZ2FpbnN0IG1hbGljaW91cyB1c2Vyc3BhY2U6CisKKyogT25seSB0aGUga2VybmVs
IGtub3dzIGFib3V0IGFsbCBETUEgZmVuY2UgZGVwZW5kZW5jaWVzLCB1c2Vyc3BhY2UgaXMgbm90
IGF3YXJlCisgIG9mIGRlcGVuZGVuY2llcyBpbmplY3RlZCBkdWUgdG8gbWVtb3J5IG1hbmFnZW1l
bnQgb3Igc2NoZWR1bGVyIGRlY2lzaW9ucy4KKworKiBPbmx5IHVzZXJzcGFjZSBrbm93cyBhYm91
dCBhbGwgZGVwZW5kZW5jaWVzIGluIGluZGVmaW5pdGUgZmVuY2VzIGFuZCB3aGVuCisgIGV4YWN0
bHkgdGhleSB3aWxsIGNvbXBsZXRlLCB0aGUga2VybmVsIGhhcyBubyB2aXNpYmlsaXR5LgorCitG
dXJ0aGVybW9yZSB0aGUga2VybmVsIGhhcyB0byBiZSBhYmxlIHRvIGhvbGQgdXAgdXNlcnNwYWNl
IGNvbW1hbmQgc3VibWlzc2lvbgorZm9yIG1lbW9yeSBtYW5hZ2VtZW50IG5lZWRzLCB3aGljaCBt
ZWFucyB3ZSBtdXN0IHN1cHBvcnQgaW5kZWZpbml0ZSBmZW5jZXMgYmVpbmcKK2RlcGVuZGVudCB1
cG9uIERNQSBmZW5jZXMuIElmIHRoZSBrZXJuZWwgYWxzbyBzdXBwb3J0IGluZGVmaW5pdGUgZmVu
Y2VzIGluIHRoZQora2VybmVsIGxpa2UgYSBETUEgZmVuY2UsIGxpa2UgYW55IG9mIHRoZSBhYm92
ZSBwcm9wb3NhbCB3b3VsZCwgdGhlcmUgaXMgdGhlCitwb3RlbnRpYWwgZm9yIGRlYWRsb2Nrcy4K
KworLi4ga2VybmVsLXJlbmRlcjo6IERPVAorICAgOmFsdDogSW5kZWZpbml0ZSBGZW5jaW5nIERl
cGVuZGVuY3kgQ3ljbGUKKyAgIDpjYXB0aW9uOiBJbmRlZmluaXRlIEZlbmNpbmcgRGVwZW5kZW5j
eSBDeWNsZQorCisgICBkaWdyYXBoICJGZW5jaW5nIEN5Y2xlIiB7CisgICAgICBub2RlIFtzaGFw
ZT1ib3ggYmdjb2xvcj1ncmV5IHN0eWxlPWZpbGxlZF0KKyAgICAgIGtlcm5lbCBbbGFiZWw9Iktl
cm5lbCBETUEgRmVuY2VzIl0KKyAgICAgIHVzZXJzcGFjZSBbbGFiZWw9InVzZXJzcGFjZSBjb250
cm9sbGVkIGZlbmNlcyJdCisgICAgICBrZXJuZWwgLT4gdXNlcnNwYWNlIFtsYWJlbD0ibWVtb3J5
IG1hbmFnZW1lbnQiXQorICAgICAgdXNlcnNwYWNlIC0+IGtlcm5lbCBbbGFiZWw9IkZ1dHVyZSBm
ZW5jZSwgZmVuY2UgcHJveHksIC4uLiJdCisKKyAgICAgIHsgcmFuaz1zYW1lOyBrZXJuZWwgdXNl
cnNwYWNlIH0KKyAgIH0KKworVGhpcyBtZWFucyB0aGF0IHRoZSBrZXJuZWwgbWlnaHQgYWNjaWRl
bnRhbGx5IGNyZWF0ZSBkZWFkbG9ja3MKK3Rocm91Z2ggbWVtb3J5IG1hbmFnZW1lbnQgZGVwZW5k
ZW5jaWVzIHdoaWNoIHVzZXJzcGFjZSBpcyB1bmF3YXJlIG9mLCB3aGljaAorcmFuZG9tbHkgaGFu
Z3Mgd29ya2xvYWRzIHVudGlsIHRoZSB0aW1lb3V0IGtpY2tzIGluLiBXb3JrbG9hZHMsIHdoaWNo
IGZyb20KK3VzZXJzcGFjZSdzIHBlcnNwZWN0aXZlLCBkbyBub3QgY29udGFpbiBhIGRlYWRsb2Nr
LiAgSW4gc3VjaCBhIG1peGVkIGZlbmNpbmcKK2FyY2hpdGVjdHVyZSB0aGVyZSBpcyBubyBzaW5n
bGUgZW50aXR5IHdpdGgga25vd2xlZGdlIG9mIGFsbCBkZXBlbmRlbmNpZXMuCitUaGVmb3JlIHBy
ZXZlbnRpbmcgc3VjaCBkZWFkbG9ja3MgZnJvbSB3aXRoaW4gdGhlIGtlcm5lbCBpcyBub3QgcG9z
c2libGUuCisKK1RoZSBvbmx5IHNvbHV0aW9uIHRvIGF2b2lkIGRlcGVuZGVuY2llcyBsb29wcyBp
cyBieSBub3QgYWxsb3dpbmcgaW5kZWZpbml0ZQorZmVuY2VzIGluIHRoZSBrZXJuZWwuIFRoaXMg
bWVhbnM6CisKKyogTm8gZnV0dXJlIGZlbmNlcywgcHJveHkgZmVuY2VzIG9yIHVzZXJzcGFjZSBm
ZW5jZXMgaW1wb3J0ZWQgYXMgRE1BIGZlbmNlcywKKyAgd2l0aCBvciB3aXRob3V0IGEgdGltZW91
dC4KKworKiBObyBETUEgZmVuY2VzIHRoYXQgc2lnbmFsIGVuZCBvZiBiYXRjaGJ1ZmZlciBmb3Ig
Y29tbWFuZCBzdWJtaXNzaW9uIHdoZXJlCisgIHVzZXJzcGFjZSBpcyBhbGxvd2VkIHRvIHVzZSB1
c2Vyc3BhY2UgZmVuY2luZyBvciBsb25nIHJ1bm5pbmcgY29tcHV0ZQorICB3b3JrbG9hZHMuIFRo
aXMgYWxzbyBtZWFucyBubyBpbXBsaWNpdCBmZW5jaW5nIGZvciBzaGFyZWQgYnVmZmVycyBpbiB0
aGVzZQorICBjYXNlcy4KLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
